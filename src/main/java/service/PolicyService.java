package service;


import java.time.LocalDate;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.Policy;
import bean.Policy;
import bean.Register;
import bean.VehicleRegistry;
import repository.LoginRepository;
import repository.PolicyRepository;
import repository.RTORepository;


@Service
@EnableTransactionManagement
public class PolicyService {
	
	@Autowired
	private RTORepository rto;
	
	@Autowired
	private PolicyRepository policyRepo;
	
	@Autowired
	private LoginRepository loginRepository;

	@Transactional
	public VehicleRegistry getVehicleDetails(VehicleRegistry regId)throws Exception {
		return rto.getVehicle(regId);
		
	}

	@Transactional
	public void createPolicy(Policy policy)
	{
		policyRepo.createPolicy(policy);
	}

	@Transactional
	public Policy viewPolicy(String policyId)
	{
		return policyRepo.view(policyId);
	}
	@Transactional
	public List<Policy> getAllpolicy() {
		return policyRepo.getAllPolicy();
	}
	@Transactional
	public Set<Policy> getAllpolicy(Register user) {
	 Register updateuser=loginRepository.getUser(user.getEmailid());
	 
	return updateuser.getPolicy();
	}
	
	
	public void updatePolicy(Policy policy)
	{
		policyRepo.updatePolicy(policy);
	}
	/*@Transactional
	public Set<Policy> updateDate(String policyId,VehicleRegistry rto,int yo, Set<Policy> p3) {
		return p3;
		LocalDate l = null;		
		for (Policy Policy : p3) {
			l = Policy.getEnddate();
			
	
		System.out.println("asldfjjflkjjf;ljl;fjf");
	System.out.println(Policy.getPolicyId());
		if(Policy.getPolicyId().equals(policyId)) {
			l = l.plusYears(yo);
			Policy.setEnddate(l);

			p3.add(Policy);
		}
			
			
	
		
		}
		
		
		System.out.println(l);
		policyRepo.claim(p3);
		return p3;
	}
	*/
	public Set<Policy> getpolicy(String emailid) {
		// TODO Auto-generated method stub
		return policyRepo.getPolicy(emailid);
		
	}
	
	

	public List<Policy> viewAll() {
		return policyRepo.viewAll();
	}
}
