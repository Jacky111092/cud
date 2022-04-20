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
@Table(name="CampaignCreativeUpload")
public class CampaignCreativeUpload {
	
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
	
	/*
	 * @DateTimeFormat(pattern = "yyyy-mm-dd") private Date created_date;
	 */	
	@DateTimeFormat(pattern = "yyyy-mm-dd") 
	private Date created_date;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "campaignId") 
	  private Campaign campaign;

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

	public Campaign getCampaign() {
		return campaign;
	}

	public void setCampaign(Campaign campaign) {
		this.campaign = campaign;
	}

	public Date getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	

}
