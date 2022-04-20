package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.lang.Nullable;

/*import com.sun.istack.internal.Nullable;
*/
@Entity
@Table(name="VehiclePartner")
public class VehiclePartner {
	@Id
	@GeneratedValue
	private int vehicle_partner_id;
	private String owner_name;
	private String phone_no;
	private String email_address;
	private String company_name;
	private String company_contact_person;
	private String company_contact_person_contact;
	private String bank_name;
	private String acc_holder_name;
	private String account_type;
	private int account_number;
	private String ifsc_code;
	private String record_status;
	private String status;
	
	@Nullable
	private int vehicle_count;
	public int getVehicle_partner_id() {
		return vehicle_partner_id;
	}
	public void setVehicle_partner_id(int vehicle_partner_id) {
		this.vehicle_partner_id = vehicle_partner_id;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	public String getEmail_address() {
		return email_address;
	}
	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_contact_person() {
		return company_contact_person;
	}
	public void setCompany_contact_person(String company_contact_person) {
		this.company_contact_person = company_contact_person;
	}
	
	public String getBank_name() {
		return bank_name;
	}
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}
	public String getAcc_holder_name() {
		return acc_holder_name;
	}
	public void setAcc_holder_name(String acc_holder_name) {
		this.acc_holder_name = acc_holder_name;
	}
	public String getAccount_type() {
		return account_type;
	}
	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}
	public int getAccount_number() {
		return account_number;
	}
	public void setAccount_number(int account_number) {
		this.account_number = account_number;
	}
	public String getIfsc_code() {
		return ifsc_code;
	}
	public void setIfsc_code(String ifsc_code) {
		this.ifsc_code = ifsc_code;
	}
	public String getRecord_status() {
		return record_status;
	}
	public void setRecord_status(String record_status) {
		this.record_status = record_status;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCompany_contact_person_contact() {
		return company_contact_person_contact;
	}
	public void setCompany_contact_person_contact(String company_contact_person_contact) {
		this.company_contact_person_contact = company_contact_person_contact;
	}
	public int getVehicle_count() {
		return vehicle_count;
	}
	public void setVehicle_count(int vehicle_count) {
		this.vehicle_count = vehicle_count;
	}
	
	
}
