
function Validator(options){

    var selectorRules = {};

    function validate(inputElement, rule){
        var errorElement = inputElement.parentElement.querySelector(options.errorSelector);

        rules = selectorRules[rule.selector]
        for( var i=0; i<rules.length; i++){
            var errorMessage = rules[i](inputElement.value)
            if(errorMessage) break
        }

        if(errorMessage){
            errorElement.innerText = errorMessage;
            inputElement.parentElement.classList.add('invalid');
        }else{
            errorElement.innerText = '';
            inputElement.parentElement.classList.remove('invalid');
        }
        return !errorMessage
    }

    var formElement = document.querySelector(options.form);

    if(formElement){

        formElement.onsubmit = function(e){

            e.preventDefault();
            var isFormValid = true;
           
            options.rules.forEach(function(rule){
                var inputElement = formElement.querySelector(rule.selector);

                var isValid = validate(inputElement, rule);
                if(!isValid){
                    isFormValid = false;
                    console.log
                }
                    
            });
            if(isFormValid){
                console.log('dung')
                formElement.submit()
            }else{
                console.log('sai')
            }
                
        }
        options.rules.forEach(function(rule) {

            if(Array.isArray(selectorRules[rule.selector])){
                selectorRules[rule.selector].push(rule.test)

            }else{
                selectorRules[rule.selector] = [rule.test]
            }

            var inputElement = formElement.querySelector(rule.selector);

            if(inputElement){
                //TH blur khoi input
                inputElement.onblur = function(){
                    validate(inputElement, rule);
                }

                //TH nguoi dung nhap input
                inputElement.oninput = function(){
                    var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
                    errorElement.innerText = '';

                }
            }
        });
    }
        
}

Validator.isRequired = function(selector){
    return {
        selector: selector,
        test: function(value){
            return value.trim() ? undefined : 'Vui l??ng nh???p tr?????ng n??y';
        }
    }
}

Validator.isPhone = function(selector){
    return {
        selector: selector,
        test: function(value){
            var regex = /[0-9]{10}/;
            return regex.test(value) ? undefined : 'S??? ??i???n tho???i kh??ng h???p l???';
        }
    }
}

Validator.minLength = function(selector, min){
    return {
        selector: selector,
        test: function(value){
            return value.length >= min ? undefined : `M???t kh???u t???i thi???u ${min} k?? t???`;
        }
    }
}

Validator.isEmail = function(selector){
    return {
        selector: selector,
        test: function(value){
            var regex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
            
            return regex.test(value) ? undefined : 'Email kh??ng h???p l???';
        }
    }
}

Validator.isConfirm = function(selector, getConfirmValue, message){
    return {
        selector: selector,
        test: function(value){
            return value === getConfirmValue() ? undefined :message || 'Gi?? tr??? nh???p v??o kh??ng ch??nh x??c';
        }
    }
}
