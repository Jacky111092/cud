package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.Admin;
import bean.Client;
import repository.ClientRepo;

@Service
@EnableTransactionManagement
public class ClientService {
	
	@Autowired
	private ClientRepo clientRepo;
	
	public ClientService() {
		
	}
	
	@Transactional
	public void addClient(Client c) {
		clientRepo.addClient(c);
	}
	
	@Transactional
	public void updateClient(Client c) {
		clientRepo.updateClient(c);
	}
	
	@Transactional
	public Client viewClient(int client_id) {
		return clientRepo.viewClient(client_id);
	}
	
	/*
	 * public Staff validateStaff(Login staffLogin) { Staff
	 * staff=staffRepo.viewStaff(staffLogin.getEmailid()); if(staff==null) { return
	 * null; } else if(staff.getPassword().equals(staffLogin.getPassword())) {
	 * return staff; } else { return null; }
	 * 
	 * }
	 */
	
	 public List<Client> viewAllClients() { List<Client> clientList=clientRepo.viewAllClients();
	  
	  for(Client client:clientList) { System.out.println("Company name :"+client.getCompany_name()); } return clientList; }
	 
	 public void deleteClient(Client c) {
		 clientRepo.deleteClient(c);
	 }

	public Client viewClientByMail(String work_emailid) {
		// TODO Auto-generated method stub
		
		Client user= clientRepo.viewClientByMail(work_emailid);
		
		if (user == null)
			return null;
		if (work_emailid.equals(user.getWork_emailid()))
			return user;
		else
			return null;
	}

	public Client viewClientByCompanyName(String company_name) {
		// TODO Auto-generated method stub
		return clientRepo.viewClientByCompanyName(company_name);
	}

	public Client viewClientByPhoneNo(Client client) {
		// TODO Auto-generated method stub
		return clientRepo.viewClientByPhoneNo(client);
	}

	public Client viewClientByMailPass(Client client) {
		// TODO Auto-generated method stub
		Client user= clientRepo.viewClientByMailPass(client);
		
		if (user == null)
			return null;
		else
			return user;
	}
	 

}
