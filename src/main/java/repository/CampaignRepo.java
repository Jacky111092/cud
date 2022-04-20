package repository;

import java.util.List;

import bean.Campaign;
import bean.Campaign_And_Vehicle_Details;
import bean.Client;

public interface CampaignRepo {
	void addCampaign(Campaign c);
	void updateCampaign(Campaign c);
	public Campaign viewCampaign(int campaignId);
	List<Campaign> viewAllCampaign();
	void deleteCampaign(Campaign c);
	List<Campaign> viewAllApprovedCampaign();
	void updateVehicleCount(int campaignId);
	List viewAllLiveCampaigns();
	void updateCampaignToLive(Campaign campaign);
	/*
	 * void addCampaignAndVehicleDetails(Campaign_And_Vehicle_Details
	 * campaign_and_vehicle_details);
	 */
	void decrementVehicleCount(int campaignId);
	List<Campaign> viewCampaignByClientName(Client client_id);
	void updateCampaignToApproved(Campaign campaign);
	void updateDateOfCreative(Campaign campaign);
	void updateRemainingAmountForCampaign(Campaign campaign);
	
	
}
