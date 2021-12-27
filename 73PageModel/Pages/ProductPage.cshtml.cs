using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace _73PageModel.Pages
{
    public class ProductPageModel : PageModel
    {
        private readonly ILogger<ProductPageModel> logger;
        public readonly ProductService productService;
        public Product product { get; set; }
        public ProductPageModel(ILogger<ProductPageModel> _logger, ProductService productService)
        {
            logger = _logger;
            this.productService = productService;
        }
        // tự động tìm trên url xem có trường 'id' không, nếu có thì tự động gán vào id
        public void OnGet(int? id)
        {
            if (id != null)
            {
                ViewData["Title"] = $"Sản phẩm có id = {id}";
                product = productService.FindProduct(id.Value);
            }
            else
            {
                ViewData["Title"] = $"Danh sách sản phẩm";
            }
        }
        // /product/{id:int?}?handle=LastProduct
        public IActionResult OnGetLastProduct()
        {
            ViewData["Titile"] = "san pham cuoi";
            product = productService.AllProduct().LastOrDefault();
            if (product != null)
            {
                return Page();
            }
            else
            {
                // return NotFound();
                return Content("không tìm thấy sản phẩm");
            }

        }

        public IActionResult OnGetRemoveAll()
        {
            productService.AllProduct().Clear();
            return RedirectToPage("ProductPage");
        }


        public IActionResult OnGetLoad()
        {
            productService.LoadProduct();
            return RedirectToPage("ProductPage");
        }

        public IActionResult OnPostDelete(int? id)
        {
            if (id != null)
            {
                product = productService.FindProduct(id.Value);
                if (product != null)
                {
                    productService.AllProduct().Remove(product);
                }
            }
            return this.RedirectToPage("ProductPage", new { id = string.Empty });
        }
    }
}
