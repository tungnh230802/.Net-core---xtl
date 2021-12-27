
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Hosting;

public class startup
{
    // Đăng ký các dịch vụ (DI)
    public void ConfigureServices(IServiceCollection service)
    {
        //service.AddSingleton<SecondMiddleware>();
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
                await context.Response.WriteAsync("this is home page");
                // context.Request.
            });

            endpoints.MapGet("/about", async (context) =>
            {
                await context.Response.WriteAsync("this is about page");
            });

            endpoints.MapGet("/contact", async (context) =>
            {
                await context.Response.WriteAsync("this is contact page");
            });
        });
		/*

        // Rẽ nhánh trong pipeline
        app.Map("/admin", app1 =>
        {
            app1.UseRouting();

            app1.UseEndpoints((endpoints) =>
            {
                endpoints.MapGet("/users", async (context) =>
                {
                    await context.Response.WriteAsync("admin/user");
                });
                endpoints.MapGet("/empoyee", async (context) =>
                {
                    await context.Response.WriteAsync("admin/employee");
                });
            });
            
            app1.Run(async (context) =>
            {
                await context.Response.WriteAsync("hello this page is admin");
            });
        });
		*/
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