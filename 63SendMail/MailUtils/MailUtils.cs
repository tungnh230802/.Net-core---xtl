using System.Net;
using System.Net.Mail;

namespace MailUtils
{
    public class MailUtils
    {
        public static async Task<string> SendMail(string _from, string _to, string _subject
        , string _body)
        {
            MailMessage message = new MailMessage(_from, _to, _subject, _body);

            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.SubjectEncoding = System.Text.Encoding.UTF8;
            message.IsBodyHtml = true;
            message.ReplyToList.Add(new MailAddress(_from));
            message.Sender = new MailAddress(_from, "Nguyễn Hoàng Tùng");

            using var SmtpClient = new SmtpClient("localhost");
            try
            {
                await SmtpClient.SendMailAsync(message);
                return "gui thanh cong";
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return "gui that bai";
            }
        }


         public static async Task<string> SendGmail(string _from, string _to, string _subject
        , string _body,string _gmail,string _pass)
        {
            MailMessage message = new MailMessage(_from, _to, _subject, _body);

            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.SubjectEncoding = System.Text.Encoding.UTF8;
            message.IsBodyHtml = true;
            message.ReplyToList.Add(new MailAddress(_from));
            message.Sender = new MailAddress(_from, "Nguyễn Hoàng Tùng");

            using var SmtpClient = new SmtpClient("smtp.gmail.com");
            SmtpClient.Port = 587;
            SmtpClient.EnableSsl = true;
            SmtpClient.Credentials = new NetworkCredential(_gmail,_pass);
            try
            {
                await SmtpClient.SendMailAsync(message);
                return "gui thanh cong";
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return "gui that bai";
            }
        }
    }
}