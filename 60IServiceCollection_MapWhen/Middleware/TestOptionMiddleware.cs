

using System.Text;
using Microsoft.Extensions.Options;

public class TestOpMid : IMiddleware
{
    TestOption _testOption { get; set; }
    Product productName;
    public TestOpMid(IOptions<TestOption> options, Product name)
    {
        _testOption = options.Value;
        productName = name;
    }
    public async Task InvokeAsync(HttpContext context, RequestDelegate next)
    {
        var stringBuilder = new StringBuilder();
        stringBuilder.Append("TestOption\n");
        stringBuilder.Append($"opt1 = {_testOption.Opt1}\n");
        stringBuilder.Append($"k1 = {_testOption.Opt2.K1}\n");
        stringBuilder.Append($"k2 = {_testOption.Opt2.K2}\n");
        
        foreach(var item in productName.GetNames())
        {
            stringBuilder.Append(item + "\n");
        }

        await context.Response.WriteAsync(stringBuilder.ToString());

        await next(context);
    }
}