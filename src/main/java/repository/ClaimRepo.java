package repository;

import java.util.List;

import bean.Claim;

public interface ClaimRepo {

	void addClaim(Claim c);
	void updateClaim(Claim c);
	void deleteClaim(Claim c);
	public Claim viewClaim(int ClaimId);
	List<Claim> viewAll();
}
