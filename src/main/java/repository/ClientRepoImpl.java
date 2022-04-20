package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Admin;
import bean.Client;

public class ClientRepoImpl implements ClientRepo{
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	
	public ClientRepoImpl() {
		
	}
	
	@Override
	public void addClient(Client c) {
		// TODO Auto-generated method stub
		entityManager.persist(c);
		
	}

	@Override
	public void updateClient(Client c) {
		// TODO Auto-generated method stub
		entityManager.merge(c);
	}

	@Override
	public Client viewClient(int clientid) {
		// TODO Auto-generated method stub
		try
		{
			return entityManager.find(Client.class, clientid);
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}

	@Override
	public List<Client> viewAllClients() {
		// TODO Auto-generated method stub
		List<Client> clientlist = entityManager.createQuery("SELECT s FROM Client s where s.record_status='A'").getResultList();
		return clientlist;
	}
	@Transactional
	@Override
	public void deleteClient(Client c) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Client c set c.record_status= :status"
												+" where c.work_emailid = :emailid");
		query.setParameter("status", "D");
		query.setParameter("emailid", c.getWork_emailid());
		int rowsupdated = query.executeUpdate();
		
	}

	@Override
	public Client viewClientByMail(String work_emailid) {
		// TODO Auto-generated method stub
		try
		{
		Query query = entityManager.createQuery("SELECT s FROM Client s where s.work_emailid = :work_emailid and s.record_status='A'");
		query.setParameter("work_emailid", work_emailid);
		return (Client) query.getSingleResult();
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}

	@Override
	public Client viewClientByCompanyName(String company_name) {
		// TODO Auto-generated method stub
		try
		{
		Query query = entityManager.createQuery("SELECT s FROM Client s where s.company_name = :company_name and s.record_status='A'");
		query.setParameter("company_name", company_name);
		return (Client) query.getSingleResult();
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}

	@Override
	public Client viewClientByPhoneNo(Client client) {
		// TODO Auto-generated method stub
		try
		{
			Query query = entityManager.createQuery("SELECT s FROM Client s where s.phone_no = :phone_no and s.record_status='A'");
			query.setParameter("phone_no", client.getPhone_no());
			return (Client) query.getSingleResult();
		}
		catch(NoResultException nre)
		{
			return null;
		}
		
	}

	@Override
	public Client viewClientByMailPass(Client client) {
		// TODO Auto-generated method stub
		try
		{
		Query query = entityManager.createQuery("SELECT s FROM Client s where s.work_emailid = :work_emailid and s.password = :password and s.record_status='A'");
		query.setParameter("work_emailid", client.getWork_emailid());
		query.setParameter("password", client.getPassword());
		return (Client) query.getSingleResult();
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}

}
