package repository;

import bean.Question;
import bean.Register;

public interface QuestionRepository {
	
	

	Question getQuestion(int questionId);
/*	Register getAnswer(int userid);
	//Register getuser(Register r);
*/}
