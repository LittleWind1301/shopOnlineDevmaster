function validate(options){

    var formElement = document.querySelector(options.form);
    var errorElement = inputElement.parentElement.querySelector('.form-message');

    if(formElement){
        options.rules.forEach(function(rule) {
            var inputElement = formElement.querySelector(rule.selector)
            var errorMessage = rule.test(inputElement.value)
            
            if(errorMessage){
                errorElement.innerText = errorMessage
                return;
            }
        });
    }
}

Validator.isRequired = function(selector){
    return {
        selector: selector,
        test: function(value){
            return value.trim() ? undefined : 'Vui lòng nhập trường này';
        }
    }
}