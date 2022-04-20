package service;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;

import bean.Question;
import bean.Register;
import repository.QuestionRepository;

public class QuestionService {
	@PersistenceContext(unitName = "myDev")
	private EntityManager entityManager;

	@Autowired
	private QuestionRepository questionRepository;

	
	public Question getQuestion(int questionId)
	{
		return questionRepository.getQuestion(questionId);
	}

	/*public Boolean lost(Register x) {
		System.out.println("yo2");

		Register r = questionRepository.getuser(x);
		if (r== null) {

			return true;

		}
		else {
			return false;
		}

		// questionRepository.getanswer(x);

	}*/

	/*public Boolean found(String tp, String question, String answer) {

		
		String res2=questionRepository.getquestion(tp);
		String res1 = questionRepository.getanswer(tp);
		System.out.println(res1);
		System.out.println(answer);
		
		if (res2.equals(question) && res1.equals(answer)) {
			return true;
		} else {
			return false;
		}

		
		
		
	}
*/
}
