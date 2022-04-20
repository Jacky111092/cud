package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.Claim;
import bean.CustomerQueries;
import bean.IssuedTkt;
import bean.Login;
import bean.Register;
import bean.Staff;
import service.ClaimService;
import service.CustomerQueryService;
import service.LoginService;
import service.StaffService;
import service.TicketService;

@Controller
public class StaffController {

	@Autowired
	CustomerQueryService customerQueryService;


	@Autowired
	ClaimService claimService;
	
	@Autowired
	StaffService staffService;
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private TicketService ticketService;
	@RequestMapping("/staffLogin.do")
	public ModelAndView addStaff(Login staffLogin,HttpSession session) {
		ModelAndView mav =new ModelAndView();
		Staff staff=staffService.validateStaff(staffLogin);
		if(staff!= null)
		{
			mav.addObject("userList", loginService.viewAll());
			mav.setViewName("StaffDashboard");
			session.setAttribute("staff",staff);
		}
		else
		{
			mav.addObject("invalidStaffMessage","Invalid EmailID/Password");
			mav.setViewName("staff");
		}
		return mav;
	}
	
	

	@RequestMapping("/StaffDashboard.do")	
	public ModelAndView getUserCall(HttpSession session)
	{
		ModelAndView mav =new ModelAndView();
		mav.addObject("userList", loginService.viewAll());
		mav.setViewName("StaffDashboard");
		return mav;
	}

	@RequestMapping("/getUserDetails.do")	
	public ModelAndView getUser(HttpSession session)
	{
		ModelAndView mav =new ModelAndView();
		List<Register> regList=loginService.viewAll();
		session.setAttribute("userList", regList);
		mav.setViewName("CustomerDetails");
		return mav;
	}
	@RequestMapping("/getClaimsDetails.do")	
	public ModelAndView getClaimDetails(HttpSession session)
	{
		ModelAndView mav =new ModelAndView();
		mav.addObject("claimList",claimService.viewAll());
		mav.setViewName("IssueTicket");
		return mav;
	}
	
		@RequestMapping("/issueTicketForm.do")	
	public ModelAndView issueTicketForm(int claimId,HttpSession session)
	{
		ModelAndView mav =new ModelAndView();
		Claim claim=claimService.viewClaim(claimId);
		mav.addObject("claim",claim);
		mav.setViewName("IssueClaimTicket");
		return mav;
	}
		
			@RequestMapping("/issueQueryTicketForm.do")	
		public ModelAndView issueQueryTicket(int queryId,HttpSession session)
		{
			ModelAndView mav =new ModelAndView();
			CustomerQueries query=customerQueryService.view(queryId);
			mav.addObject("query",query);
			mav.setViewName("IssueQueryTicket");
			return mav;
		}
		@RequestMapping("/issueTicket.do")	
		public ModelAndView issueTicket(int claimId,String description,HttpSession session)
		{
			ModelAndView mav =new ModelAndView();
			Claim claim=claimService.viewClaim(claimId);
			claim.setStatus("Ticket Generated");
			claimService.updateClaim(claim);
			IssuedTkt it=new IssuedTkt();
			it.setClaim(claim);
			it.setDescrp(description);
			it.setStaff((Staff)session.getAttribute("staff"));
			ticketService.generateTicket(it);
			mav.addObject("claimList",claimService.viewAll());
			mav.setViewName("IssueTicket");
			return mav;
		}
		@RequestMapping("/issueQueryTicket.do")	
		public ModelAndView issueQueryTicket(int queryid,String description,HttpSession session)
		{
			ModelAndView mav =new ModelAndView();
			CustomerQueries query=customerQueryService.view(queryid);
			query.setStatus("Ticket Generated");
			customerQueryService.updateQuery(query);
			IssuedTkt it=new IssuedTkt();
			it.setCustomerQueries(query);
			it.setDescrp(description);
			it.setStaff((Staff)session.getAttribute("staff"));
			ticketService.generateTicket(it);
			mav.addObject("claimList",claimService.viewAll());
			mav.setViewName("CustomerQueries");
			return mav;
		}
		@RequestMapping("/callRequestDone.do")
		public ModelAndView callRequestDone(HttpSession session,String emailid)
		{
			Register user=loginService.getUser(emailid);
			user.setCallBackrequest(false);
			loginService.updateUser(user);
			return getUserCall(session);
		}
		@RequestMapping("/staffLogout.do") 
		public ModelAndView logOut(HttpSession session)
		{
			ModelAndView mav=new ModelAndView();
			session.invalidate();
			mav.setViewName("index");
			return mav;
		}
		
		
		
		@RequestMapping("/getQueriesDetails.do")	
		public ModelAndView getQueriesDetails(HttpSession session)
		{
			ModelAndView mav =new ModelAndView();
			mav.addObject("queryList",customerQueryService.viewAll());
			mav.setViewName("CustomerQueries");
			return mav;
		}
		
		
		
}
