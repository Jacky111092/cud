package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import  java.util.Base64;


import bean.UploadFile;
import bean.Vehicle;
import bean.VehiclePartner;
import bean.Vehicle;
import bean.Vehicles;
import repository.FileRepo;
import service.AreaService;
import service.CampaignService;
import service.VehiclePartnerService;
import service.VehicleService;
import service.VehicleService;

@Controller
public class VehicleController {
	
	@Autowired
	private VehicleService vservice;
	
	@Autowired
	private VehiclePartnerService vehiclePartnerService;
	
	@Autowired
	private FileRepo fileRepo;
	
	@Autowired
	private FileController fileController;
	
	@Autowired
	private CampaignService campaignService;
	
	@Autowired AreaService areaService;
	
	
	@RequestMapping("/addVehicle.do")
	public ModelAndView addVehicle(Vehicles v, HttpSession session,HttpServletRequest request, @RequestParam CommonsMultipartFile[] fileUpload) throws Exception {
		ModelAndView mav = new ModelAndView();
		v.setRecord_status("A");
		v.setStatus("Pending Approval");
		v.setBase64Image("0");
		v.setVehicle_partner(vehiclePartnerService.getVehiclePartnerByName(v.getOwner_name()));
		System.out.println("Update vehicle count via add vehicle1 "+v.getVehicle_partner().getVehicle_partner_id());
		System.out.println("Update vehicle count via add vehicle2 "+v.getVehicle_partner());
		vservice.add(v);
		vehiclePartnerService.updateVehicleCount(v.getVehicle_partner().getVehicle_partner_id());
		fileController.handleFileUpload(request, fileUpload,"RC_BOOK",v);
		mav = viewAllVehicle(session);
		return mav;
	}
	
	@RequestMapping("/viewAllVehicless.do")
	public ModelAndView viewAllVehicle(HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		mav.addObject("allVehicleList", vservice.viewAllVehicle());
		mav.setViewName("ViewAllVehicless");
		return mav;
	}
	
	@RequestMapping("/viewAllVehiclePartnerss.do")
	public ModelAndView viewAllVehiclePartners(VehiclePartner vehiclePartner, HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		mav.addObject("allVehiclePartnerList", vehiclePartnerService.viewAllVehiclePartner());
		mav.addObject("allAreaList", areaService.viewAllArea());
		mav.setViewName("AddVehicle");
		return mav;
	}
	
	@RequestMapping("/viewAllVehiclesRequest.do")
	public ModelAndView viewAllVehiclessRequest(HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		
		
		List<Vehicles> allVechicles = vservice.viewAllVehicle();
		List<UploadFile> allVehicleFiles =  fileController.viewAllVehicleFile();
		int index=0;
		for(Vehicles vehicle:allVechicles) {
			for (UploadFile uploadFile: allVehicleFiles)
			{
				System.out.println("base64 vehicle.getVehicleId()"+vehicle.getVehicleId());
				System.out.println("base64 uploadFile.getVehicle().getVehicleId()"+uploadFile.getVehicle().getVehicleId());
				if(vehicle.getVehicleId()==uploadFile.getVehicle().getVehicleId())
				{
					vehicle.setBase64Image(Base64.getEncoder().encodeToString(uploadFile.getData()));
					allVechicles.get(0).setBase64Image(vehicle.getBase64Image());
				}
				
			}
			index++;
			
		}
		mav.addObject("allVehicleList", allVechicles);
		
		mav.addObject("allVehicleFile",allVehicleFiles);
		mav.setViewName("ViewAllVehiclessRequest");
		return mav;
	}
	
	@RequestMapping("/viewAllVehicles.do")
	public ModelAndView viewAllVehicles(HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		mav.addObject("allVehicleList", vservice.viewAllVehicle());
		for(Vehicles vehicle:vservice.viewAllVehicle())
		{
			System.out.println("all vehicle details"+vehicle.getVehicle_partner());
		}
		mav.setViewName("ViewAllVehicless");
		return mav;
	}
	

	@RequestMapping(value="/editVehicle.do", params = "edit") public ModelAndView
	  editVehicle(Vehicles Vehicle, HttpSession session) {
	  System.out.println("Vehicle iddd "+Vehicle.getVehicleId());
	  System.out.println(Vehicle.getOwner_name());
	  Vehicle.setVehicle_partner(vservice.getVehicle(Vehicle.getVehicleId()).getVehicle_partner());

	  ModelAndView mav =new ModelAndView(); mav.addObject("VehicleDetails",
			  vservice.getVehicle(Vehicle.getVehicleId()));
	  System.out.println("Edit vehicle for partner "+Vehicle.getVehicle_partner());
	  System.out.println("Edit vehicle for partner2 "+Vehicle.getVehicle_partner().getVehicle_partner_id());

	  mav.addObject("FileDetails",fileController.getFileById(Vehicle));
	  System.out.println("file details after fetching "+fileController.getFileById(Vehicle).getFile_type());
	  mav.setViewName("EditVehicle"); return mav; 
	  
	}
	  
	  @RequestMapping(value="/editVehicle.do", params = "delete") public
	  ModelAndView deleteVehicle(Vehicles Vehicle, HttpSession session) {
	  
	  ModelAndView mav =new ModelAndView();
	  vservice.deleteVehicle(Vehicle);
	  fileController.deleteFile(Vehicle);
	  vehiclePartnerService.decrementVehicleCount(Vehicle.getVehicle_partner().getVehicle_partner_id());
	  
	  if(null!=Vehicle.getCampaign() && 0!=Vehicle.getCampaign().getCampaignId())
	  {
	  campaignService.decrementVehicleCount(Vehicle.getCampaign().getCampaignId());
	  }
	  mav = viewAllVehicles(session);
	  return mav;
	   }
	  
	  @RequestMapping(value="/editVehicle.do", params = "viewvehicles") public ModelAndView
	  viewMore(Vehicles Vehicle, HttpSession session) {
	  
	  ModelAndView mav =new ModelAndView(); mav.addObject("VehicleDetails",
			  vservice.getVehicle(Vehicle.getVehicleId()));
	  mav.setViewName("EditVehicle2"); return mav; }
	  
	
	  @RequestMapping(value = "/updateVehicle.do") public ModelAndView
	  updateVehicle(Vehicles Vehicle, HttpSession session,HttpServletRequest request, @RequestParam CommonsMultipartFile[] fileUpload) throws Exception {
		  Vehicle.setRecord_status("A");
		  Vehicle.setBase64Image("0");
		  Vehicles new_vehicle = vservice.getVehicle(Vehicle.getVehicleId());
		  Vehicle.setVehicle_partner(new_vehicle.getVehicle_partner());
		  if(null!=new_vehicle.getCampaign())
		  {
			  Vehicle.setCampaign(new_vehicle.getCampaign());
		  }
		  System.out.println("Edit vehicle for partner updatee "+Vehicle.getVehicle_partner());
		  System.out.println("Edit vehicle for partner updatee2 "+Vehicle.getVehicle_partner().getVehicle_partner_id());

		  ModelAndView mav =new ModelAndView();
		  
		  vservice.updateVehicle(Vehicle); 
		  if(null!=fileUpload)
		  {
		  fileController.handleFileUploadForUpdate(request, fileUpload,"RC_BOOK",Vehicle);
		  }
		  mav = viewAllVehicle(session);
		  
	  return mav; }
	 
	  
}
