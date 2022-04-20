package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Admin;
import bean.Staff;

public class AdminRepoImpl implements AdminRepo{
	
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;

	public AdminRepoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void addSubAdmin(Admin a) {
		// TODO Auto-generated method stub
		entityManager.persist(a);
	}

	@Override
	public void updateSubAdmin(Admin a) {
		// TODO Auto-generated method stub
		entityManager.merge(a);
		
	}

	@Override
	public Admin viewAdmin(String adminId) {
		// TODO Auto-generated method stub
		return entityManager.find(Admin.class, adminId);
	}

	@Override
	public List<Admin> viewAllSubAdmins() {
		// TODO Auto-generated method stub
		List<Admin> subadmin = entityManager.createQuery("SELECT s FROM Admin s").getResultList();
		return subadmin;	}

}
