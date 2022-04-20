package bean;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Campaign")
public class Campaign {

	@Id
	@GeneratedValue
	private int campaignId;
	private String brand_name;
	private String campaign_name;
	private long no_of_kilometres;
	private long rate;
	private long amount;
	private long no_of_vehicles;
	private String location;
	private String record_status;
	private String company_name;
	private String payment_mode;
	private int no_of_vehicles_assigned;
	private long remaining_amount;
	

	
	  @DateTimeFormat(pattern = "yyyy-mm-dd") private Date start_date;
	  
	  @DateTimeFormat(pattern = "yyyy-mm-dd") private Date end_date;
	 
	 
	private String status;
	
	private String payment_flag;
	
	@DateTimeFormat(pattern = "yyyy-mm-dd") private Date payment_created_date;
	
	private String live_campaign_flag;
	
	@DateTimeFormat(pattern = "yyyy-mm-dd") private Date live_campaign_created_date;
	
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "vehicle_partner_id") 
	  private VehiclePartner vehicle_partner;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "vehicleId") 
	  private Vehicles vehicles;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "client_id") 
	  private Client client;
	

	
	/*
	 * @OneToOne
	 * 
	 * @JoinColumn(name = "company_name") private Client client;
	 * 
	 * public Client getClient() { return client; } public void setClient(Client
	 * client) { this.client = client; }
	 */
	 
	 
	public VehiclePartner getVehicle_partner() {
		return vehicle_partner;
	}
	public void setVehicle_partner(VehiclePartner vehicle_partner) {
		this.vehicle_partner = vehicle_partner;
	}
	public Vehicles getVehicles() {
		return vehicles;
	}
	public void setVehicles(Vehicles vehicles) {
		this.vehicles = vehicles;
	}
	/*
	 * public String getCampaignId() { return campaignId; } public void
	 * setCampaignId(String campaignId) { this.campaignId = campaignId; }
	 */
	public String getCampaign_name() {
		return campaign_name;
	}
	public void setCampaign_name(String campaign_name) {
		this.campaign_name = campaign_name;
	}
	public long getNo_of_kilometres() {
		return no_of_kilometres;
	}
	public void setNo_of_kilometres(long no_of_kilometres) {
		this.no_of_kilometres = no_of_kilometres;
	}
	public long getRate() {
		return rate;
	}
	public void setRate(long rate) {
		this.rate = rate;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public long getNo_of_vehicles() {
		return no_of_vehicles;
	}
	public void setNo_of_vehicles(long no_of_vehicles) {
		this.no_of_vehicles = no_of_vehicles;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

	
	
	  public Date getStart_date() { return start_date; } public void
	  setStart_date(Date start_date) { this.start_date = start_date; } public Date
	  getEnd_date() { return end_date; } public void setEnd_date(Date end_date) {
	  this.end_date = end_date; }
	 
	 
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getRecord_status() {
		return record_status;
	}
	public void setRecord_status(String record_status) {
		this.record_status = record_status;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public int getCampaignId() {
		return campaignId;
	}
	public void setCampaignId(int campaignId) {
		this.campaignId = campaignId;
	}
	public String getPayment_mode() {
		return payment_mode;
	}
	public void setPayment_mode(String payment_mode) {
		this.payment_mode = payment_mode;
	}
	public int getNo_of_vehicles_assigned() {
		return no_of_vehicles_assigned;
	}
	public void setNo_of_vehicles_assigned(int no_of_vehicles_assigned) {
		this.no_of_vehicles_assigned = no_of_vehicles_assigned;
	}
	public long getRemaining_amount() {
		return remaining_amount;
	}
	public void setRemaining_amount(long remaining_amount) {
		this.remaining_amount = remaining_amount;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}

	/*
	 * public Date getCreated_date() { return payment_created_date; } public void
	 * setCreated_date(Date payment_created_date) { this.payment_created_date =
	 * payment_created_date; }
	 */
	public String getPayment_flag() {
		return payment_flag;
	}
	public void setPayment_flag(String payment_flag) {
		this.payment_flag = payment_flag;
	}
	public String getLive_campaign_flag() {
		return live_campaign_flag;
	}
	public void setLive_campaign_flag(String live_campaign_flag) {
		this.live_campaign_flag = live_campaign_flag;
	}

	/*
	 * private boolean access_limit = false;
	 */	
	public Date getPayment_created_date() {
		return payment_created_date;
	}
	public void setPayment_created_date(Date payment_created_date) {
		this.payment_created_date = payment_created_date;
	}
	public Date getLive_campaign_created_date() {
		return live_campaign_created_date;
	}
	public void setLive_campaign_created_date(Date live_campaign_created_date) {
		this.live_campaign_created_date = live_campaign_created_date;
	}
	
}
