

public class ProductService
{
    public ProductService()
    {
        LoadProduct();
    }

    public Product FindProduct(int id)
    {
        var qr = from p in products where p.id == id select p;
        return qr.FirstOrDefault();
    }

    public List<Product> AllProduct() => products;
    private List<Product> products = new List<Product>();

    public void LoadProduct()
    {
        products.Clear();

        products.Add(new Product()
        {
            id = 1,
            Price = 1000000,
            name = "iphone6",
            Description = "dien thoai"
        });

        products.Add(new Product()
        {
            id = 2,
            Price = 1000000,
            name = "iphone7",
            Description = "dien thoai"
        });

        products.Add(new Product()
        {
            id = 3,
            Price = 1000000,
            name = "iphone8",
            Description = "dien thoai"
        });
    }
}