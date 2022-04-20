package repository;

import java.util.ArrayList;
import java.util.List;

import bean.Campaign;
import bean.Campaign_And_Vehicle_Details;

public interface CampaignAndVehicleRepo {

	void addCampaignAndVehicleDetails(Campaign_And_Vehicle_Details campaign_and_vehicle_details);

	List<Campaign_And_Vehicle_Details> viewCampaignAndVehicle(Campaign campaign);

	void deleteVehicleAndCampaign(Campaign_And_Vehicle_Details campaign_and_vehicle_details);

	void editVehicleKilometreOfCampaign(Campaign_And_Vehicle_Details campaign_and_vehicle_details);

	Campaign_And_Vehicle_Details viewSpecificCampaignAndVehicle(Campaign_And_Vehicle_Details campaign_and_vehicle_details);
	
	ArrayList<Integer> viewTotalKmsRan(List<Campaign> c);
	
	ArrayList<Integer> viewCountOfVehicles(List<Campaign> c);

}
