package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Campaign;
import bean.Campaign_And_Vehicle_Details;
import bean.Client;

public class CampaignRepoImpl implements CampaignRepo {
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Transactional
	@Override
	public void addCampaign(Campaign c) {
		// TODO Auto-generated method stub
		entityManager.persist(c);
	}
	@Transactional
	@Override
	public void updateCampaign(Campaign c) {
		// TODO Auto-generated method stub
		entityManager.merge(c);
	}
	@Transactional
	@Override
	public Campaign viewCampaign(int campaignId) {
		// TODO Auto-generated method stub
		try
		{
		return entityManager.find(Campaign.class, campaignId);
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	@Transactional
	@Override
	public List<Campaign> viewAllCampaign() {
		// TODO Auto-generated method stub
		try {
		List<Campaign> campaignlist = entityManager.createQuery("SELECT s FROM Campaign s where  s.record_status='A'").getResultList();
		return campaignlist;
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	@Transactional
	@Override
	public void deleteCampaign(Campaign c) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Campaign c set c.record_status= :status"
				+" where c.campaignId = :campaignId");
		query.setParameter("status", "D");
		query.setParameter("campaignId", c.getCampaignId());
		int rowsupdated = query.executeUpdate();
	}
	@Transactional
	@Override
	public List<Campaign> viewAllApprovedCampaign() {
		// TODO Auto-generated method stub
		try {
		List<Campaign> campaignlist = entityManager.createQuery("SELECT s FROM Campaign s where s.status='Approved' and s.record_status='A'").getResultList();
		return campaignlist;
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	
	@Transactional
	@Override
	public void updateVehicleCount(int campaignId) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Campaign c set c.no_of_vehicles_assigned=c.no_of_vehicles_assigned +1"
				+" where c.campaignId = :campaignId");
		
		query.setParameter("campaignId", campaignId);
		int rowsupdated = query.executeUpdate();
	}
	@Transactional
	@Override
	public List viewAllLiveCampaigns() {
		// TODO Auto-generated method stub
		try {
		List<Campaign> campaignlist = entityManager.createQuery("SELECT s FROM Campaign s where s.status='Live' and s.record_status='A'").getResultList();
		return campaignlist;
		}
		catch(NoResultException nre)
		{
			return null;
		}
		}
	
	@Transactional
	@Override
	public void updateCampaignToLive(Campaign campaign) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Campaign c set c.status='Live', c.live_campaign_flag = 'Y', c.live_campaign_created_date = Sysdate"
				+" where c.campaignId = :campaignId");
		
		query.setParameter("campaignId", campaign.getCampaignId());
		int rowsupdated = query.executeUpdate();
	}
	/*
	 * @Override public void
	 * addCampaignAndVehicleDetails(Campaign_And_Vehicle_Details
	 * campaign_and_vehicle_details) { // TODO Auto-generated method stub
	 * entityManager.persist(campaign_and_vehicle_details); }
	 */
	@Transactional
	@Override
	public void decrementVehicleCount(int campaignId) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Campaign c set c.no_of_vehicles_assigned=c.no_of_vehicles_assigned -1"
				+" where c.campaignId = :campaignId");
		
		query.setParameter("campaignId", campaignId);
		int rowsupdated = query.executeUpdate();
	}
	@Override
	public List<Campaign> viewCampaignByClientName(Client client_id) {
		// TODO Auto-generated method stub
		try
		{
		Query query = entityManager.createQuery("SELECT s FROM Campaign s where s.client = :client_id and s.record_status='A'");
		query.setParameter("client_id", client_id);
		return query.getResultList();
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	@Transactional
	@Override
	public void updateCampaignToApproved(Campaign campaign) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Campaign c set c.status='Approved', c.payment_flag = 'Y', c.payment_created_date = Sysdate, c.payment_mode = :payment_mode"
				+" where c.campaignId = :campaignId");
		query.setParameter("payment_mode", campaign.getPayment_mode());

		query.setParameter("campaignId", campaign.getCampaignId());
		int rowsupdated = query.executeUpdate();
	}
	@Transactional
	@Override
	public void updateDateOfCreative(Campaign campaign) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update CampaignCreativeUpload c set  c.created_date = Sysdate"
				+" where c.campaign = :campaign");
		query.setParameter("campaign", campaign);

		
		int rowsupdated = query.executeUpdate();
	}
	@Transactional
	@Override
	public void updateRemainingAmountForCampaign(Campaign campaign) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Campaign c set c.remaining_amount = c.remaining_amount + :remaining_amount"
				+" where c.campaignId = :campaignId");
		query.setParameter("remaining_amount", campaign.getRemaining_amount());

		query.setParameter("campaignId", campaign.getCampaignId());
		int rowsupdated = query.executeUpdate();
	}

}
