package repository;

import java.util.List;

import bean.Campaign;
import bean.CampaignPhotos;
import bean.Campaign_And_Vehicle_Details;

public interface CampaignPhotosRepo {

	int updatePhotosOfCampaign(CampaignPhotos cp);

	void updateDateOfCampaignPhotos(int id);

	List<CampaignPhotos> getCampaignPhotos(Campaign_And_Vehicle_Details cv);

	List<CampaignPhotos> getCampaignPhotosByFileType(Campaign_And_Vehicle_Details cvd, String filetype);

}
