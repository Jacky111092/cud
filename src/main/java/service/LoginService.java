package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.Admin;
import bean.Login;
import bean.Register;
import bean.Vehicle;
import repository.LoginRepository;
import repository.QuestionRepository;

@Service
@EnableTransactionManagement
public class LoginService {

	@Autowired
	private LoginRepository loginRepository; //DB


	public Register validateUser(Login login) {
		Register user = loginRepository.getUser(login);
		if(user==null)
			return null;
		if(login.getEmailid().equals(user.getEmailid()) && login.getPassword().equals(user.getPassword()))
			return user;
		else
			return null;
	}
	
	
	public Admin validateAdmin(Admin login) {
		String emailid = login.getEmailid();
		System.out.println(emailid);
		Admin user = loginRepository.getAdmin(emailid);
		if (user == null)
			return null;
		if (login.getEmailid().equals(user.getEmailid()) && login.getPassword().equals(user.getPassword()))
			return user;
		else
			return null;
	}
	
	
	public void updateUser(Register user) {
		loginRepository.updateUser(user);		
	}
	public void registerUser(Register user)
	{
		loginRepository.addUser(user);
	}
	
	public Register getUser(String emailid)
	{
		return loginRepository.getUser(emailid);
	}
	
	public List<Register> viewAll()
	{
		List<Register> vechicleList=loginRepository.viewAll();
				return vechicleList;
	}
	
}
