

using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;

public class UserContact
{
    // Chỉ hỗ trợ phương thức 'Post'
    // [BindProperty(SupportsGet = true)]
    [BindProperty]
    [DisplayName("ID của bạn:")]
    [Range(1,10, ErrorMessage = "nhập sai")]
    public int UserId {get;set;} 
    [BindProperty]
    [DisplayName("Email Của bạn:")]
    [EmailAddress(ErrorMessage = "Nhập sai email")]
    public string Email {get;set;}
    [BindProperty]
    [DisplayName("Tên người dùng:")]
    public string UserName {get;set;}
}