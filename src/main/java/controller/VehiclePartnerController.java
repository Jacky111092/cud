package controller;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import bean.Admin;
import bean.Campaign;
import bean.Claim;
import bean.Client;
import bean.CustomerQueries;
import bean.IssuedTkt;
import bean.Policy;
import bean.Register;
import bean.Staff;
import bean.VehiclePartner;
import service.AdminService;
import service.CampaignService;
import service.ClaimService;
import service.ClientService;
import service.CustomerQueryService;
import service.LoginService;
import service.PolicyService;
import service.StaffService;
import service.TicketService;
import service.VehiclePartnerService;
import service.VehicleService;

@Controller
public class VehiclePartnerController {
	@Autowired
	VehiclePartnerService vehiclePartnerService;
	
	@Autowired
	VehicleService vservice;
	
	@RequestMapping("/addVehiclePartner.do")
	public ModelAndView addVehiclePartner(VehiclePartner vehiclePartner, HttpSession session) {
		System.out.println("asdasfdfdwfdfw"+vehiclePartner.getOwner_name());
		ModelAndView mav =new ModelAndView();
		vehiclePartner.setRecord_status("A");
		vehiclePartner.setStatus("Pending Approval");
		vehiclePartner.setVehicle_count(0);
		vehiclePartnerService.addVehiclePartner(vehiclePartner);
		mav.addObject("allVehiclePartnerList", vehiclePartnerService.viewAllVehiclePartner());
		mav.setViewName("AddVehiclePartner");
		return mav;
	}
	
	@RequestMapping("/viewAllVehiclePartner.do")
	public ModelAndView viewAllVehiclePartner(VehiclePartner vehiclePartner, HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		/*
		 * ArrayList<ArrayList<String>>
		 * countByCompanyName=vehiclePartnerService.getVehicleCount();
		 * System.out.println("Type of vehicle count  "+countByCompanyName.getClass());
		 * 
		 * for (ArrayList<String> row : countByCompanyName) { for (String element : row)
		 * { System.out.print("Vehicle count elements "+element + " "); }
		 * System.out.println(); }
		 */
		//System.out.println("Vehicle Countttt"+countByCompanyName.get(0).length());
		/*
		 * for (String count:countByCompanyName) {
		 * System.out.println("Vehicle Countttt"+count); }
		 */
		mav.addObject("allVehiclePartnerList", vehiclePartnerService.viewAllVehiclePartner());
		mav.setViewName("ViewAllVehiclePartner");
		return mav;
	}
	
	@RequestMapping(value="/editVehiclePartner.do", params = "edit") public ModelAndView
	  editVehiclePartner(VehiclePartner vehiclePartner, HttpSession session) {
	  
	  ModelAndView mav =new ModelAndView(); mav.addObject("VehiclePartnerDetails",
			  vehiclePartnerService.viewVehiclePartner(vehiclePartner.getVehicle_partner_id()));
	  mav.setViewName("EditVehiclePartner"); return mav; }
	  
	  @RequestMapping(value="/editVehiclePartner.do", params = "delete") public
	  ModelAndView deleteVehiclePartner(VehiclePartner vehiclePartner, HttpSession session) {
	  
	  ModelAndView mav =new ModelAndView();
	  vehiclePartnerService.deleteVehiclePartner(vehiclePartner);
	  mav = viewAllVehiclePartner(vehiclePartner, session);
	  return mav;
	   }
	  
	  @RequestMapping(value="/editVehiclePartner.do", params = "viewvehicles") public ModelAndView
	  viewMore(VehiclePartner vehiclePartner, HttpSession session) {
	  
	  ModelAndView mav =new ModelAndView(); mav.addObject("VehiclePartnerDetails",
	  vehiclePartnerService.viewVehiclePartner(vehiclePartner.getVehicle_partner_id()));
	  
	  mav.addObject("allVehicleList",
			  vservice.viewVehiclesByPartner(vehiclePartner));
	  mav.setViewName("EditVehiclePartner2"); return mav; }
	  
	
	  @RequestMapping(value = "/updateVehiclePartner.do") public ModelAndView
	  updateVehiclePartner(VehiclePartner vehiclePartner, HttpSession session) {
		  vehiclePartner.setRecord_status("A"); ModelAndView mav =new ModelAndView();
		  vehiclePartnerService.updateVehiclePartner(vehiclePartner); mav = viewAllVehiclePartner(vehiclePartner,
	  session);
	  
	  return mav; }
	 
}
