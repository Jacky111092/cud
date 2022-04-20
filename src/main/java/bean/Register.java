package bean;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.Table;

@Entity
@Table(name="Insuranceuser")
public class Register {

	private String name;
	@Id
	private String emailid;
	private String password;
	private String dob;
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	private String  phoneno;
	
	private String address;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="questionId")
	private Question questionBean;
	private String answer;
	private boolean status=false;
	private boolean callBackrequest=false;


	@OneToMany(cascade=CascadeType.ALL)
	private Set<Policy> policy;
	
	
	public Set<Policy> getPolicy() {
		return policy;
	}
	public void setPolicy(Set<Policy> policy) {
		this.policy = policy;
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}
/*	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}*/
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Question getQuestionBean() {
		return questionBean;
	}
	public void setQuestionBean(Question questionBean) {
		this.questionBean = questionBean;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public boolean isCallBackrequest() {
		return callBackrequest;
	}
	public void setCallBackrequest(boolean callBackrequest) {
		this.callBackrequest = callBackrequest;
	}
	
}
