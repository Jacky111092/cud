package repository;

import bean.Campaign;
import bean.CampaignCreativeUpload;

public interface CampaignCreativeUploadRepo {

	void updateCreativeUploadsOfCampaign(CampaignCreativeUpload uploadFile);
	CampaignCreativeUpload getCreativeUploadsOfCampaign(Campaign campaign);
}
