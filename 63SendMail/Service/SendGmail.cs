

using Microsoft.Extensions.Options;
using MimeKit;

public class SendGmailService
{
    MailSetting mailSetting;
    public SendGmailService(IOptions<MailSetting> _mailSetting)
    {
        mailSetting = _mailSetting.Value;
    }
    public async Task<string> SendMail(MailContent mailcontent)
    {
        var email = new MimeMessage();
        email.Sender = new MailboxAddress(mailSetting.DisplayName, mailSetting.Mail);
        email.From.Add(new MailboxAddress(mailSetting.DisplayName, mailSetting.Mail));
        email.To.Add(new MailboxAddress(mailcontent.to, mailcontent.to));
        email.Subject = mailcontent.Subject;

        var builder = new BodyBuilder();
        builder.HtmlBody = mailcontent.body;
        email.Body = builder.ToMessageBody();

        using var smtp = new MailKit.Net.Smtp.SmtpClient();
        try
        {
            await smtp.ConnectAsync(mailSetting.Host, mailSetting.Port, MailKit.Security.SecureSocketOptions.StartTls);
            await smtp.AuthenticateAsync(mailSetting.Mail, mailSetting.Passwork);
            await smtp.SendAsync(email);
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            return "loi" + ex.Message;
        }
        smtp.Disconnect(true);
        return "thanh cong";
    }
}

public class MailContent
{
    public string to { get; set; }
    public string Subject { get; set; }
    public string body { get; set; }
}