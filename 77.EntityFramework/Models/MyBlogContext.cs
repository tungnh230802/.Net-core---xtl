


using Microsoft.EntityFrameworkCore;
namespace _77.EntityFramework.Model
{
    public class MyBlogContext:DbContext
{
    public MyBlogContext(DbContextOptions<MyBlogContext> options) : base(options)
    {
        //...
    }

    protected override void OnConfiguring(DbContextOptionsBuilder buider)
    {
        base.OnConfiguring(buider);
    }

    protected override void OnModelCreating(ModelBuilder modelbuilder)
    {
        base.OnModelCreating(modelbuilder);
    }

    public DbSet<Article> articles {get;set;}
    
}

}
