
using System.Text;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Options;

public class startup
{
    // Đăng ký các dịch vụ (DI)
    IConfiguration _configuration;
    public startup(IConfiguration configuration) 
    {
        _configuration = configuration;
    }
    public void ConfigureServices(IServiceCollection service)
    {
        // service.AddSingleton<SecondMiddleware>()
        service.AddOptions();
        var testOption = _configuration.GetSection("TestOption");
        service.Configure<TestOption>(testOption);

        service.AddTransient<TestOpMid>();
        service.AddSingleton<Product>();
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

        app.UseMiddleware<TestOpMid>();

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

            endpoints.MapGet("/ShowOption", async (context) => {
                // var configuraton = context.RequestServices.GetService<IConfiguration>();
                
                // var TestOption = configuraton.GetSection("TestOption").Get<TestOption>();
                // var TestOption = context.RequestServices.GetService<IOptions<TestOption>>().Value;


                // var stringBuilder = new StringBuilder();
                // stringBuilder.Append("TestOption\n");
                // stringBuilder.Append($"opt1 = {TestOption.Opt1}\n");
                // stringBuilder.Append($"k1 = {TestOption.Opt2.K1}\n");
                // stringBuilder.Append($"k2 = {TestOption.Opt2.K2}\n");

                // await context.Response.WriteAsync(stringBuilder.ToString());
                await context.Response.WriteAsync("show option");


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