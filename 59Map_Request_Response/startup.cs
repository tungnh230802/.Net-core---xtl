
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Hosting;
using Newtonsoft.Json;

public class startup
{
    // Đăng ký các dịch vụ (DI)
    public void ConfigureServices(IServiceCollection service)
    {
        // service.AddSingleton<SecondMiddleware>();
    }


    // Xây dựng pipeline (chuỗi middleware)
    public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
    {
        // pipeline đi qua 'FirstMiddleware'
        // app.UseMiddleware<FirstMiddleware>(); 
        // Đưa vào pipeline 'FirstMiddleware'       
        // app.UseFrstMiddleware();

        // app.UseMiddleware<SecondMiddleware>();
        // app.UseSecondMiddleware();


        // cho phép truy cập file tĩnh 
        // trong thư mục wwwroot
        app.UseStaticFiles();

        // EndpointMiddleware
        app.UseRouting();

        // Request đi vào Routing -> Map -> Run
        // IEndpointRouteBuilder
        app.UseEndpoints(endpoints =>
        {
            // khi truy cập vào '/' thì endpoins được thi hành
            endpoints.MapGet("/", async (context) =>
            {
                var menu = HtmlHelper.MenuTop(
                    HtmlHelper.DefaultMenuTopItems(), context.Request
                );
                var html = HtmlHelper.HtmlDocument("hello", menu + HtmlHelper.HtmlTrangchu());
                await context.Response.WriteAsync(html);
            });

            endpoints.MapGet("/RequestInfo", async (context) =>
            {
                var menu = HtmlHelper.MenuTop(
                    HtmlHelper.DefaultMenuTopItems(), context.Request
                );

                var info = RequestProcess.RequestInfo(context.Request);

                var html = HtmlHelper.HtmlDocument("thong tin cua request", menu + info);
                await context.Response.WriteAsync(html);
            });

            endpoints.MapGet("/Cookies/{*action}", async (context) =>
            {

                var menu = HtmlHelper.MenuTop(
                    HtmlHelper.DefaultMenuTopItems(), context.Request
                );

                var action = context.GetRouteValue("action") ?? "read";

                string message = "";
                if (action.ToString() == "write")
                {
                    var option = new CookieOptions()
                    {
                        Path = "/",
                        Expires = DateTime.Now.AddDays(1)
                    };
                    context.Response.Cookies.Append("masp", "24234234234", option);
                    message = "cookie duoc ghi";

                }
                else
                {
                    // Lấy danh sách các Header và giá trị  của nó, dùng Linq để lấy
                    var listcokie = context.Request.Cookies.Select((header) => $"{header.Key}: {header.Value}".HtmlTag("li"));
                    message = string.Join("", listcokie).HtmlTag("ul");
                }

                var button = "<a href=\"/Cookies/read\">read cookies<a/><br/><a href=\"/Cookies/write\">write cookies<a/>";


                var html = HtmlHelper.HtmlDocument("Cookies:" + action, menu + button + message);
                await context.Response.WriteAsync(html);
            });

            endpoints.MapGet("/Json", async (context) =>
            {
                var p = new
                {
                    TenSp = "iphone 11",
                    price = 1000000
                };
                var json = JsonConvert.SerializeObject(p);
                context.Response.ContentType = "application/json";
                await context.Response.WriteAsync(json);
            });

            endpoints.MapMethods("/Form", new [] {"POST", "GET"},async (context) =>
            {
                var menu = HtmlHelper.MenuTop(
                HtmlHelper.DefaultMenuTopItems(), context.Request
                );

                var formHtml = RequestProcess.ProcessForm(context.Request);
                var html = HtmlHelper.HtmlDocument("Test submit form", menu + formHtml);
                await context.Response.WriteAsync(html);
            });
        });

        // Rẽ nhánh trong pipeline
        // app.Map("/admin", app1 =>
        // {
        //     app1.UseRouting();

        //     app1.UseEndpoints((endpoints) =>
        //     {
        //         endpoints.MapGet("/users", async (context) =>
        //         {
        //             await context.Response.WriteAsync("admin/user");
        //         });
        //         endpoints.MapGet("/empoyee", async (context) =>
        //         {
        //             await context.Response.WriteAsync("admin/employee");
        //         });
        //     });

        //     app1.Run(async (context) =>
        //     {
        //         await context.Response.WriteAsync("hello this page is admin");
        //     });
        // });

        // Terminate Middleware : điểm cuối của middleware
        // tham số của run là 1 delegate RequestDelegate
        // RequestDelegate có tham số là HttpContext và trả về kiểu Task
        // Thường không sử dụng Run
        // app.Run(async(context) => 
        // {
        //     // phương thức writeAsync trả về Task nên dùng await
        //     await context.Response.WriteAsync("Hello ASP.NET CORE 6.0");
        // });

        // StatusCodePage
        // Nếu tất cả các request đều không đúng thì báo lỗi 404
        app.UseStatusCodePages();

    }
}