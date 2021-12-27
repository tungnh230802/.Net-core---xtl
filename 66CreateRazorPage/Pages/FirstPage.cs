

using Microsoft.AspNetCore.Mvc.RazorPages;

public class FirstPageModel : PageModel
{
    public string title { set; get; } = "trang first page";
    
    public string hello(string name)
    {
        return $"chao mung {name}";
    }

    // handle
    // tự động đuoc gọi khi truy vẫn đến trang
    public void OnGet()
    {
        Console.WriteLine("truy van bang phuong thuc Get");
    }

    // GET, Url?handle=Abc
    public void OnGetAbc()
    {
        Console.WriteLine("truy van bang phuong thuc GetAbc");
    }
}