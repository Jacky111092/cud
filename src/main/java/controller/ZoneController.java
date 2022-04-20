package controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.Vehicles;
import bean.Zone;
import bean.Zone;
import bean.Zone;
import service.AreaService;
import service.ZoneService;
import service.ZoneService;
import service.ZoneService;

@Controller
public class ZoneController {
	
	@Autowired
	private ZoneService zoneService;
	
	@RequestMapping("/addZone.do")
	public ModelAndView addZone(Zone z, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		z.setRecord_status("A");
		System.out.println("Zone id "+z.getZone_id());
		//z.setStatus("Pending Approval");
		zoneService.add(z);
		mav = viewAllZone(session);
		return mav;
	}
	
	@RequestMapping("/viewAllZone.do")
	public ModelAndView viewAllZone(HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		mav.addObject("allZoneList", zoneService.viewAllZone());
		mav.setViewName("Zone");
		return mav;
	}
	
	@RequestMapping(value="/editZone.do", params = "edit") public ModelAndView
	  editZone(Zone Zone, HttpSession session) {
	  System.out.println("Zone iddd "+Zone.getZone_id());
	  ModelAndView mav =new ModelAndView(); mav.addObject("ZoneDetails",
			  zoneService.getZone(Zone.getZone_id()));
	  mav.setViewName("EditZone"); return mav; }
	  
	  @RequestMapping(value="/editZone.do", params = "delete") public
	  ModelAndView deleteZone(Zone Zone, HttpSession session) {
	  
	  ModelAndView mav =new ModelAndView();
	  zoneService.deleteZone(Zone);
	  mav = viewAllZone(session);
	  return mav;
	   }
	  
	  @RequestMapping(value = "/updateZone.do") public ModelAndView
	  updateVehicle(Zone zone, HttpSession session) {
		  zone.setRecord_status("A"); ModelAndView mav =new ModelAndView();
		  zoneService.updateZone(zone);
		  mav = viewAllZone(session);
	  
	  return mav; }
}
