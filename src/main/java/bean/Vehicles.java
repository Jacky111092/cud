package bean;

import java.util.ArrayList;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Vehicles")
public class Vehicles {

	@Id
	@GeneratedValue
	private int vehicleId;
	private String owner_name;
	private String vehicle_number;
	private String start_location;
	private ArrayList<String> delivery_location;
	private String shift;
	private String platform;
	private String status;
	private String record_status;
	private long total_kms_ran;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "vehicle_partner_id") 
	  private VehiclePartner vehicle_partner;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "campaignId") 
	  private Campaign campaign;
	
	private String base64Image;
	
	public Campaign getCampaign() {
		return campaign;
	}
	public void setCampaign(Campaign campaign) {
		this.campaign = campaign;
	}
	public VehiclePartner getVehicle_partner() {
		return vehicle_partner;
	}
	public void setVehicle_partner(VehiclePartner vehicle_partner) {
		this.vehicle_partner = vehicle_partner;
	}
	public String getShift() {
		return shift;
	}
	public void setShift(String shift) {
		this.shift = shift;
	}
	public int getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getVehicle_number() {
		return vehicle_number;
	}
	public void setVehicle_number(String vehicle_number) {
		this.vehicle_number = vehicle_number;
	}
	public String getStart_location() {
		return start_location;
	}
	public void setStart_location(String start_location) {
		this.start_location = start_location;
	}
	public ArrayList<String> getDelivery_location() {
		return delivery_location;
	}
	public void setDelivery_location(ArrayList<String> delivery_location) {
		this.delivery_location = delivery_location;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRecord_status() {
		return record_status;
	}
	public void setRecord_status(String record_status) {
		this.record_status = record_status;
	}
	public String getBase64Image() {
		return base64Image;
	}
	public void setBase64Image(String base64Image) {
		this.base64Image = base64Image;
	}
	
}
