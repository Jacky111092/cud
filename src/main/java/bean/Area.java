package bean;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Area")
public class Area {

	@Id
	@GeneratedValue
	private int area_id;
	
	private String area_name;
	
	
	  @ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "zone_id") 
	  private Zone zone;
	  
	  private String zone_name;
	 
	
	private String record_status;
	
	public int getArea_id() {
		return area_id;
	}

	public void setArea_id(int area_id) {
		this.area_id = area_id;
	}

	public String getArea_name() {
		return area_name;
	}

	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}

	
	  public Zone getZone() { return zone; }
	  
	  public void setZone(Zone zone) { this.zone = zone; }
	 

	public String getRecord_status() {
		return record_status;
	}

	public void setRecord_status(String record_status) {
		this.record_status = record_status;
	}

	public String getZone_name() {
		return zone_name;
	}

	public void setZone_name(String zone_name) {
		this.zone_name = zone_name;
	}

	
}
