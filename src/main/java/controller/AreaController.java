package controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.Vehicle;
import bean.VehiclePartner;
import bean.Vehicle;
import bean.Vehicles;
import bean.Zone;
import bean.Area;
import service.AreaService;
import service.VehiclePartnerService;
import service.VehicleService;
import service.ZoneService;
import service.VehicleService;

@Controller
public class AreaController {
	@Autowired AreaService areaService;
	
	@Autowired ZoneService zoneService;
	
	@RequestMapping("/addArea.do")
	public ModelAndView addArea(Area a, Zone zone,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		a.setRecord_status("A");
		System.out.println("Zone nameeeee "+zone.getZone_name());
		
		  a.setZone(zoneService.getZoneByName(zone.getZone_name()));
		  System.out.println("Zone idddd "+a.getZone().getZone_id());
		 
		//a.setZone(zone);
		System.out.println("Area iddddd "+a.getZone().getZone_name());
		//z.setStatus("Pending Approval");
		areaService.add(a);
		mav = viewAllArea(session);
		return mav;
	}
	
	@RequestMapping("/viewAllArea.do")
	public ModelAndView viewAllArea(HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		
		mav.addObject("zoneList",zoneService.viewAllZone());
		List<Area> all_area = areaService.viewAllArea();
		/* List<Zone> all_zone = zoneService.getZoneById(all_area.get(0)) */
		

		mav.addObject("allAreaList", all_area);
		mav.setViewName("Area");
		return mav;
	}
	
	@RequestMapping(value="/editArea.do", params = "edit") public ModelAndView
	  editArea(Area Area, HttpSession session) {
	  System.out.println("Area iddd "+Area.getArea_id());
	  
	  System.out.println("Area nameee "+Area.getArea_name());
	  ModelAndView mav =new ModelAndView(); mav.addObject("AreaDetails",
			  areaService.getArea(Area.getArea_id()));
	  mav.addObject("allAreaList", areaService.viewAllArea());
	  mav.addObject("zoneList",zoneService.viewAllZone());
	  mav.setViewName("EditArea"); return mav; }
	  
	  @RequestMapping(value="/editArea.do", params = "delete") public
	  ModelAndView deleteArea(Area Area, HttpSession session) {
	  
	  ModelAndView mav =new ModelAndView();
	  areaService.deleteArea(Area);
	  mav = viewAllArea(session);
	  return mav;
	   }
	  
	  @RequestMapping(value = "/updateArea.do") public ModelAndView
	  updateVehicle(Area area, HttpSession session) {
		  area.setRecord_status("A"); 
		  
		  System.out.println("Update Area Details "+area.getArea_id()+" Area name"+area.getArea_name());
		  area.setZone(areaService.getArea(area.getArea_id()).getZone());
			/* area.setZone(area.getArea_id()); */
		  ModelAndView mav =new ModelAndView();
		  areaService.updateArea(area);
		  mav = viewAllArea(session);
	  
	  return mav; }
	
	
}
