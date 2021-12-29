
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

public class ContactRequestModel : PageModel
{
    [BindProperty]
    public UserContact userContact { get; set; }

    private readonly ILogger<ContactRequestModel> logger;
    public ContactRequestModel(ILogger<ContactRequestModel> _logger)
    {
        logger = _logger;
        logger.LogInformation("Init Contact..");
    }

    public void OnPost()
    {
        Console.WriteLine(userContact.Email);
    }
}