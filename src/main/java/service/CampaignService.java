package service;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bean.Admin;
import bean.Campaign;
import bean.CampaignCreativeUpload;
import bean.CampaignPhotos;
import bean.Campaign_And_Vehicle_Details;
import bean.Client;
import bean.UploadFile;
import bean.Vehicles;
import bean.Wallet;
import repository.CampaignAndVehicleRepo;
import repository.CampaignCreativeUploadRepo;
import repository.CampaignPhotosRepo;
import repository.CampaignRepo;
import repository.ClientRepo;
import repository.WalletRepo;

@Service
@EnableTransactionManagement
public class CampaignService {
	
	@Autowired
	private CampaignRepo campaignRepo;
	
	@Autowired
	private CampaignAndVehicleRepo campaignVehicleRepo;
	
	@Autowired
	private CampaignPhotosRepo campaignPhotoRepo;
	
	@Autowired
	private CampaignCreativeUploadRepo campaignCreativeUploadRepo;
	
	@Autowired
	private WalletRepo walletRepo;
	
	public CampaignService() {
		
	}
	
	@Transactional
	public void addCampaign(Campaign c) {
		campaignRepo.addCampaign(c);
	}
	
	@Transactional
	public void updateCampaign(Campaign c) {
		campaignRepo.updateCampaign(c);
	}
	
	@Transactional
	public Campaign viewCampaign(int campaignId) {
		return campaignRepo.viewCampaign(campaignId);
	}
	
	/*
	 * public Staff validateStaff(Login staffLogin) { Staff
	 * staff=staffRepo.viewStaff(staffLogin.getEmailid()); if(staff==null) { return
	 * null; } else if(staff.getPassword().equals(staffLogin.getPassword())) {
	 * return staff; } else { return null; }
	 * 
	 * }
	 */
	
	 public List viewAllCampaign() { List<Campaign> campaignlist=campaignRepo.viewAllCampaign();
	  
	  for(Campaign campaign:campaignlist) { System.out.println("Bla bla "+campaign.getCampaign_name()); } return campaignlist; }
	 
	 public void deleteCampaign(Campaign c) {
		 campaignRepo.deleteCampaign(c);
	 }
	 
	 public List viewAllApprovedCampaign() { List<Campaign> campaignlist=campaignRepo.viewAllApprovedCampaign();
	  
	  for(Campaign campaign:campaignlist) { System.out.println(campaign); } return campaignlist; }
	 
	 public void updateVehicleCount(int campaignId)
	 {
		 campaignRepo.updateVehicleCount(campaignId);
	 }

	public List viewAllLiveCampaigns() {
		// TODO Auto-generated method stub
		return campaignRepo.viewAllLiveCampaigns();
	}

	public void updateCampaignToLive(Campaign campaign) {
		// TODO Auto-generated method stub
		campaignRepo.updateCampaignToLive(campaign);
	}

	public void addCampaignAndVehicleDetails(Campaign campaign, Vehicles vehicle) {
		// TODO Auto-generated method stub
		Campaign_And_Vehicle_Details campaign_and_vehicle_details = new Campaign_And_Vehicle_Details();
		campaign_and_vehicle_details.setCampaign(campaign);
		campaign_and_vehicle_details.setVehicles(vehicle);
		campaign_and_vehicle_details.setRecord_status("A");
		
		campaignVehicleRepo.addCampaignAndVehicleDetails(campaign_and_vehicle_details);
	}

	public List viewCampaignAndVehicle(Campaign campaign) {
		// TODO Auto-generated method stub
		return campaignVehicleRepo.viewCampaignAndVehicle(campaign);
	}

	public void deleteVehicleAndCampaign(Campaign campaign, Vehicles vehicle) {
		// TODO Auto-generated method stub
		Campaign_And_Vehicle_Details campaign_and_vehicle_details = new Campaign_And_Vehicle_Details();
		campaign_and_vehicle_details.setCampaign(campaign);
		campaign_and_vehicle_details.setVehicles(vehicle);
		campaign_and_vehicle_details.setRecord_status("D");
		campaignVehicleRepo.deleteVehicleAndCampaign(campaign_and_vehicle_details);
	}

	public void editVehicleKilometreOfCampaign(Campaign campaign, Vehicles vehicle,Campaign_And_Vehicle_Details cv) {
		// TODO Auto-generated method stub
		cv.setCampaign(campaign);
		cv.setVehicles(vehicle);
		campaignVehicleRepo.editVehicleKilometreOfCampaign(cv);
	}

	public Campaign_And_Vehicle_Details viewSpecificCampaignAndVehicle(Campaign campaign, Vehicles vehicle) {
		// TODO Auto-generated method stub
		Campaign_And_Vehicle_Details campaign_and_vehicle_details = new Campaign_And_Vehicle_Details();
		campaign_and_vehicle_details.setCampaign(campaign);
		campaign_and_vehicle_details.setVehicles(vehicle);
		return campaignVehicleRepo.viewSpecificCampaignAndVehicle(campaign_and_vehicle_details);
		
	}

	/*
	 * public void updatePhotosOfCampaign(Campaign campaign, Vehicles vehicle,
	 * Campaign_And_Vehicle_Details cv) { // TODO Auto-generated method stub
	 * CampaignPhotos cp = new CampaignPhotos(); cp.setCv(cv);
	 * campaignPhotoRepo.updatePhotosOfCampaign(cp); }
	 */
	
