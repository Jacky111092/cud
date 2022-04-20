package repository;

import java.util.List;

import bean.Admin;
import bean.Login;
import bean.Register;
import bean.Vehicle;

public interface LoginRepository {
	public Register getUser(Login login);
	public void addUser(Register user);
	public void updateUser(Register user); 
	Register getUser(String emailid);
	public List<Register> viewAll();
	Admin getAdmin(String emailid);


}
