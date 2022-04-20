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

import org.springframework.format.annotation.DateTimeFormat;

import  java.util.Base64;
import java.util.Date;


@Entity
@Table(name="CampaignPhotos")
public class CampaignPhotos {
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
	  @JoinColumn(name = "live_campaign_id") 
	  private Campaign_And_Vehicle_Details cv;
	
	@DateTimeFormat(pattern = "yyyy-mm-dd") private Date created_date;

	public Date getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}

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

	public String getRecord_status() {
		return record_status;
	}

	public void setRecord_status(String record_status) {
		this.record_status = record_status;
	}

	public Campaign_And_Vehicle_Details getCv() {
		return cv;
	}

	public void setCv(Campaign_And_Vehicle_Details cv) {
		this.cv = cv;
	}
	
	
}
