package controller;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.Claim;
import bean.Policy;
import bean.Register;
import bean.VehicleRegistry;
import service.ClaimService;
import service.LoginService;
import service.PolicyService;

@Controller
public class PolicyController {

	@Autowired
	private PolicyService policyservice;

	@Autowired
	private LoginService loginService;

	@Autowired
	private ClaimService claimService;
	@RequestMapping("/buyplan.do")
	public ModelAndView buyplan(VehicleRegistry regId, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		VehicleRegistry vehiclereg;
		try {
			vehiclereg = policyservice.getVehicleDetails(regId);
		
		session.setAttribute("rtoObject", vehiclereg);
		session.setAttribute("vehicleDetails", vehiclereg.getVb());
		String usertype=(String) session.getAttribute("usertype");
		if(usertype.equals("newuser"))
		{
			mav.setViewName("quote");

		}
		else if(usertype.equals("existinguser"))
		{
			mav.setViewName("quote2");

		}
		return mav;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			mav.addObject("error","Not a registered vehicle");
			mav.setViewName("Buyplanbike2");
			return mav;
		}
	}

	@RequestMapping("/getquote.do")
	public ModelAndView getplan(int numberOfYears, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.setAttribute("numberOfYears", numberOfYears);
		String usertype=(String) session.getAttribute("usertype");
		if(usertype.equals("newuser"))
		{
			mav.setViewName("quotationwala");

		}
		else if(usertype.equals("existinguser"))
		{
			mav.setViewName("quotationwala2");

		}
		return mav;
	}

	@RequestMapping("/payment.do")
	public ModelAndView payment(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		LocalDate startdate = LocalDate.now();
		LocalDate enddate;
		int numberOfYears = (int) session.getAttribute("numberOfYears");
		enddate = startdate.plusYears(numberOfYears);
		Register user = (Register) session.getAttribute("user");
		VehicleRegistry vehicleReg = (VehicleRegistry) session.getAttribute("rtoObject");
		Policy policy = new Policy();
		try{
		policy.setPolicyId(vehicleReg.getRegId() + "MIME");
		/*
		 * policy.setPolicyName(vehicleReg.getVb().getVehicleType());
		 * policy.setVehicleRegistry(vehicleReg);
		 * policy.setPolicyPremium(vehicleReg.getVb().getInsurancePremiumAmount() *
		 * numberOfYears);
		 */
		policy.setStartdate(startdate);
		policy.setEnddate(enddate);
		policy.setUser(user);
		Set<Policy> policySet = user.getPolicy();
		policySet.add(policy);
		user.setPolicy(policySet);
		session.setAttribute("policy", policy);
		loginService.updateUser(user);
		session.setAttribute("policyPurchased", policy);
		String usertype = "existinguser";
		session.setAttribute("usertype", usertype);
		
		mav.setViewName("sucessfulpayment");
		return mav;
	
		}
		catch(Exception e) {
			mav.addObject("exists", "Policy already bought for this vehicle");
			mav.setViewName("quotationwala");	
			return mav;
		}
		
		

		
		
		

	}

	@RequestMapping("/policy.do")
	public ModelAndView viewpolicy(HttpSession session) 
	{
		Register user = (Register) session.getAttribute("user");
		Set<Policy> p2 = policyservice.getAllpolicy(user);
		session.setAttribute("Policy_Id", p2);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("policydetails");
		return mav;
	}

	@RequestMapping("/renew.do")
	public ModelAndView renewpolicy(HttpSession session) {
		Register user = (Register) session.getAttribute("user");
		Set<Policy> p2 = policyservice.getAllpolicy(user);
		ModelAndView mav = new ModelAndView();
		session.setAttribute("Policy", p2);
		mav.setViewName("Renew2");
		return mav;
	}
	
	@RequestMapping("/renew1.do")
	public ModelAndView renewpolicyfinal(String policyId,int yo,HttpSession session ) {
	Policy policy=policyservice.viewPolicy(policyId);
		LocalDate l = policy.getEnddate();
			l = l.plusYears(yo);
			policy.setEnddate(l);
			policyservice.updatePolicy(policy);
			return  renewpolicy(session);
		
	}
	
	
	@RequestMapping("/getClaim.do")
	public ModelAndView getClaim(HttpSession session) {
		Register user = (Register) session.getAttribute("user");
		Set<Policy> policy = policyservice.getAllpolicy(user);
		List<Claim> claim=claimService.viewAll();
		Iterator<Policy> iterator = policy.iterator();
		while ( iterator.hasNext()) {
			Policy p=iterator.next();
			for(Claim c:claim)
			{
				if(c.getPolicy().getPolicyId().equals(p.getPolicyId())&&!c.getStatus().equals("Approved"))
				{
					iterator.remove();
					break;
				}

			}
			
		}
		ModelAndView mav = new ModelAndView();
		session.setAttribute("Policy", policy);
		mav.setViewName("Claim2");
		return mav;
	}

	@RequestMapping("/Claim.do")
	public ModelAndView claim(String desc,String policyId,HttpSession session) {
		Policy policy=policyservice.viewPolicy(policyId);
		Claim claim=new Claim();
		claim.setPolicy(policy);
		claim.setDescription(desc);
		claimService.updateClaim(claim);
		return getClaim(session);
	}
	
	@RequestMapping("/trackStatus.do")
	public ModelAndView trackStatus(HttpSession session)
	{
		Register user = (Register) session.getAttribute("user");
		List<Claim> claim=claimService.viewAll();
		Iterator<Claim> iterator = claim.iterator();
		while ( iterator.hasNext()) {
			Claim c=iterator.next();
				if(!c.getPolicy().getUser().getEmailid().equals(user.getEmailid()))
				{
					iterator.remove();
				}

			}
		ModelAndView mav = new ModelAndView();
		session.setAttribute("claim", claim);
		mav.setViewName("Trackstatus2");
		return mav;
	
	
	}
}