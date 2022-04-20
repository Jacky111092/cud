package repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Campaign;
import bean.Campaign_And_Vehicle_Details;

public class CampaignAndVehicleRepoImpl implements CampaignAndVehicleRepo {
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Transactional
	@Override
	public void addCampaignAndVehicleDetails(Campaign_And_Vehicle_Details campaign_and_vehicle_details) {
		// TODO Auto-generated method stub
		entityManager.persist(campaign_and_vehicle_details);
	}
	@Override
	public List<Campaign_And_Vehicle_Details> viewCampaignAndVehicle(Campaign campaign) {
		// TODO Auto-generated method stub
		try
		{
		System.out.println("Inside Campaign iddddddddd"+campaign.getCampaignId());
		Query query = entityManager.createQuery("select c from Campaign_And_Vehicle_Details c where c.campaign = :campaign and c.record_status = 'A'");
		
		query.setParameter("campaign", campaign);
		List<Campaign_And_Vehicle_Details> cv = query.getResultList();
		for(Campaign_And_Vehicle_Details cvv : cv)
		{
			System.out.println("CV "+cvv.getLive_campaign_id());
		}
		return cv;
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	@Transactional
	@Override
	public void deleteVehicleAndCampaign(Campaign_And_Vehicle_Details campaign_and_vehicle_details) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Campaign_And_Vehicle_Details c set  c.record_status = 'D'"
				+ "where c.campaign = :campaign and c.vehicles = :vehicles");
		query.setParameter("campaign", campaign_and_vehicle_details.getCampaign());
		query.setParameter("vehicles", campaign_and_vehicle_details.getVehicles());
		int rowsupdated = query.executeUpdate();
	}
	@Transactional
	@Override
	public void editVehicleKilometreOfCampaign(Campaign_And_Vehicle_Details campaign_and_vehicle_details) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Campaign_And_Vehicle_Details c set  c.total_kms_ran = :total_kms_ran "
				+ "where c.vehicles = :vehicle and c.record_status = 'A' and c.live_campaign_id = :live_campaign_id");
		query.setParameter("total_kms_ran", campaign_and_vehicle_details.getTotal_kms_ran());
		query.setParameter("vehicle", campaign_and_vehicle_details.getVehicles());
		query.setParameter("live_campaign_id", campaign_and_vehicle_details.getLive_campaign_id());
		int rowsupdated = query.executeUpdate();
	}
	@Override
	public Campaign_And_Vehicle_Details viewSpecificCampaignAndVehicle(Campaign_And_Vehicle_Details campaign_and_vehicle_details) {
		// TODO Auto-generated method stub
		try
		{
		Query query = entityManager.createQuery("select c from Campaign_And_Vehicle_Details c where c.campaign = :campaign and c.vehicles = :vehicle and c.record_status = 'A'");
		
		query.setParameter("campaign", campaign_and_vehicle_details.getCampaign());
		query.setParameter("vehicle", campaign_and_vehicle_details.getVehicles());
		return (Campaign_And_Vehicle_Details) query.getSingleResult();
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	@Override
	public ArrayList<Integer> viewTotalKmsRan(List<Campaign> c) {
		// TODO Auto-generated method stub
		
		Query query = entityManager.createQuery("select sum(c.total_kms_ran) from Campaign_And_Vehicle_Details c "
				+ "where c.campaign in :campaign and c.record_status = 'A' group by c.campaign ");
		
		query.setParameter("campaign", c);
		ArrayList<Integer> resultList = (ArrayList<Integer>) query.getResultList();
		return  resultList;
		
	}
	@Override
	public ArrayList<Integer> viewCountOfVehicles(List<Campaign> c) {
		// TODO Auto-generated method stub
		try {
		Query query = entityManager.createQuery("select count(c.vehicles) from Campaign_And_Vehicle_Details c "
				+ "where c.campaign in :campaign and c.record_status = 'A' group by c.campaign ");
		
		query.setParameter("campaign", c);
		return  (ArrayList<Integer>) query.getResultList();
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}

}
