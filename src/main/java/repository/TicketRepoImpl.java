package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import bean.IssuedTkt;
import bean.Staff;

public class TicketRepoImpl implements TicketRepo{



	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	
	
	@Override
	public void generateTicket(IssuedTkt it) {
		entityManager.persist(it);
	}

	@Override
	public void updateTicket(IssuedTkt it) {
		entityManager.merge(it);
	}

	@Override
	public void deleteTicket(IssuedTkt it) {
		
/*		entityManager.remove(entityManager.find(IssuedTkt.class, it.getTktId()));
*/	
		Query query = entityManager.createNativeQuery("Delete from IssuedTkt where tktId=?");
	    query.setParameter(1, it.getTktId());
	    query.executeUpdate();}

	@Override
	public IssuedTkt viewTicket(int ticketId) {
		return entityManager.find(IssuedTkt.class, ticketId);
	}

	@Override
	public List<IssuedTkt> viewAllTicket() {

		List<IssuedTkt> issuedTkt = entityManager.createQuery("SELECT i FROM IssuedTkt i").getResultList();
		return issuedTkt;
	}

}
