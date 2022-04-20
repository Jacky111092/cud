package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.Campaign;
import bean.Vehicle;
import bean.VehiclePartner;
import bean.Vehicles;
import repository.VehicleRepository;


@Service
@EnableTransactionManagement
public class VehicleService {


	
	@Autowired
	private VehicleRepository vehiclerepository;
	
	@Transactional
	public void add(Vehicles v) {
		 vehiclerepository.addVehicle(v);
	}
	
	@Transactional
	public Vehicles getVehicle(int vehicleId)
	{
		return vehiclerepository.getVehicle(vehicleId);
	}
	
	@Transactional
	public void deleteVehicle(Vehicles v)
	{
		vehiclerepository.deleteVehicle(v);
	}
	
	@Transactional
	public void updateVehicle(Vehicles v)
	{
		vehiclerepository.updateVehicle(v);
	}
	
	
	public	List<Vehicles> viewAllVehicle()
	{
		List<Vehicles> vechicleList=vehiclerepository.viewAll();
		
		for(Vehicles vb:vechicleList)
		{
			System.out.println("Vehicle owner "+vb.getOwner_name());
		}
		return vechicleList;
	}
	
	public void addVehiclesToCampaign(Campaign campaignId, int vehicleId)
	{
		vehiclerepository.addVehiclesToCampaign(campaignId, vehicleId);
	}

	public List  viewAllAvailableVehicles() {
		// TODO Auto-generated method stub
		return vehiclerepository.viewAllAvailableVehicles();
	}

	public void deleteVehiclesOfLiveCampaign(Campaign campaign, int vehicleId) {
		vehiclerepository.deleteVehiclesOfLiveCampaign(campaign,vehicleId);
		
	}

	public List viewVehiclesByPartner(VehiclePartner vehicle_partner_id) {
		// TODO Auto-generated method stub
		return vehiclerepository.viewVehiclesByPartner(vehicle_partner_id);
	}

	
}
