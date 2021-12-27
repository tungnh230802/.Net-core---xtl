
public class FirstMiddleware
{
    private readonly RequestDelegate _next;
    // RequestDelegate ~ async (HttpContext context) => {}
    public FirstMiddleware(RequestDelegate next) 
    {
        _next = next;
    }

    // httpContext đi qua Middleware trong pipeline
    public async Task InvokeAsync(HttpContext context) 
    {
        Console.WriteLine($"URL:{context.Request.Path}");
        context.Items.Add("DataFirstMiddleware", $"URL:{context.Request.Path}");
        // nếu muốn chuyển dến middleware tiếp theo thì chuyển HttpContext vào RequestDelegate
        await _next(context);
    }
}