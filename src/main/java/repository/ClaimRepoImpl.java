package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import bean.Register;
import bean.Claim;

public class ClaimRepoImpl implements ClaimRepo{
	
	
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	
	@Override
	public void addClaim(Claim c) {
		entityManager.persist(c);
	}

	@Override
	public void updateClaim(Claim c) {
		entityManager.merge(c);

	}

	@Override
	public void deleteClaim(Claim c) {
		entityManager.remove(c);
	}

	@Override
	public Claim viewClaim(int ClaimId) {
		return entityManager.find(Claim.class, ClaimId);
	}

	@Override
	public List<Claim> viewAll() {
		List<Claim> Claim = entityManager.createQuery("SELECT c FROM Claim c").getResultList();
		return Claim;
	}

}
