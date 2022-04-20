package repository;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Campaign;
import bean.CampaignCreativeUpload;

public class CampaignCreativeUploadRepoImpl implements CampaignCreativeUploadRepo{
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Transactional
	@Override
	public void updateCreativeUploadsOfCampaign(CampaignCreativeUpload uploadFile) {
		// TODO Auto-generated method stub
		entityManager.persist(uploadFile);
	}
	@Override
	public CampaignCreativeUpload getCreativeUploadsOfCampaign(Campaign campaign) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("Select cu from CampaignCreativeUpload cu where cu.record_status='A'"
				+ " and cu.campaign= :campaign");
		query.setParameter("campaign", campaign);
		try
		{
		return (CampaignCreativeUpload) query.getSingleResult();
		}
		catch(NoResultException nre){
			return null;
		}
	}

}
