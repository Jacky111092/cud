package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.Login;
import bean.Admin;
import repository.AdminRepo;
import repository.StaffRepo;

@Service
@EnableTransactionManagement
public class AdminService {
	
	@Autowired
	private AdminRepo adminRepo;

	public AdminService() {
		// TODO Auto-generated constructor stub
	}
	
	@Transactional
	public void addSubAdmin(Admin a) {
		System.out.println(a.getEmailid());
		System.out.println(a.getUsername());
		adminRepo.addSubAdmin(a);
	}
	
	@Transactional
	public void updateSubAdmin(Admin a) {
		adminRepo.updateSubAdmin(a);
	}
	
	@Transactional
	public Admin viewAdmin(String adminId) {
		return adminRepo.viewAdmin(adminId);
	}
	
	/*
	 * public Staff validateStaff(Login staffLogin) { Staff
	 * staff=staffRepo.viewStaff(staffLogin.getEmailid()); if(staff==null) { return
	 * null; } else if(staff.getPassword().equals(staffLogin.getPassword())) {
	 * return staff; } else { return null; }
	 * 
	 * }
	 */
	
	 public List viewAllSubAdmins() { List<Admin> subAdminList=adminRepo.viewAllSubAdmins();
	  
	  for(Admin subadmin:subAdminList) { System.out.println(subadmin); } return subAdminList; }
	 

}
