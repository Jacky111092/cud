package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import bean.CustomerQueries;
import bean.Vehicle;

public class CustomerQueryRepoImpl implements CustomerQueryRepo{

	
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	
	@Override
	public void createQuery(CustomerQueries customerQuery)
	{
		entityManager.persist(customerQuery);
	}

	@Override
	public List<CustomerQueries> viewAll() {		
		  List<CustomerQueries> queryList = entityManager.createQuery("SELECT v FROM CustomerQueries v").getResultList();
		  return queryList;

	}

	@Override
	public CustomerQueries view(int queryid) {
		return entityManager.find(CustomerQueries.class, queryid);
	}

	@Override
	public void updateQuery(CustomerQueries customerQuery) {
		entityManager.merge(customerQuery);
	}
}
