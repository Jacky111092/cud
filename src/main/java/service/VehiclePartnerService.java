package service;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.Admin;
import bean.Campaign;
import bean.Client;
import bean.VehiclePartner;
import bean.Zone;
import repository.CampaignRepo;
import repository.ClientRepo;
import repository.VehiclePartnerRepo;

@Service
@EnableTransactionManagement
public class VehiclePartnerService {
	@Autowired
	private VehiclePartnerRepo vehiclePartnerRepo;
	
	public VehiclePartnerService() {
		
	}
	
	@Transactional
	public void addVehiclePartner(VehiclePartner v) {
		vehiclePartnerRepo.addVehiclePartner(v);
	}
	
	@Transactional
	public void updateVehiclePartner(VehiclePartner v) {
		vehiclePartnerRepo.updateVehiclePartner(v);
	}
	
	@Transactional
	public VehiclePartner viewVehiclePartner(int vehiclePartnerId) {
		return vehiclePartnerRepo.viewVehiclePartner(vehiclePartnerId);
	}
	
	/*
	 * public Staff validateStaff(Login staffLogin) { Staff
	 * staff=staffRepo.viewStaff(staffLogin.getEmailid()); if(staff==null) { return
	 * null; } else if(staff.getPassword().equals(staffLogin.getPassword())) {
	 * return staff; } else { return null; }
	 * 
	 * }
	 */
	
	 public List viewAllVehiclePartner() { List<VehiclePartner> vehiclePartnerlist=vehiclePartnerRepo.viewAllVehiclePartner();
	  
	  for(VehiclePartner vehiclePartner:vehiclePartnerlist) { System.out.println(vehiclePartner); } return vehiclePartnerlist; }
	 
	 public void deleteVehiclePartner(VehiclePartner v) {
		 vehiclePartnerRepo.deleteVehiclePartner(v);
	 }
	 
	 @Transactional
		public VehiclePartner getVehiclePartnerByName(String vehicle_partner_name)
		{
			return vehiclePartnerRepo.getVehiclePartnerByName(vehicle_partner_name);
		}

	@Transactional
	public ArrayList<ArrayList<String>> getVehicleCount(/* String vehicle_partner_name */)
	{
		return vehiclePartnerRepo.getVehicleCount(/* vehicle_partner_name */);
	}
	
	@Transactional
	public void updateVehicleCount(int vehicleId)
	{
		vehiclePartnerRepo.updateVehicleCount(vehicleId);
	}

	public void decrementVehicleCount(int vehicle_partner_id) {
		// TODO Auto-generated method stub
		vehiclePartnerRepo.decrementVehicleCount(vehicle_partner_id);
	}
}