

using System.ComponentModel.DataAnnotations;

public class namchan:ValidationAttribute
{
    public namchan() => ErrorMessage = "{0} Phải là số chẵn";
    public override bool IsValid(object? value)
    {
        if(value==null) return false;
        int i = int.Parse(value.ToString());

        return i % 2 == 0;
    }
}