package bean;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="VehicleRegistry")
public class VehicleRegistry {
	
	@Id
	private String regId;
	private String buydate;

	@ManyToOne(cascade = {CascadeType.ALL})
	@JoinColumn(name = "vehicleId")
	private Vehicle vb;
	
	
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getBuydate() {
		return buydate;
	}
	public void setBuydate(String buydate) {
		this.buydate = buydate;
	}
	public Vehicle getVb() {
		return vb;
	}
	public void setVb(Vehicle vb) {
		this.vb = vb;
	}

}
