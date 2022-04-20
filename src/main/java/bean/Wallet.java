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
@Table(name="Wallet")
public class Wallet {
	
	@Id
	@GeneratedValue
	private int walletId;
	
	private long paid_amount;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "client_id") 
	  private Client client;
	
	@ManyToOne(cascade = {CascadeType.MERGE})
	  @JoinColumn(name = "campaignId") 
	  private Campaign campaign;
	
	@DateTimeFormat(pattern = "yyyy-mm-dd") private Date created_date;
	
	public Date getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}

	private String bank_name;
	/*
	 * private String acc_holder_name;
	 */	private String account_type;
	private int account_number;
	private String ifsc_code;
	private String record_status;

	public String getBank_name() {
		return bank_name;
	}

	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}

	/*
	 * public String getAcc_holder_name() { return acc_holder_name; }
	 * 
	 * public void setAcc_holder_name(String acc_holder_name) { this.acc_holder_name
	 * = acc_holder_name; }
	 */
	public String getAccount_type() {
		return account_type;
	}

	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}

	public int getAccount_number() {
		return account_number;
	}

	public void setAccount_number(int account_number) {
		this.account_number = account_number;
	}

	public String getIfsc_code() {
		return ifsc_code;
	}

	public void setIfsc_code(String ifsc_code) {
		this.ifsc_code = ifsc_code;
	}

	public String getRecord_status() {
		return record_status;
	}

	public void setRecord_status(String record_status) {
		this.record_status = record_status;
	}

	public int getWalletId() {
		return walletId;
	}

	public void setWalletId(int walletId) {
		this.walletId = walletId;
	}

	public long getPaid_amount() {
		return paid_amount;
	}

	public void setPaid_amount(long paid_amount) {
		this.paid_amount = paid_amount;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Campaign getCampaign() {
		return campaign;
	}

	public void setCampaign(Campaign campaign) {
		this.campaign = campaign;
	}

	

}
