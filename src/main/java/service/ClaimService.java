package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.Claim;
import repository.ClaimRepo;

@Service
@EnableTransactionManagement
public class ClaimService {

	@Autowired
	ClaimRepo claimRepo;
	
	@Transactional
	public void addClaim(Claim c) {
		claimRepo.addClaim(c);
	}

	@Transactional
	public void updateClaim(Claim c) {
		claimRepo.updateClaim(c);
	}

	@Transactional
	public void deleteClaim(Claim c) {
		claimRepo.deleteClaim(c);	
		}

	@Transactional
	public Claim viewClaim(int ClaimId) {
		return claimRepo.viewClaim(ClaimId);
	}

	@Transactional
	public List<Claim> viewAll() {
	return	claimRepo.viewAll();
	}

}
