package co.yw.sol.validator;

import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.executable.ExecutableValidator;
import javax.validation.metadata.BeanDescriptor;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import co.yw.sol.beans.User;



public class Vali implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		
		User u = (User)target;
		
		String str = u.getPw();
		
		
		//rejectValue : 유혀성 조건을 직접 만들어 검사할 때 사용 -> 오류 정보를 지정함
		if(str.length()>10 || str.length() < 4) {//값이 있으나, 최댓값인 10을 넘었을 때 error4로 오류 등록
			errors.rejectValue("pw", "sizeError");
		}
	}

	
}
