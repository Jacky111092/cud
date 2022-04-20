package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
/*import javax.websocket.Session;*/

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bean.Admin;
import bean.Campaign;
import bean.CampaignCreativeUpload;
import bean.CampaignPhotos;
import bean.Campaign_And_Vehicle_Details;
import bean.Claim;
import bean.Client;
import bean.CustomerQueries;
import bean.IssuedTkt;
import bean.Policy;
import bean.Register;
import bean.Staff;
import bean.Vehicles;
import bean.Wallet;
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
public class CampaignController {
	@Autowired
	AdminService adminService;
	
	@Autowired
	ClientService clientService;
	
	@Autowired
	CampaignService campaignService;
	
	@Autowired
	VehicleService vservice;
	
	@Autowired
	VehiclePartnerService vehiclePartnerService;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
	binder.registerCustomEditor(Date.class, new CustomDateEditor(
	        dateFormat, false));
	}
	@RequestMapping("/addCampaign.do")
	public ModelAndView addCampaign(Campaign campaign, HttpSession session) {
		System.out.println("asdasfdfdwfdfw"+campaign.getCompany_name());
		ModelAndView mav =new ModelAndView();
		campaign.setRecord_status("A");
		campaign.setStatus("Pending Approval");
		campaign.setNo_of_vehicles_assigned(0);
		campaign.setRemaining_amount(0);
		System.out.println("Campaign Start Date "+campaign.getStart_date());
		
		Client c = clientService.viewClientByCompanyName(campaign.getCompany_name());
		campaign.setClient(c);
		campaignService.addCampaign(campaign);
		mav.addObject("allCampaignList", campaignService.viewAllCampaign());
		mav.setViewName("AddCampaign");
		return mav;
	}
	
	@RequestMapping("/getCampaignClient.do")
	public ModelAndView getCampaignClientDetails(Campaign campaign, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		/*
		 * List<Client> c = clientService.viewAllClients(); Client clientdetails= new
		 * Client(); for(Client client:c) {
		 * clientdetails.setCompany_name(client.getCompany_name());
		 * System.out.print("Campaignnnnnnn "+client.getCompany_name()); }
		 */
		
		mav.addObject("allClientList", clientService.viewAllClients());
		
		mav.setViewName("AddCampaign");
		return mav;
	}
	
	@RequestMapping("/viewAllCampaign.do")
	public ModelAndView viewAllCampaign(Campaign campaign, HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		mav.addObject("allCampaignList", campaignService.viewAllCampaign());
		mav.setViewName("ViewAllCampaigns");
		return mav;
	}
	
	@RequestMapping("/viewWalletForCampaign.do")
	public ModelAndView viewWalletForCampaign(Campaign campaign, HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		mav.addObject("allCampaignList", campaignService.viewAllCampaign());
		
		mav.setViewName("AddWallet");
		return mav;
	}
	
	@RequestMapping("/viewAllWallet.do")
	public ModelAndView viewAllWallet(HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		mav.addObject("allWalletList", campaignService.viewAllWallet());
		mav.addObject("allCampaignList", campaignService.viewAllCampaign());
		mav.setViewName("AllWallet");
		return mav;
	}
	
	@RequestMapping("/getBudgetForClientCampaign.do")
	public ModelAndView getBudgetForClientCampaign(Campaign campaign, HttpSession session) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		System.out.println("Campaign idd for wallet "+campaign.getCampaignId());
		mav.addObject("CampaignDetails", campaignService.viewCampaign(campaign.getCampaignId()));
		
		mav.setViewName("AddWallet2");
		return mav;
	}
	
	@RequestMapping("/updateWalletForClientCampaign.do")
	public ModelAndView updateWalletForClientCampaign(Campaign campaign, Client client,Wallet wallet, HttpSession session) {
		System.out.println("asdasfdfdwfdfw"+campaign.getCompany_name());
		System.out.println("asdasfdfdwfdfw"+client.getClient_id());
		ModelAndView mav =new ModelAndView();
		/*
		 * campaign.setRecord_status("A"); campaign.setStatus("Pending Approval");
		 * campaign.setNo_of_vehicles_assigned(0);
		 * campaign.setRemaining_amount(campaign.getAmount());
		 * System.out.println("Campaign Start Date "+campaign.getStart_date());
		 * 
		 * Client c = clientService.viewClientByCompanyName(campaign.getCompany_name());
		 * campaign.setClient(c); campaignService.addCampaign(campaign);
		 * mav.addObject("allCampaignList", campaignService.viewAllCampaign());
		 */
		wallet.setClient(client);
		wallet.setCampaign(campaign);
		wallet.setRecord_status("A");
		campaignService.updateWalletForClientCampaign(wallet);
		campaign.setRemaining_amount(wallet.getPaid_amount());
		campaignService.updateRemainingAmountForCampaign(campaign);
		mav.setViewName("AddWallet2");
		return mav;
	}
	
	@RequestMapping(value="/editWalletForCampaign.do", params = "delete") public
	  ModelAndView editWalletForCampaign(Wallet wallet, HttpSession session) {
	  
	  ModelAndView mav =new ModelAndView();
	  campaignService.deleteWallet(wallet);
	  mav = viewAllWallet(session);
	  return mav;
	   }
	  @RequestMapping(value="/editCampaign.do", params = "edit") public ModelAndView
	  editCampaign(Campaign campaign, HttpSession session) {
	  System.out.println("Campaign Detailssss "+campaign.getCampaign_name());
	  
	  ModelAndView mav =new ModelAndView(); mav.addObject("campaignDetails",
	  campaignService.viewCampaign(campaign.getCampaignId()));
	  mav.setViewName("EditCampaign"); return mav; }
	  
	  @RequestMapping(value="/editCampaign.do", params = "delete") public
	  ModelAndView deleteCampaign(Campaign campaign, HttpSession session) {
	  
	  ModelAndView mav =new ModelAndView();
	  campaignService.deleteCampaign(campaign);
	  mav = viewAllCampaign(campaign, session);
	  return mav;
	   }
	  
	  @RequestMapping(value="/editCampaign.do", params = "viewmore") public ModelAndView
	  viewMore(Campaign campaign, HttpSession session) {
	  System.out.println("Campaign Detailssss "+campaign.getCampaign_name());
	  
	  ModelAndView mav =new ModelAndView(); mav.addObject("campaignDetails",
	  campaignService.viewCampaign(campaign.getCampaignId()));
	  mav.setViewName("EditCampaign2"); return mav; }
	  
	  @RequestMapping(value = "/updateCampaign.do")
		public ModelAndView updateCampaign(Campaign campaign, Client client, HttpSession session) {
			System.out.println("asdfghjkasdfghjkl"+campaign.getCampaignId());
			campaign.setRecord_status("A");
			campaign.setClient(client);
			campaign.setRemaining_amount(campaign.getAmount());
			ModelAndView mav =new ModelAndView();
			campaignService.updateCampaign(campaign);
			mav = viewAllCampaign(campaign, session);
			
			return mav;
		}
	  
	  @RequestMapping(value = "/updateCampaignn.do",params = "approve")
		public ModelAndView updateCampaignn(Campaign campaign, HttpSession session) {
			System.out.println("asdfghjkasdfghjkl"+campaign.getCampaignId());
			campaign.setRecord_status("A");
			campaign.setStatus("Approved");
			campaign.setPayment_flag("Y");
			//campaign.setPayment_created_date(sysdate);
			ModelAndView mav =new ModelAndView();
			campaignService.updateCampaignToApproved(campaign);
			mav = viewAllCampaign(campaign, session);
			
			return mav;
		}
	  
	  @RequestMapping(value = "/updateCampaignn.do",params = "deny")
		public ModelAndView denyCampaignn(Campaign campaign, HttpSession session) {
			System.out.println("asdfghjkasdfghjkl"+campaign.getCampaignId());
			campaign.setRecord_status("A");
			campaign.setRemaining_amount(campaign.getAmount());

			campaign.setStatus("Denied");
			ModelAndView mav =new ModelAndView();
			campaignService.updateCampaign(campaign);
			mav = viewAllCampaign(campaign, session);
			
			return mav;
		}
	  
	  @RequestMapping("/viewAllApprovedCampaign.do")
		public ModelAndView viewAllApprovedCampaign(Campaign campaign, HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			mav.addObject("allCampaignList", campaignService.viewAllApprovedCampaign());
			mav.setViewName("ReadyToLiveCampaign");
			return mav;
		}
	  
	  @RequestMapping("/viewAllLiveCampaigns.do")
		public ModelAndView viewAllLiveCampaigns(HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			mav.addObject("allCampaignList", campaignService.viewAllLiveCampaigns());
			mav.setViewName("LiveCampaign");
			return mav;
		}
	 
	  @RequestMapping(value="/assignVehicles.do",params="edit")
		public ModelAndView assignVehicles(Campaign campaign,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			mav.addObject("allVehicleList", vservice.viewAllVehicle());
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.addObject("allVehiclePartner",vehiclePartnerService.viewAllVehiclePartner());
			mav.setViewName("ReadyToLiveCampaign2"); 
			return mav;
			
		}
	  
	  @RequestMapping(value="/assignVehicles.do",params="creativeupload")
		public ModelAndView editCreativeUploadForCampaign(Campaign campaign,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			//mav.addObject("allVehicleList", vservice.viewAllAvailableVehicles());
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.setViewName("EditCreativeUploadForCampaign"); 
			return mav;
			
		}
	  
	  @RequestMapping(value="/assignVehicles.do",params="goLive")
		public ModelAndView goLive(Campaign campaign,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			//check logic if vehicles are assigned
			System.out.println("Go live campaign "+campaign.getCampaignId()+" Status"+campaign.getStatus()+" assigned vehicles "+campaign.getNo_of_vehicles_assigned());
			CampaignCreativeUpload cu = new CampaignCreativeUpload();
			cu = campaignService.getCreativeUploadsOfCampaign(campaign);
			/*
			 * System.out.println("Go Liveeee "+campaign.getNo_of_vehicles_assigned() +
			 * " "+campaign.getNo_of_vehicles()+" "+cu.getId()+" "+cu.getFileName());
			 */
			if (campaign.getNo_of_vehicles_assigned()>0 && campaign.getNo_of_vehicles_assigned()<=campaign.getNo_of_vehicles() && null!=cu && 0!=cu.getId() && null!=cu.getFileName())
			{
				campaign.setStatus("Live");
				campaign.setLive_campaign_flag("Y");
				//campaign.setLive_campaign_created_date(sysdate);
				campaignService.updateCampaignToLive(campaign);
				mav.addObject("allCampaignList",campaignService.viewAllApprovedCampaign());
				mav.setViewName("LiveCampaign");
				return mav;
				
			}
			
			//update status to live
			else
			{
			//mav.addObject("allVehicleList", vservice.viewAllAvailableVehicles());
			mav.addObject("allCampaignList",campaignService.viewAllApprovedCampaign());
			mav.addObject("message","Assign atleast one vehicle/Kindly upload creatives");
			mav.setViewName("ReadyToLiveCampaign"); 
			return mav;
			}
			
		}
	  
	  @RequestMapping(value="/addVehiclesToCampaign.do",params="add")
		public ModelAndView addVehiclesToCampaign(Campaign campaign,Vehicles vehicle,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			System.out.println("Campaign  "+campaign.getCampaignId());
			System.out.println("Vehicle campaign  "+vehicle.getVehicleId());
			vservice.addVehiclesToCampaign(campaign, vehicle.getVehicleId());
			campaignService.updateVehicleCount(campaign.getCampaignId());
			campaignService.addCampaignAndVehicleDetails(campaign, vehicle);
			mav.addObject("allVehicleList", vservice.viewAllVehicle());
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.setViewName("ReadyToLiveCampaign2"); 
			return mav;
			
		}
	  
	  @RequestMapping(value="/addVehiclesToCampaign.do",params="delete")
		public ModelAndView deleteVehiclesToCampaign(Campaign campaign,Vehicles vehicle,HttpSession session) {
		  ModelAndView mav =new ModelAndView();
			System.out.println("Campaign  "+campaign.getCampaignId());
			System.out.println("Vehicle campaign  "+vehicle.getVehicleId());
			vservice.deleteVehiclesOfLiveCampaign(campaign, vehicle.getVehicleId());
			campaignService.decrementVehicleCount(campaign.getCampaignId());
			
			mav.addObject("allVehicleList", vservice.viewAllVehicle());
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			
			mav.setViewName("ReadyToLiveCampaign2"); 
			return mav;
	  }
	  
	  
	  @RequestMapping(value="/editVehiclesForCampaign.do",params="edit")
		public ModelAndView editVehiclesForCampaign(Campaign campaign,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			mav.addObject("allVehicleList", vservice.viewAllVehicle());
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.addObject("campaignAndVehicle",campaignService.viewCampaignAndVehicle(campaign));
			mav.addObject("allVehiclePartner",vehiclePartnerService.viewAllVehiclePartner());
			mav.setViewName("EditVehicleForCampaign"); 
			return mav;
			
		}
	  
	  @RequestMapping(value="/editVehiclesForCampaign.do",params="editCampaign")
		public ModelAndView editCampaignForLiveCampaign(Campaign campaign,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			/* mav.addObject("allVehicleList", vservice.viewAllVehicle()); */
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.setViewName("EditCampaignForLiveCampaign"); 
			return mav;
			
		}
	  
	  @RequestMapping(value="/addOrDeleteVehiclesToLiveCampaign.do",params="add")
		public ModelAndView addOrDeleteVehiclesToLiveCampaign(Campaign campaign,Vehicles vehicle,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			System.out.println("Campaign  "+campaign.getCampaignId());
			System.out.println("Vehicle campaign  "+vehicle.getVehicleId());
			vservice.addVehiclesToCampaign(campaign, vehicle.getVehicleId());
			campaignService.updateVehicleCount(campaign.getCampaignId());
			campaignService.addCampaignAndVehicleDetails(campaign, vehicle);
			mav.addObject("allVehicleList", vservice.viewAllVehicle());
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.addObject("campaignAndVehicle",campaignService.viewCampaignAndVehicle(campaign));
			mav.setViewName("EditVehicleForCampaign");
			return mav;
			
		}
	  
	  @RequestMapping(value="/addOrDeleteVehiclesToLiveCampaign.do",params="delete")
		public ModelAndView deleteVehiclesOfLiveCampaign(Campaign campaign,Vehicles vehicle,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			System.out.println("Campaign  "+campaign.getCampaignId());
			System.out.println("Vehicle campaign  "+vehicle.getVehicleId());
			vservice.deleteVehiclesOfLiveCampaign(campaign, vehicle.getVehicleId());
			campaignService.decrementVehicleCount(campaign.getCampaignId());
			campaignService.deleteVehicleAndCampaign(campaign,vehicle);
			mav.addObject("allVehicleList", vservice.viewAllVehicle());
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.addObject("campaignAndVehicle",campaignService.viewCampaignAndVehicle(campaign));
			mav.setViewName("EditVehicleForCampaign");
			return mav;
			
		}
	  
	  @RequestMapping(value="/addOrDeleteVehiclesToLiveCampaign.do",params="edit_kilometre")
		public ModelAndView editVehicleKilometresToLiveCampaign(Campaign campaign,Vehicles vehicle, Campaign_And_Vehicle_Details cv,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			System.out.println("Campaign  "+campaign.getCampaignId());
			System.out.println("Vehicle campaign  "+vehicle.getVehicleId());
			//campaignService.editVehicleKilometreOfCampaign(campaign, vehicle,cv);
			
			mav.addObject("VehicleDetails", vservice.getVehicle(vehicle.getVehicleId()));
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.addObject("campaignAndVehicle",campaignService.viewSpecificCampaignAndVehicle(campaign,vehicle));
			mav.setViewName("EditVehicleKilometreForCampaign");
			return mav;
			
		}
	  
	  @RequestMapping(value="/addOrDeleteVehiclesToLiveCampaign.do",params="photo_upload")
		public ModelAndView editPhotoUploadLiveCampaign(Campaign campaign,Vehicles vehicle, Campaign_And_Vehicle_Details cv,HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			System.out.println("Campaign  "+campaign.getCampaignId());
			System.out.println("Vehicle campaign  "+vehicle.getVehicleId());
			//campaignService.editVehicleKilometreOfCampaign(campaign, vehicle,cv);
			
			mav.addObject("VehicleDetails", vservice.getVehicle(vehicle.getVehicleId()));
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.addObject("campaignAndVehicle",campaignService.viewSpecificCampaignAndVehicle(campaign,vehicle));
			mav.setViewName("EditPhotoUploadForCampaign");
			return mav;
			
		}
	  
	  @RequestMapping(value="/updateKilometresOfCampaign.do")
		public ModelAndView updateVehicleKilometresToLiveCampaign(Campaign campaign,Vehicles vehicle,Campaign_And_Vehicle_Details cv, HttpSession session) {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			System.out.println("Campaign  "+campaign.getCampaignId());
			System.out.println("Vehicle campaign  "+vehicle.getVehicleId());
			campaignService.editVehicleKilometreOfCampaign(campaign, vehicle,cv);
			mav.addObject("allVehicleList", vservice.viewAllVehicle());
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.addObject("campaignAndVehicle",campaignService.viewCampaignAndVehicle(campaign));
			mav.setViewName("EditVehicleForCampaign");
			return mav;
			
		}
	  
	  @RequestMapping(value="/updatePhotosOfCampaign.do")
		public ModelAndView updatePhotosOfCampaign(Campaign campaign,Vehicles vehicle,Campaign_And_Vehicle_Details cv,CampaignPhotos cp,  HttpSession session,HttpServletRequest request, @RequestParam CommonsMultipartFile[] fileUpload) throws Exception {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			System.out.println("Campaign  "+campaign.getCampaignId());
			System.out.println("Fileee Typeee "+cp.getFile_type());
			System.out.println("Vehicle campaign  "+vehicle.getVehicleId());
			int id = campaignService.updatePhotosOfCampaign(request,fileUpload,campaign, vehicle,cv,cp);
			
			
			campaignService.updateDateOfCampaignPhotos(id);
			mav.addObject("allVehicleList", vservice.viewAllVehicle());
			mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.getCampaignId()));
			mav.addObject("campaignAndVehicle",campaignService.viewCampaignAndVehicle(campaign));
			mav.setViewName("EditVehicleForCampaign");
			return mav;
			
		}
	  
	  @RequestMapping(value="/updateCreativeUploadsOfCampaign.do")
		public ModelAndView updateCreativeUploadsOfCampaign(Campaign campaign,  HttpSession session,HttpServletRequest request, @RequestParam CommonsMultipartFile[] fileUpload) throws Exception {
			//System.out.println("qwertyui"+client.getPersonal_emailid());
			ModelAndView mav =new ModelAndView();
			System.out.println("Campaign  "+campaign.getCampaignId());
			campaignService.updateCreativeUploadsOfCampaign(request,fileUpload,campaign);
			campaignService.updateDateOfCreative(campaign);
			mav.addObject("allCampaignList",campaignService.viewAllApprovedCampaign());
			mav.addObject("message","Creative Upload successfull");
			mav.setViewName("ReadyToLiveCampaign"); 
			/*
			 * mav.addObject("allVehicleList", vservice.viewAllVehicle());
			 * mav.addObject("campaignDetails",campaignService.viewCampaign(campaign.
			 * getCampaignId()));
			 * mav.addObject("campaignAndVehicle",campaignService.viewCampaignAndVehicle(
			 * campaign));
			 */
			
			return mav;
			
		}
	  
	  @RequestMapping(value = "/updateLiveCampaign.do")
		public ModelAndView updateLiveCampaign(Campaign campaign, HttpSession session) {
			System.out.println("asdfghjkasdfghjkl"+campaign.getCampaignId());
			campaign.setRecord_status("A");
			ModelAndView mav =new ModelAndView();
			campaignService.updateCampaign(campaign);
			mav = viewAllLiveCampaigns( session);
			
			return mav;
		}
	  
		/*
		 * @RequestMapping("/viewAllApprovedCampaign.do")
		 */		
	  	
	/*
	 * @ResponseStatus(value = HttpStatus.BAD_REQUEST)
	 * 
	 * @ExceptionHandler(value = {MissingServletRequestParameterException.class})
	 * CampaignController
	 * handleMethodArgumentNotValid(MissingServletRequestParameterException ex) {
	 * 
	 * return new CampaignController(ErrorCode.MISSING_REQUIRED_PARAMS,
	 * ex.getMessage()); }
	 */
}
