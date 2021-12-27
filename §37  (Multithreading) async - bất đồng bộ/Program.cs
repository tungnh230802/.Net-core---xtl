using System;
using System.Net;
using System.Threading;
using System.Threading.Tasks;

namespace _37___Multithreading__async___bất_đồng_bộ
{
    public class DownloadWebsite01
    {

        public static string DownloadWebpage(string url, bool showresult)
        {
            using (var client = new WebClient())
            {
                Console.Write("Starting download ...");
                string content = client.DownloadString(url);
                Thread.Sleep(3000);
                if (showresult)
                    Console.WriteLine(content);

                return content;
            }
        }

        public static void TestDownloadWebpage()
        {
            string url = "https://code.visualstudio.com/";
            DownloadWebpage(url, true);
            Console.WriteLine("Do somthing ...");
        }
    }

    public class TestAsync01
    {

        // Viết ra màn hình thông báo có màu
        public static void WriteLine(string s, ConsoleColor color)
        {
            Console.ForegroundColor = color;
            Console.WriteLine(s);
        }

        // Tạo và chạy Task, sử dụng delegate Func (có kiểu trả về)
        public static Task<string> Async1(string thamso1, string thamso2)
        {
            // tạo biến delegate trả về kiểu string, có một tham số object
            Func<object, string> myfunc = (object thamso) =>
            {
                // Đọc tham số (dùng kiểu động - xem kiểu động để biết chi tiết)
                dynamic ts = thamso;
                for (int i = 1; i <= 10; i++)
                {
                    //  Thread.CurrentThread.ManagedThreadId  trả về ID của thread đạng chạy
                    WriteLine($"{i,5} {Thread.CurrentThread.ManagedThreadId,3} Tham số {ts.x} {ts.y}",
                        ConsoleColor.Green);
                    Thread.Sleep(500);
                }
                return $"Kết thúc Async1! {ts.x}";
            };

            Task<string> task = new Task<string>(myfunc, new { x = thamso1, y = thamso2 });
            task.Start(); // chạy thread

            // Làm gì đó sau khi chạy Task ở đây
            Console.WriteLine("Async1: Làm gì đó sau khi task chạy");

            string ketqua = task.Result;   // khóa (block) thread cha - chờ task hoàn thành
            Console.WriteLine("Làm gì đó khi task đã kết thúc");


            return task;
        }

        // Tạo và chạy Task, sử dụng delegate Action (không kiểu trả về)
        public static Task Async2()
        {

            Action myaction = () =>
            {
                for (int i = 1; i <= 10; i++)
                {
                    WriteLine($"{i,5} {Thread.CurrentThread.ManagedThreadId,3}",
                        ConsoleColor.Yellow);
                    Thread.Sleep(2000);
                }
            };
            Task task = new Task(myaction);
            task.Start();

            // Làm gì đó sau khi chạy Task ở đây
            Console.WriteLine("Async2: Làm gì đó sau khi task chạy");

            return task;
        }

    }



    class Program
    {

        static async Task Main(string[] args)
        {

            // // DownloadWebsite01.TestDownloadWebpage();
            Console.WriteLine($"{' ',5} {Thread.CurrentThread.ManagedThreadId,3} MainThread");
            Task<string> t1 = TestAsync01.Async1("A", "B");
            Task t2 = TestAsync01.Async2();

            Console.WriteLine("Làm gì đó ở thread chính sau khi 2 task chạy");

            // Chờ t1 kết thúc và đọc kết quả trả về
            t1.Wait();
            String s = t1.Result;
            TestAsync01.WriteLine(s, ConsoleColor.Red);

            // Ngăn không cho thread chính kết thúc
            // Nếu thread chính kết thúc mà t2 đang chạy nó sẽ bị ngắt
            Console.ReadKey();

            // string url = "https://github.com/microsoft/vscode/archive/1.48.0.tar.gz";
            // var taskdonload = DownloadAsync.DownloadFile(url);
            // //..
            // Console.WriteLine("Làm gì đó khi file đang tải");
            // //..
            // await taskdonload;
            // Console.WriteLine("Làm gì đó khi file tải xong");
        }
    }

    public class DownloadAsync
    {

        public static async Task DownloadFile(string url)
        {
            Action downloadaction = () =>
            {
                using (var client = new WebClient())
                {
                    Console.Write("Starting download ..." + url);
                    // mảng byte tải về
                    byte[] data = client.DownloadData(new Uri(url));

                    // Lấy tên file để lưu
                    string filename = System.IO.Path.GetFileName(url);
                    System.IO.File.WriteAllBytes(filename, data);
                }
            };

            Task task = new Task(downloadaction);
            task.Start();

            await task;
            Console.WriteLine("Đã hoàn thành tải file");
        }
    }
}
