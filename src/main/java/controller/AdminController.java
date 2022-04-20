package controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bean.Admin;
import bean.Claim;
import bean.CustomerQueries;
import bean.IssuedTkt;
import bean.Policy;
import bean.Register;
import bean.Staff;
import service.AdminService;
import service.ClaimService;
import service.CustomerQueryService;
import service.LoginService;
import service.PolicyService;
import service.StaffService;
import service.TicketService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	StaffService staffService;
	
	@Autowired
	CustomerQueryService queryService;
	
	@Autowired
	ClaimService claimService;
	
	@Autowired
	LoginService loginService;
	
	@Autowired
	TicketService ticketService;
	@Autowired
	PolicyService policyService;
	
	
	@RequestMapping("/admin.do")
	public ModelAndView checkAdminLogin(Admin login, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println(login.getEmailid());
		Admin user = loginService.validateAdmin(login);
		if(user == null) {
			mav.addObject("invalid", "Invalid User ID/Password");
			mav.setViewName("adminlogin");
			
		} else {
		
		
		
		mav.setViewName("Admin");
		
		}
	
		session.setAttribute("user",user );
			
		
		
		return mav;
	}
	
	@RequestMapping("/addSubAdmin.do")
	public ModelAndView addSubAdmin(Admin subadmin, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		adminService.addSubAdmin(subadmin);
		mav.addObject("allAdminList", adminService.viewAllSubAdmins());
		mav.setViewName("addsubadmin");
		return mav;
	}
	
	@RequestMapping("/addStaff.do")
	public ModelAndView addStaff(Staff staff, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		staffService.addStaff(staff);
		mav.setViewName("StaffRegistration");
		return mav;
	}
	
	@RequestMapping("getTicket.do")
	public ModelAndView getAllTicket(HttpSession session)
	{
		ModelAndView mav =new ModelAndView();
		mav.addObject("ticketList", ticketService.viewAllTicket());
		mav.setViewName("TicketApproval");
		return mav;
	}
	@RequestMapping("ticketApprove.do")
	public ModelAndView approveTicket(String ticketID,HttpSession session)
	{
		IssuedTkt ticket=ticketService.viewTicket(Integer.parseInt(ticketID));
		Claim claim=ticket.getClaim();
		CustomerQueries query=ticket.getCustomerQueries();
		if(claim!=null)
		{
			claim.setStatus("Approved");
			claimService.updateClaim(claim);
		}
		else if(query!=null)
		{
			query.setStatus("Solved");
			queryService.updateQuery(query);
		}
		ticketService.deleteTicket(ticket);
		return getAllTicket(session);
	}
	@RequestMapping("getUser.do")
	public ModelAndView getUser(HttpSession session)
	{
		ModelAndView mav =new ModelAndView();
		List<Register> regList=loginService.viewAll();
		session.setAttribute("userList", regList);
		mav.setViewName("ValidateUser");
		return mav;
	}
	@RequestMapping("validateUser.do")
	public ModelAndView validateUser(String emailid,HttpSession session)
	{
		Register user=loginService.getUser(emailid);
		user.setStatus(true);
		loginService.updateUser(user);
		return getUser(session);
	}

	@RequestMapping("customerdetails.do")
	public ModelAndView  customerdetails(HttpSession session) 
	{
		ModelAndView mav =new ModelAndView();
		List<Register> regList=loginService.viewAll();
		session.setAttribute("userList", regList);
		mav.setViewName("ReportGeneration");
		return mav;
	}
	@RequestMapping(value = "/downloadPDF.do", method = RequestMethod.GET)
    public ModelAndView downloadExcell(String emailid,HttpSession session) {
		System.out.println(emailid);
		Set<Policy> policy = policyService.getpolicy(emailid);
		//session.setAttribute("viewpdf",pdf );
		for (Policy policyBean : policy) {
			//System.out.println(policyBean.getClaimStatus());
			System.out.println(policyBean.getStartdate());
		}
		
		
				return new ModelAndView("pdfView","viewpdf",policy);
			}
	
	@RequestMapping(value = "/downloadPDF1.do", method = RequestMethod.GET)
    public ModelAndView downloadExcellForAll(HttpSession session) {
		
		List<Policy> policy =  policyService.viewAll();
		//session.setAttribute("viewpdf",pdf );
		for (Policy policyBean : policy) {
			//System.out.println(policyBean.getClaimStatus());
			System.out.println(policyBean.getStartdate());
		}
		
		
				return new ModelAndView("pdfViewAll","viewpdfAll",policy);
			}

	
	
	@RequestMapping("/adminLogout.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("adminlogin");
		return mav;
		
		
	}
	
	
	
	
	
}
	
