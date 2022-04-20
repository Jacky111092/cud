package bean;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Zone")
public class Zone {

	@Id
	@GeneratedValue
	private int zone_id;
	
	private String zone_name;
	
	/*
	 * @OneToMany
	 * 
	 * @JoinColumn(name = "area_name") private Area area;
	 */
	private String record_status;

	public int getZone_id() {
		return zone_id;
	}

	public void setZone_id(int zone_id) {
		this.zone_id = zone_id;
	}

	public String getZone_name() {
		return zone_name;
	}

	public void setZone_name(String zone_name) {
		this.zone_name = zone_name;
	}

	/*
	 * public Area getArea() { return area; }
	 * 
	 * public void setArea(Area area) { this.area = area; }
	 */

	public String getRecord_status() {
		return record_status;
	}

	public void setRecord_status(String record_status) {
		this.record_status = record_status;
	} 
}
