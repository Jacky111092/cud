package repository;

import java.util.List;

import bean.CustomerQueries;

public interface CustomerQueryRepo {

	public void createQuery(CustomerQueries customerQuery);
	CustomerQueries view(int queryid);
	List<CustomerQueries> viewAll();
	void updateQuery(CustomerQueries customerQuery);
}
