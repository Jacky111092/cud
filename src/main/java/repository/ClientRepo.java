package repository;

import java.util.List;

import bean.Client;

public interface ClientRepo {
	
	void addClient(Client c);
	void updateClient(Client c);
	public Client viewClient(int client_id);
	List<Client> viewAllClients();
	void deleteClient(Client c);
	Client viewClientByMail(String work_emailid);
	Client viewClientByCompanyName(String company_name);
	Client viewClientByPhoneNo(Client client);
	Client viewClientByMailPass(Client client);

}
