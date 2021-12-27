

public class Product
{
    public List<string> names {set;get;}
    public Product()
    {
        names = new List<string>()
        {
            "Iphone6",
            "Iphone7",
            "Iphone8"
        };
    } 

    public List<string> GetNames() => names;
}