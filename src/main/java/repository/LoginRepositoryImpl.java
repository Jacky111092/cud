package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

import bean.Admin;
import bean.Login;
import bean.Register;
import bean.Vehicle;

public class LoginRepositoryImpl implements LoginRepository
{
	
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	
	
	@Override
	@Transactional
	public Register getUser(Login login) {
			return entityManager.find(Register.class, login.getEmailid());	 
	}
	
	@Override
	@Transactional
	public void updateUser(Register user) {
		entityManager.merge(user);		
	}

	@Override
	@Transactional
	public void addUser(Register user) {
		entityManager.merge(user);		
	}

	@Override
	@Transactional
	public Register getUser(String emailid) {

		return entityManager.find(Register.class,emailid);	 
		
	}

	@Override
	public List<Register> viewAll() {
		 List<Register> vechicleList = entityManager.createQuery("SELECT r FROM Register r").getResultList();
		  return vechicleList;
	}
	@Override
	@Transactional
	public Admin getAdmin(String emailid) {
System.out.println(emailid);
		return entityManager.find(Admin.class,emailid);	 
		
	}
	
}
