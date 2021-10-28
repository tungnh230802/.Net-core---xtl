using System;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Configuration.Json;
using System.IO;

namespace _40__DI_Dependency_Injection
{
    interface IClassB
    {
        public void ActionB();
    }
    interface IClassC
    {
        public void ActionC();
    }

    class ClassC : IClassC
    {
        public ClassC() => Console.WriteLine("ClassC is created");
        public void ActionC() => Console.WriteLine("Action in ClassC");
    }

    class ClassB : IClassB
    {
        IClassC c_dependency;
        public ClassB(IClassC classc)
        {
            c_dependency = classc;
            Console.WriteLine("ClassB is created");
        }
        public void ActionB()
        {
            Console.WriteLine("Action in ClassB");
            c_dependency.ActionC();
        }
    }

    class ClassB2 : IClassB
    {
        IClassC c_dependency;
        string message;
        public ClassB2(IClassC classc, string mgs)
        {
            c_dependency = classc;
            message = mgs;
            Console.WriteLine("ClassB2 is created");
        }
        public void ActionB()
        {
            Console.WriteLine(message);
            c_dependency.ActionC();
        }
    }


    class ClassA
    {
        IClassB b_dependency;
        public ClassA(IClassB classb)
        {
            b_dependency = classb;
            Console.WriteLine("ClassA is created");
        }
        public void ActionA()
        {
            Console.WriteLine("Action in ClassA");
            b_dependency.ActionB();
        }
    }

    public class MyServiceOptions
    {
        public string data1 { get; set; }
        public int data2 { get; set; }
    }

    public class MyService
    {
        public string data1 { get; set; }
        public int data2 { get; set; }

        public MyService(IOptions<MyServiceOptions> options)
        {
            var _option = options.Value;
            data1 = _option.data1;
            data2 = _option.data2;
        }
        public void PrintData() => Console.WriteLine($"{data1} / {data2}");
    }
    class Program
    {
        public static IClassB CreateB2(IServiceProvider provider)
        {
            var b2 = new ClassB2(
                                   provider.GetService<IClassC>(), "thuc hien o class b2"
                               );
            return b2;
        }
        static void Main(string[] args)
        {
            IConfigurationRoot configurationRoot;
            ConfigurationBuilder configurationBuilder = new ConfigurationBuilder();
            configurationBuilder.SetBasePath(Directory.GetCurrentDirectory());
            configurationBuilder.AddJsonFile("cauhinh.json");

            configurationRoot = configurationBuilder.Build();

            // var servers = new ServiceCollection();
            // servers.AddSingleton<ClassA, ClassA>();
            // servers.AddSingleton<IClassB>(CreateB2);
            // servers.AddSingleton<IClassC, ClassC>();

            // var provider = servers.BuildServiceProvider();

            // var a = provider.GetService<ClassA>();
            // a.ActionA();

            var _sectionMyServiceOptions = configurationRoot.GetSection("MyServiceOptions");

            var servers = new ServiceCollection();
            servers.Configure<MyServiceOptions>(_sectionMyServiceOptions);
            servers.AddSingleton<MyService>();

            var provider = servers.BuildServiceProvider();
            var myservice = provider.GetService<MyService>();
            myservice.PrintData();
        }
    }
}
