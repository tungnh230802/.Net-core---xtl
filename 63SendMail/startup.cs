
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Hosting;

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
        //service.AddSingleton<SecondMiddleware>();
        service.AddOptions();

        var MaillSetting = _configuration.GetSection("MailSetting");
        service.Configure<MailSetting>(MaillSetting);
        service.AddTransient<SendGmailService>();
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

            endpoints.MapGet("/sendMail", async (context) =>
            {
                var message = await MailUtils.MailUtils.SendMail("tungnh230802@gmail.com", "tungnh230802@gmail.com", "Title", "test gui mail");
                await context.Response.WriteAsync(message);
            });

            endpoints.MapGet("/sendGmail", async (context) =>
            {
                var message = await MailUtils.MailUtils.SendGmail("tungnh230802@gmail.com", "tungnh230802@gmail.com", "Title", "test gui mail", "tungnhps17361@fpt.edu.vn", "Tungfa0088");
                await context.Response.WriteAsync(message);
            });

            endpoints.MapGet("/sendGmailService", async (context) =>
            {
                var sendMailService = context.RequestServices.GetService<SendGmailService>();
                var mailContent = new MailContent();
                mailContent.to = "tungnh230802@gmail.com";
                mailContent.Subject = "test send mail service";
                mailContent.body = "day la phan body";

                var message = await sendMailService.SendMail(mailContent);
                await context.Response.WriteAsync(message);
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