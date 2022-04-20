package bean;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Client")
public class Client {
@Id
@GeneratedValue
private int client_id;
private String work_emailid;
private String company_name;
private String username;
private String phone_no;
private String personal_emailid;
private String website;
private String designation;
private String record_status;
private String password;

public String getWork_emailid() {
	return work_emailid;
}
public void setWork_emailid(String work_emailid) {
	this.work_emailid = work_emailid;
}
public String getCompany_name() {
	return company_name;
}
public void setCompany_name(String company_name) {
	this.company_name = company_name;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPhone_no() {
	return phone_no;
}
public void setPhone_no(String phone_no) {
	this.phone_no = phone_no;
}
public String getPersonal_emailid() {
	return personal_emailid;
}
public void setPersonal_emailid(String personal_emailid) {
	this.personal_emailid = personal_emailid;
}
public String getWebsite() {
	return website;
}
public void setWebsite(String website) {
	this.website = website;
}
public String getDesignation() {
	return designation;
}
public void setDesignation(String designation) {
	this.designation = designation;
}
public String getRecord_status() {
	return record_status;
}
public void setRecord_status(String record_status) {
	this.record_status = record_status;
}
public int getClient_id() {
	return client_id;
}
public void setClient_id(int client_id) {
	this.client_id = client_id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}


	
}
