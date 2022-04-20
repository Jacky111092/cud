package bean;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import  java.util.Base64;


@Entity
@Table(name="UploadFile")
public class UploadFile {
	@Id
    @GeneratedValue
    @Column(name = "FILE_ID")
	private int id;
	@Column(name = "FILE_NAME")
    private String fileName;
	@Column(name = "DATA", length = 10000000)
    private byte[] data;
	
	private String file_type;
	
	private String record_status;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "vehicleId") 
	  private Vehicles vehicle;
	
		/* private String base64Image; */
 
    
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    
    public String getFileName() {
        return fileName;
    }
 
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
 
    @Column(name = "FILE_DATA")
    public byte[] getData() {
        return data;
    }
 
    public void setData(byte[] data) {
        this.data = data;
    }

	public String getFile_type() {
		return file_type;
	}

	public void setFile_type(String file_type) {
		this.file_type = file_type;
	}

	public Vehicles getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicles vehicle) {
		this.vehicle = vehicle;
	}

	public String getRecord_status() {
		return record_status;
	}

	public void setRecord_status(String record_status) {
		this.record_status = record_status;
	}

	
	/*
	 * public String getBase64Image() { base64Image =
	 * Base64.getEncoder().encodeToString(this.data); return base64Image; }
	 * 
	 * public void setBase64Image(String base64Image) { this.base64Image =
	 * base64Image; }
	 */
	 
}
