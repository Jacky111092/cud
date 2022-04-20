package bean;

import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
@Table(name="SecurityQuestion")
public class Question {
	@Id
	@GeneratedValue
	private int questionId;
	private String questionName;
	
//	@OneToMany(cascade=CascadeType.ALL)
//	private Set<Register> rb;
//	
//	public Set<Register> getRb() {
//		return rb;
//	}
//	public void setRb(Set<Register> rb) {
//		this.rb = rb;
//	}
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public String getQuestionName() {
		return questionName;
	}
	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}

}
