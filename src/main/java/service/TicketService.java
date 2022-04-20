package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.IssuedTkt;
import repository.TicketRepo;

@Service
@EnableTransactionManagement
public class TicketService {

	@Autowired
	TicketRepo ticketRepo;
	
	@Transactional
	public void generateTicket(IssuedTkt it) {
		ticketRepo.generateTicket(it);
	}

	@Transactional
	public void updateTicket(IssuedTkt it) {
		ticketRepo.updateTicket(it);
	}

	@Transactional
	public void deleteTicket(IssuedTkt it) {
		
		ticketRepo.deleteTicket(it);
	}

	@Transactional
	public IssuedTkt viewTicket(int ticketId) {
		return ticketRepo.viewTicket(ticketId);
	}

	@Transactional
	public List<IssuedTkt> viewAllTicket() {

		return ticketRepo.viewAllTicket();	 
	}
}
