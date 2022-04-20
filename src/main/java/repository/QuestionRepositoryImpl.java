package repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import bean.Question;
import bean.Register;




public class QuestionRepositoryImpl implements QuestionRepository {

	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;

	
	
	@Override
	public Question getQuestion(int questionId) {
		return entityManager.find(Question.class, questionId);
	}




/*	@Override
	public RegisterBean getquestion(String x) {
		System.out.println("yo3"); 
		RegisterBean q = entityManager.find(RegisterBean.class, x);
		System.out.println("Question is "+q.getSecurityQuestion());
		
		return q;
		
	}

	
	
	
	@Override
	public String getquestion(String tp) {
		System.out.println("yo3"); 
		RegisterBean q = entityManager.find(RegisterBean.class, tp);
		
		String result=q.getSecurityQuestion();
		System.out.println("Question is "+result);
		
		return result;
		
	}
	
	@Override
	public String getanswer(String tp) {
		
	
			System.out.println("LoginRepository: getUser(LoginBean x)...");
			RegisterBean rb = (RegisterBean) entityManager.find(RegisterBean.class, tp);
		System.out.println("yo5");
			
			String result1=rb.getAnswer();
	return result1;
	}

	@Override
	public RegisterBean getuser(RegisterBean x) {
		RegisterBean q = entityManager.find(RegisterBean.class, x.getUserid());
		return q;
	}

	@Override
	public String getanswer(String uname) {
	String answer=null;
		RegisterBean rb = entityManager.find(RegisterBean.class, uname);
		if(rb.getUserid()!=null) {
			
			answer=rb.getAnswer();
		}
		
		return answer;
	}
	
	
	*/

}
