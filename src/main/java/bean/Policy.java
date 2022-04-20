package bean;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.persistence.Entity;
import org.hibernate.annotations.ForeignKey;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Policy")
public class Policy {
	@Id
	private String policyId;
	private String policyName;
	private LocalDate startdate;
	private LocalDate enddate;
	private double Idv;
	@OneToOne
	@JoinColumn(name="VechileRegistrationNumber")
	private VehicleRegistry vehicleRegistry;

	@ManyToOne
	@JoinColumn(name="emailid")
	private Register user;
	
	private double policyPremium;

	
	public Register getUser() {
		return user;
	}

	public void setUser(Register user) {
		this.user = user;
	}

	public VehicleRegistry getVehicleRegistry() {
		return vehicleRegistry;
	}

	public void setVehicleRegistry(VehicleRegistry vehicleRegistry) {
		this.vehicleRegistry = vehicleRegistry;
	}
	
	public String getPolicyId() {
		return policyId;
	}

	public void setPolicyId(String policyId) {
		this.policyId = policyId;
	}

	public String getPolicyName() {
		return policyName;
	}

	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}
	

	public double getIdv() {
		return Idv;
	}

	public void setIdv(double idv) {
		Idv = idv;
	}

	public double getPolicyPremium() {
		return policyPremium;
	}

	public void setPolicyPremium(double policyPremium) {
		this.policyPremium = policyPremium;
	}

	public LocalDate getStartdate() {
		return startdate;
	}

	public void setStartdate(LocalDate startdate) {
		this.startdate = startdate;
	}

	public LocalDate getEnddate() {
		return enddate;
	}

	public void setEnddate(LocalDate enddate) {
		this.enddate = enddate;
	}

}
