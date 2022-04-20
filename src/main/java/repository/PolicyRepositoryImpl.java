package repository;

import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

import bean.Policy;
import bean.Register;

public class PolicyRepositoryImpl implements PolicyRepository{
	
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	
	
	@Override
	@Transactional
	public Policy updatePolicy(Policy policy) {
		entityManager.merge(policy);
		return policy;
			
	}

	
	@Override
	public void createPolicy(Policy policy) {
		entityManager.persist(policy);
	}



	/*@Override
	public void deletePolicy(Policy policy) {
		entityManager.remove(policy);
	}
*/

	@Override
	public List<Policy> getAllPolicy() {
		List<Policy> vechicleList = entityManager.createQuery("SELECT v FROM VehicleBean v").getResultList();
		  return vechicleList;

	}


	@Override
	public Policy view(String policyId) {
		// TODO Auto-generated method stub
		return entityManager.find(Policy.class, policyId);
	}

/*
	@Override
	public Set<Policy> claim(Set<Policy> p2) {
		// TODO Auto-generated method stub
		return null;
	}*/
	
/*	@Override
	public Set<Policy> claim(Set<Policy> p2) {
		for (Policy policyBean : p2) {
			entityManager.merge(policyBean);
		}

		return p2;
	}*/
	@Override
	@Transactional
	public Set<Policy> getPolicy(String email) {

		Register p = entityManager.find(Register.class, email);
		Set<Policy> pb1 = p.getPolicy();
		
		for (Policy policyBean : pb1) {
			System.out.println(policyBean.getPolicyId());

			System.out.println(policyBean.getEnddate());
		}

		// PolicyBean p = entityManager.find(PolicyBean.class,pb.getUser());
		return pb1;

	}
	
	@Override
	public List<Policy> viewAll() {
		 List<Policy> policyList = entityManager.createQuery("SELECT p FROM Policy p").getResultList();
		  return policyList;
	}

}
