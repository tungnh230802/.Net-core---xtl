using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using XTLASPNET;

namespace _69_70Partial.Pages;

public class IndexModel : PageModel
{
    private readonly ILogger<IndexModel> _logger;

    public IndexModel(ILogger<IndexModel> logger)
    {
        _logger = logger;
    }

    public IActionResult OnPost()
    {
        var username = this.Request.Form["username"];
        var message = new MessagePage.Message();
        message.title = "thong bao";
        message.htmlcontent = "thankul";
        message.secondwait = 3;
        message.urlredirect = Url.Page("Privacy");
        return ViewComponent("MessagePage", message);
    }

    // public IActionResult OnGet()
    // {
    //     return ViewComponent("ProductBox");
    //     // Partial()
    // }
}
