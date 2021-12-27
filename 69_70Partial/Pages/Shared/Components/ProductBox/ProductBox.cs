
using Microsoft.AspNetCore.Mvc;

namespace sharessss
{
    // [ViewComponent]
    public class ProductBox : ViewComponent
    {
        ProductListService _proucts;
        public ProductBox(ProductListService products)
        {
            _proucts = products;
        }
        public IViewComponentResult Invoke(bool sapxeptang = true)
        {

            if (sapxeptang)
            {
                _proucts.products = _proucts.products.OrderBy(x => x.Price).ToList();
            } else{
                _proucts.products = _proucts.products.OrderByDescending(x => x.Price).ToList();
            }

            return View<List<Product>>(_proucts.products); // Default.cshtml
        }
    }
}
