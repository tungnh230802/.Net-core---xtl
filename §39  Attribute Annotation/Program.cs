using System;

namespace _39__Attribute_Annotation
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method | AttributeTargets.Property)]
    class MoTaAttribute : Attribute{
        public string thongTinChiTiet {get;set;}
        public MoTaAttribute(string _thongTinChiTiet) {
            thongTinChiTiet  = _thongTinChiTiet;
        }

    }
    [MoTa("lop chua thong tin ma ta lop")]
    class User
    {
        public string name { get; set; }
        public int age { get; set; }
        public string phoneNumber { get; set; }

        public string email { get; set; }

        [Obsolete("không nen sua dung")]
        public void PrintInfo() => Console.WriteLine(name);

    }
    class Program
    {
        static void Main(string[] args)
        {
            User u = new User() { name = "nguyen haong tung", age = 19, phoneNumber = "03434323", email = "tungn2230802@gmail.com" };
            u.PrintInfo();
        }

    }
}
