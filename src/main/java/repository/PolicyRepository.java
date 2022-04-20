package repository;

import java.util.List;
import java.util.Set;

import bean.Policy;
import bean.Register;


public interface PolicyRepository {
	
	public void createPolicy(Policy policy);
	public List<Policy> getAllPolicy();
	public Policy updatePolicy(Policy policy);
	Policy view(String policyId);
/*	Set<Policy> claim(Set<Policy> p2);
*//*	Policy getPolicy(Register user);
*/	/*public void deletePolicy(Policy policy);*/
	Set<Policy> getPolicy(String email);
	List<Policy> viewAll();
}