	public int updatePhotosOfCampaign(HttpServletRequest request,
            @RequestParam CommonsMultipartFile[] fileUpload, Campaign campaign, Vehicles vehicle, Campaign_And_Vehicle_Details cv, CampaignPhotos cp) throws Exception {
          int id = 0;
        if (fileUpload != null && fileUpload.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload){
                  
                System.out.println("Saving file: " + aFile.getOriginalFilename() + " File sizes "+aFile.getOriginalFilename().length()+" "+aFile.getBytes().length);
                 
                CampaignPhotos uploadFile = new CampaignPhotos();
                uploadFile.setFileName(aFile.getOriginalFilename());
                uploadFile.setData(aFile.getBytes());
                //uploadFile.setFile_type(fileType);
                uploadFile.setCv(cv);
                uploadFile.setRecord_status("A");
                uploadFile.setFile_type(cp.getFile_type());
                id = campaignPhotoRepo.updatePhotosOfCampaign(uploadFile);               
            }
        }
  
        return id;
    }

	public void updateCreativeUploadsOfCampaign(HttpServletRequest request, CommonsMultipartFile[] fileUpload,
			Campaign campaign) {
		// TODO Auto-generated method stub
		 if (fileUpload != null && fileUpload.length > 0) {
	            for (CommonsMultipartFile aFile : fileUpload){
	                  
	                System.out.println("Saving file: " + aFile.getOriginalFilename() + " File sizes "+aFile.getOriginalFilename().length()+" "+aFile.getBytes().length);
	                 
	                CampaignCreativeUpload uploadFile = new CampaignCreativeUpload();
	                uploadFile.setFileName(aFile.getOriginalFilename());
	                uploadFile.setData(aFile.getBytes());
	                //set created date
	                //uploadFile.setFile_type(fileType);
	                uploadFile.setCampaign(campaign);;
	                uploadFile.setRecord_status("A");
					/*
					 * DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
					 * Date date = new Date(); System.out.println(date);
					 * uploadFile.setCreated_date(date);
					 */
	                campaignCreativeUploadRepo.updateCreativeUploadsOfCampaign(uploadFile);
	                
	            }
	}  
	}
	
	public CampaignCreativeUpload getCreativeUploadsOfCampaign(Campaign campaign)
	{
		return campaignCreativeUploadRepo.getCreativeUploadsOfCampaign(campaign);
	}

	public void decrementVehicleCount(int campaignId) {
		// TODO Auto-generated method stub
		campaignRepo.decrementVehicleCount(campaignId);
	}
	
	public List viewCampaignByClientName(Client client_id) {
		//System.out.println("qwertyui"+client.getPersonal_emailid());
		
		return campaignRepo.viewCampaignByClientName(client_id);
		
	}

	public ArrayList<Integer> viewTotalKmsRan(List<Campaign> c) {
		// TODO Auto-generated method stub
		return campaignVehicleRepo.viewTotalKmsRan(c);
	}
	
	public ArrayList<Integer> viewCountOfVehicles(List<Campaign> c) {
		// TODO Auto-generated method stub
		return campaignVehicleRepo.viewCountOfVehicles(c);
	}

	public void updateCampaignToApproved(Campaign campaign) {
		// TODO Auto-generated method stub
		campaignRepo.updateCampaignToApproved(campaign);

	}

	public void updateDateOfCreative(Campaign campaign) {
		// TODO Auto-generated method stub
		campaignRepo.updateDateOfCreative(campaign);
	}

	public void updateDateOfCampaignPhotos(int id) {
		// TODO Auto-generated method stub
		campaignPhotoRepo.updateDateOfCampaignPhotos(id);
	}

	public List<CampaignPhotos> getCampaignPhotos(Campaign_And_Vehicle_Details cv) {
		// TODO Auto-generated method stub
		return campaignPhotoRepo.getCampaignPhotos(cv);
	}

	public List<CampaignPhotos> getCampaignPhotosByFileType(Campaign_And_Vehicle_Details cvd, String filetype) {
		// TODO Auto-generated method stub
		return campaignPhotoRepo.getCampaignPhotosByFileType(cvd,filetype);
	}

	public void updateWalletForClientCampaign(Wallet wallet) {
		// TODO Auto-generated method stub
		int walletId = walletRepo.updateWalletForClientCampaign(wallet);
		walletRepo.updateDateOfWallet(walletId);
	}

	public List viewAllWallet() {
		// TODO Auto-generated method stub
		return walletRepo.viewAllWallet();
	}

	public void deleteWallet(Wallet wallet) {
		// TODO Auto-generated method stub
		 walletRepo.deleteWallet(wallet);
	}

	public List<Wallet> viewAllWalletForCampaign(Campaign c) {
		// TODO Auto-generated method stub
		return walletRepo.viewAllWalletForCampaign(c);
	}

	public void updateRemainingAmountForCampaign(Campaign campaign) {
		// TODO Auto-generated method stub
		campaignRepo.updateRemainingAmountForCampaign(campaign);
	}
	
	/*
	 * public Campaign isPaymentDone(Campaign campaign) {
	 * 
	 * return campai }
	 */
}
