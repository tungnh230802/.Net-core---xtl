
using Microsoft.AspNetCore.Mvc.RazorPages;

public class ContactRequestModel : PageModel
{
    public string UserId {get;set;} = "user id";
    private readonly ILogger<ContactRequestModel> logger;
    public ContactRequestModel(ILogger<ContactRequestModel> _logger)
    {
        logger = _logger;
        logger.LogInformation("Init Contact..");
    }
}