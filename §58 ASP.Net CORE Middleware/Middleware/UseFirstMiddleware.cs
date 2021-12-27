public static class UseFirstMiddleware 
{
    // Mở rộng phương thức IApplicationBuilder
    // thêm phương thức UseFrstMiddleware
    public static void UseFrstMiddleware(this IApplicationBuilder app) 
    {
        app.UseMiddleware<FirstMiddleware>();
    }

        public static void UseSecondMiddleware(this IApplicationBuilder app) 
    {
        app.UseMiddleware<SecondMiddleware>();
    }
}