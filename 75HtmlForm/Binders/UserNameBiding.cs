

using Microsoft.AspNetCore.Mvc.ModelBinding;

public class UserNameBiding : IModelBinder
{
    public Task BindModelAsync(ModelBindingContext bindingContext)
    {
        if (bindingContext == null)
            throw new ArgumentNullException("bindingContext");
            
        string ModelName = bindingContext.ModelName;
        var valueProviderResult = bindingContext.ValueProvider.GetValue(ModelName);

        if (valueProviderResult == ValueProviderResult.None)
            return Task.CompletedTask;

        string value = valueProviderResult.FirstValue;
        if(string.IsNullOrEmpty(value))
            return Task.CompletedTask;

        string s = value.ToUpper();

        if(s.Contains("XXX"))
        {
            bindingContext.ModelState.SetModelValue(ModelName, valueProviderResult);
            bindingContext.ModelState.TryAddModelError(ModelName, "lỗi do chứa xxx");
            return Task.CompletedTask;
        }

        s = s.Trim();
        bindingContext.ModelState.SetModelValue(ModelName,s,s);
        bindingContext.Result = ModelBindingResult.Success(s);
        return Task.CompletedTask;
    }
}