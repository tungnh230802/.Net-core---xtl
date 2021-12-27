public class SecondMiddleware : IMiddleware
{

    // 'next' giúp thi hành middleware phía sau của middleware hiện tại
    public async Task InvokeAsync(HttpContext context, RequestDelegate next)
    {
        if (context.Request.Path == "/xxx.html")
        {
            // lưu ý: header phải được viết trước Response
            context.Response.Headers.Add("SecondMiddleware", "ban khong duoc truy cap");

            var datafromFirstMiddleware = context.Items["DataFirstMiddleware"];
            if (datafromFirstMiddleware != null)
            {
                await context.Response.WriteAsync((string)datafromFirstMiddleware);
            }
            await context.Response.WriteAsync("ban khong duoc truy cap!");
        }
        else
        {
            context.Response.Headers.Add("SecondMiddleware", "ban duoc truy cap");
            var datafromFirstMiddleware = context.Items["DataFirstMiddleware"];
            if (datafromFirstMiddleware != null)
            {
                await context.Response.WriteAsync((string)datafromFirstMiddleware);
            }
            await context.Response.WriteAsync("ban duoc truy cap!");

            // await next(context);
        }
    }
}
