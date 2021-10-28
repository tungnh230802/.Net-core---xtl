using System;
using System.Collections.Generic;
using System.Linq;


public class Product
{
    public string Id { get; set; }
    public string Name { get; set; }
    public double Price { get; set; }
}

public class ProductService
{
    List<Product> products = new List<Product>();
    public ProductService()
    {
        products.AddRange(new Product[] {
            new Product() {Id = "1", Name = "bcs",Price=100},
            new Product() {Id = "2", Name = "bcs",Price=200},
            new Product() {Id = "3", Name = "bcs",Price=300},
            new Product() {Id = "4", Name = "bcs",Price=400},
        });
    }

    public Product FindProduct(string ProductId)
    {
        var qr = from p in products where p.Id == ProductId select p;
        return qr.FirstOrDefault();
    }
}