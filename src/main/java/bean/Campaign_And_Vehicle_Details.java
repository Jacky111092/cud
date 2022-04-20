package bean;
import java.util.ArrayList;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Campaign_And_Vehicle_Details")
public class Campaign_And_Vehicle_Details {
	@Id
	@GeneratedValue
	public int live_campaign_id;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "vehicleId") 
	  private Vehicles vehicles;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "campaignId") 
	  private Campaign campaign;
	
	@DateTimeFormat(pattern = "yyyy-mm-dd") private Date start_date;
	  
	@DateTimeFormat(pattern = "yyyy-mm-dd") private Date end_date;
	
	private String record_status;
	
	@Column(nullable = true)
	public long total_kms_ran;

	public int getLive_campaign_id() {
		return live_campaign_id;
	}

	public void setLive_campaign_id(int live_campaign_id) {
		this.live_campaign_id = live_campaign_id;
	}

	public Vehicles getVehicles() {
		return vehicles;
	}

	public void setVehicles(Vehicles vehicles) {
		this.vehicles = vehicles;
	}

	public Campaign getCampaign() {
		return campaign;
	}

	public void setCampaign(Campaign campaign) {
		this.campaign = campaign;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public long getTotal_kms_ran() {
		return total_kms_ran;
	}

	public void setTotal_kms_ran(long total_kms_ran) {
		this.total_kms_ran = total_kms_ran;
	}

	public String getRecord_status() {
		return record_status;
	}

	public void setRecord_status(String record_status) {
		this.record_status = record_status;
	}
	
	
	
}
