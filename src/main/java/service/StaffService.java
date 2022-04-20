package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.Login;
import bean.Staff;
import repository.StaffRepo;

@Service
@EnableTransactionManagement
public class StaffService {


	
		@Autowired
		private StaffRepo staffRepo;
		
		@Transactional
		public void addStaff(Staff s) {
			staffRepo.addStaff(s);
		}
		
		@Transactional
		public void updateStaff(Staff s) {
			staffRepo.updateStaff(s);
		}
		
		@Transactional
		public Staff viewStaff(String staffId) {
			return staffRepo.viewStaff(staffId);
		}
		
		public Staff validateStaff(Login staffLogin)
		{
			Staff staff=staffRepo.viewStaff(staffLogin.getEmailid());
			if(staff==null)
			{
				return null;
			}
			else if(staff.getPassword().equals(staffLogin.getPassword()))
			{
				return staff;
			}
			else
			{
				return null;
			}
			
		}
		public	List viewAllVehicle()
		{
			List<Staff> staffList=staffRepo.viewAll();
			
			for(Staff staff:staffList)
			{
				System.out.println(staff);
			}
			return staffList;
		}

	}


