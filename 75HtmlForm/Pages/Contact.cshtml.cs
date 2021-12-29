using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace _75HtmlForm.Pages
{
    public class ContactModel : PageModel
    {
        private readonly IWebHostEnvironment environment;
        public ContactModel(IWebHostEnvironment _environment)
        {
            environment = _environment;
        }
        [BindProperty]
        public CustomerInfo customerInfo { get; set; }
        // [BindProperty]
        // [DataType(DataType.Upload)]
        // // [Required(ErrorMessage = "Chọn 1 file upload")]
        // [Display(Name = "File upload")]
        // public IFormFile fileUpload { get; set; }
        [Display(Name = "File uploads")]
        [CheckFileExtension(Extensions = "jpg,png,gif")]
        public IFormFile[] fileUploads { get; set; }
        public void OnGet()
        {
        }

        public string thongbao { get; set; }

        public void OnPost()
        {
            if (ModelState.IsValid)
            {
                thongbao = "Dữ liệu phù hợp";
                // if (fileUpload != null)
                // {
                //     var filepath = Path.Combine(environment.WebRootPath, "uploads", fileUpload.FileName);
                //     using var filestream = new FileStream(filepath, FileMode.Create);
                //     fileUpload.CopyTo(filestream);
                // }

                foreach (var f in fileUploads)
                {
                    var filepath = Path.Combine(environment.WebRootPath, "uploads", f.FileName);
                    using var filestream = new FileStream(filepath, FileMode.Create);
                    f.CopyTo(filestream);
                }
            }
            else
            {
                thongbao = "Dữ liệu không phù hợp";
            }
        }
    }
}
