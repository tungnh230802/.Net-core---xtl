

using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;

public class CustomerInfo
{
    [Display(Name = "Tên khách")]
    [Required(ErrorMessage = "Phải nhập {0}")]
    [StringLength(20, MinimumLength = 5, ErrorMessage = "{0} phải dài từ {2} đến {1} ký tự")]
    [ModelBinder(BinderType = typeof(UserNameBiding))]
    public string UserName { get; set; }
    [EmailAddress]
    [Required(ErrorMessage = "Phải nhập {0}")]
    [Display(Name = "Địa chỉ Email")]
    public string Email { set; get; }
    [Display(Name = "Năm sinh")]
    [namchan]
    [Required(ErrorMessage = "Phải nhập {0}")]
    [Range(1970, 2000, ErrorMessage = "{0} sai, phải trong khoãng {0} đến {1}")]
    public int? Birth { get; set; }

}