package co.yw.sol.beans;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Email;


public class User {
	
	@NotBlank
	private String id;
	@Email
	private String email;
	
	private String pw;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}
	   
		
}
