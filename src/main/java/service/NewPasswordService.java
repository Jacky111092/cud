package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import repository.LoginRepository;

@Service
@EnableTransactionManagement
public class NewPasswordService {
	
	/*@Autowired
	private LoginRepository loginRepository;
	
	
	public void setnewpassword(RegisterBean tp,String password) {
		
	RegisterBean rb=loginRepository.getUsers(tp);
	rb.setPassword(password);
	loginRepository.updateuser(rb);
	
		
	}
*/
}
