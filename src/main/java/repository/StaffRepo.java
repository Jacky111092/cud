package repository;

import java.util.List;

import bean.Staff;

public interface StaffRepo {

	void addStaff(Staff s);
	void updateStaff(Staff s);
	void deleteStaff(Staff s);
	public Staff viewStaff(String staffId);
	List<Staff> viewAll();
}
