package bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="IssuedTkt")
public class IssuedTkt {

	@Id
	@GeneratedValue
	private int tktId;
	private String descrp;
	
	public String getDescrp() {
		return descrp;
	}
	public void setDescrp(String descrp) {
		this.descrp = descrp;
	}
	@OneToOne//(cascade=CascadeType.ALL)
	@JoinColumn(name="staffId")
	private Staff staff;
	
	
	@OneToOne//(cascade=CascadeType.ALL)
	@JoinColumn(name="claimId")
	private Claim claim;
	
	@OneToOne//(cascade=CascadeType.ALL)
	@JoinColumn(name="queryId")
	private  CustomerQueries CustomerQueries;
	
	public CustomerQueries getCustomerQueries() {
		return CustomerQueries;
	}
	public void setCustomerQueries(CustomerQueries query) {
		CustomerQueries = query;
	}
	public Claim getClaim() {
		return claim;
	}
	public void setClaim(Claim claim) {
		this.claim = claim;
	}
	private String type;
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
//	public Register getUser() {
//		return user;
//	}
//	public void setUser(Register user) {
//		this.user = user;
//	}
	public int getTktId() {
		return tktId;
	}
	public void setTktId(int tktId) {
		this.tktId = tktId;
	}
	
	
}
