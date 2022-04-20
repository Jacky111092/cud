package repository;

import java.util.List;

import bean.Campaign;
import bean.Vehicle;
import bean.VehiclePartner;
import bean.Vehicles;

public interface VehicleRepository {

	public void addVehicle(Vehicles v);
	public void updateVehicle(Vehicles v);
	public void deleteVehicle(Vehicles v);
	List<Vehicles> viewAll();
	public Vehicles getVehicle(int vehicleId);
	public void addVehiclesToCampaign(Campaign campaignId, int vehicleId);
	List<Vehicles> viewAllAvailableVehicles();
	public void deleteVehiclesOfLiveCampaign(Campaign campaign, int vehicleId);
	public List<Vehicles> viewVehiclesByPartner(VehiclePartner vehicle_partner_id);
	
}
