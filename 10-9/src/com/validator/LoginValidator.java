package com.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.bean.Login;

public class LoginValidator implements Validator{

	@Override
	public boolean supports(Class<?> clz) {
		
		return Login.class.equals(clz);
	}

	@Override
	public void validate(Object object, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "valid.name","Enter Name");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "valid.name","Enter Password");
	}

	
}
