

public class ProductListService
{
     public List<Product> products {set;get;} = new List<Product>()
        {
            new Product() {name="sp1", Description="des1",Price=2000},
            new Product() {name="sp2", Description="des2",Price=1000},
        };
}