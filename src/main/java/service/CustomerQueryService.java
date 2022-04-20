package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.CustomerQueries;
import repository.CustomerQueryRepoImpl;


@Service
@EnableTransactionManagement
public class CustomerQueryService {

	@Autowired
	CustomerQueryRepoImpl cqr;
	@Transactional
	public void createQuery(CustomerQueries customerQuery)
	{
		cqr.createQuery(customerQuery);	
		
	}
	
	@Transactional
	public List<CustomerQueries> viewAll() {		
		 return cqr.viewAll();

	}
	
	@Transactional
	public void updateQuery(CustomerQueries customerQuery)
	{
		cqr.updateQuery(customerQuery);
	}

	@Transactional
	public CustomerQueries view(int queryId)
	{
		return cqr.view(queryId);
	}
}
