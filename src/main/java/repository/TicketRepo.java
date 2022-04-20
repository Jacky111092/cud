package repository;

import java.util.List;

import bean.IssuedTkt;
import bean.Staff;

public interface TicketRepo {
	

	void generateTicket(IssuedTkt it);
	void updateTicket(IssuedTkt it);
	void deleteTicket(IssuedTkt it);
	IssuedTkt viewTicket(int ticketId);
	List<IssuedTkt> viewAllTicket();

}
