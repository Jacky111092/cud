package repository;

import java.util.List;

import bean.Admin;

public interface AdminRepo {

	void addSubAdmin(Admin a);
	void updateSubAdmin(Admin a);
	public Admin viewAdmin(String adminId);
	List<Admin> viewAllSubAdmins();
}
