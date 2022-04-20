package repository;

import java.util.ArrayList;
import java.util.List;

import bean.VehiclePartner;

public interface VehiclePartnerRepo {
	void addVehiclePartner(VehiclePartner v);
	void updateVehiclePartner(VehiclePartner v);
	public VehiclePartner viewVehiclePartner(int vehiclepartnerId);
	List<VehiclePartner> viewAllVehiclePartner();
	void deleteVehiclePartner(VehiclePartner v);
	public VehiclePartner getVehiclePartnerByName(String vehicle_partner_name);
	ArrayList<ArrayList<String>> getVehicleCount(String vehicle_partner_name);
	ArrayList<ArrayList<String>> getVehicleCount();
	public void updateVehicleCount(int vehicleId);
	void decrementVehicleCount(int vehicle_partner_id);
}
