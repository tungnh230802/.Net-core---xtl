using System;

namespace _22_Tính_đa_hình___abstract___interface
{
    // virtual method
    // nếu chỉ muốn Product là trừu tượng và không thể tạo đỗi tượng
    // thì sử dung "abstract"
    abstract class Product
    {
        public double price { get; set; }

        // thêm "virtual nếu muôn phương thức này bị ghi đè
        public virtual void Info()
        {
            Console.WriteLine($"Gia san pham {price}");
        }

        // nếu muốn phương thức chỉ trừu tuong thì thêm "abstrat"
        // abstract chỉ có tên không và không có thân
        public abstract void Info2();
        public void Test() => Info();
    }

    class Iphone : Product
    {
        public Iphone() => price = 500;

        // thêm "override" để ghi đè phương thức
        public override void Info()
        {
            Console.WriteLine("dien thoai iphone");
            // gọi base để gọi lại phương thức ở lớp cha
            base.Info();
        }

        public override void Info2()
        {
            Console.WriteLine("dien thoai iphone");
        }
    }

    //interface 
    interface IHinhhoc
    {
        public double TinhChuVi();
        public double TinhDienTich();
    }

    class HinhChuNhat : IHinhhoc
    {
        public double a;
        public double b;
        public HinhChuNhat(double _a, double _b)
        {
            a = _a;
            b = _b;
        }

        public double TinhChuVi()
        {
            return 2 * (a +b);
        }

        public double TinhDienTich()
        {
            return a*b;
        }
    }
    class Program
    {

        static void Main(string[] args)
        {
            // Iphone i = new Iphone();
            // i.Test();



            HinhChuNhat h = new HinhChuNhat(4,5);
            Console.WriteLine($"dien tich {h.TinhDienTich()}, chu vi {h.TinhChuVi()}");
        }
    }
}
