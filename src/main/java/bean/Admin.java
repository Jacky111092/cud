package bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.postgresql.Driver;

@Entity
@Table(name="Admin")
public class Admin {
	@Id
	private String emailid;
	private String username;
	private String password;
	private String mobile_number;
	private String role;
	private String role_type;

	/*
	 * private boolean access_limit = false;
	 */	
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getRole_type() {
		return role_type;
	}
	public void setRole_type(String role_type) {
		this.role_type = role_type;
	}
	/*
	 * public boolean isAccess_limit() { return access_limit; } public void
	 * setAccess_limit(boolean access_limit) { this.access_limit = access_limit; }
	 */
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
