
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Hosting;

public class startup
{
    // Đăng ký các dịch vụ (DI)
    public void ConfigureServices(IServiceCollection service)
    {
        //service.AddSingleton<SecondMiddleware>();
        service.AddDistributedMemoryCache();
        service.AddSession((option)=>
        {
            option.Cookie.Name = "Cooke";
            option.IdleTimeout = new TimeSpan(0,30,0);
        });
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

        app.UseSession();

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
                 int? count;

                count = context.Session.GetInt32("count");

                if(count == null) {
                    count = 0;
                }

                await context.Response.WriteAsync("So lan Truy Cap la: " + count.Value);
            });

            endpoints.MapGet("/Sesstion", async (context) =>
            {
                int? count;

                count = context.Session.GetInt32("count");

                if(count == null) {
                    count = 0;
                }

                count += 1;
                context.Session.SetInt32("count",count.Value);

                await context.Response.WriteAsync("So lan Truy Cap la: " + count.Value);
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