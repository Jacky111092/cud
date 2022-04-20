package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import bean.Staff;

public class StaffRepoImpl implements StaffRepo{

	
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	
	@Override
	public void addStaff(Staff s) {
		entityManager.persist(s);
	}

	@Override
	public void updateStaff(Staff s) {
		entityManager.merge(s);
	}

	@Override
	public void deleteStaff(Staff s) {
		entityManager.remove(s);
	}

	@Override
	public Staff viewStaff(String staffId) {
		return entityManager.find(Staff.class, staffId);
	}

	@Override
	public List<Staff> viewAll() {
		List<Staff> staff = entityManager.createQuery("SELECT s FROM Staff s").getResultList();
		return staff;
	}

}
