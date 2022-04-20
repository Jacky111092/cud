package repository;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Campaign;
import bean.Vehicle;
import bean.VehiclePartner;
import bean.Vehicles;




public class VehicleRepositoryImpl implements VehicleRepository{

	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Transactional
	@Override
	public void addVehicle(Vehicles v)
	{
		entityManager.persist(v);
	}
	@Transactional
	@Override
	public void updateVehicle(Vehicles v) {
		entityManager.merge(v);
	}
	@Transactional
	@Override
	public void deleteVehicle(Vehicles v) {
		Query query = entityManager.createQuery("update Vehicles c set c.record_status= :status"
				+" where c.vehicleId = :vehicleId");
		query.setParameter("status", "D");
		query.setParameter("vehicleId", v.getVehicleId());
		int rowsupdated = query.executeUpdate();
	}
	@Transactional
	@Override
	public List<Vehicles> viewAll() {		
		try {  
				List<Vehicles> vechicleList = entityManager.createQuery("SELECT v FROM Vehicles v where v.record_status='A' order by v.vehicleId").getResultList();
				return vechicleList;
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	public Vehicles getVehicle(int vehicleId)
	{
		try {
				return entityManager.find(Vehicles.class, vehicleId)	;
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	@Transactional
	@Override
	public void addVehiclesToCampaign(Campaign campaignId, int vehicleId) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Vehicles c set c.campaign= :campaignId"
				+" where c.vehicleId = :vehicleId");
		query.setParameter("campaignId", campaignId);
		query.setParameter("vehicleId",vehicleId);
		int rowsupdated = query.executeUpdate();
	}
	@Transactional
	@Override
	public List<Vehicles> viewAllAvailableVehicles() {
		// TODO Auto-generated method stub
		try{
			List<Vehicles> vechicleList = entityManager.createQuery("SELECT v FROM Vehicles v where v.record_status='A' and v.campaign is null").getResultList();
			return vechicleList;
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	@Transactional
	@Override
	public void deleteVehiclesOfLiveCampaign(Campaign campaign, int vehicleId) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Vehicles c set c.campaign= null"
				+" where c.vehicleId = :vehicleId and c.campaign = :campaign");
		query.setParameter("vehicleId",vehicleId);
		query.setParameter("campaign", campaign);
		int rowsupdated = query.executeUpdate();
	}
	@Override
	public List<Vehicles> viewVehiclesByPartner(VehiclePartner vehicle_partner_id) {
		// TODO Auto-generated method stub
		
		Query query = entityManager.createQuery("select v from Vehicles v where v.record_status='A' and v.vehicle_partner = :vehicle_partner_id");
		query.setParameter("vehicle_partner_id",vehicle_partner_id);
		try
		{
			return query.getResultList();
		}
		catch(NoResultException nre)
		{
			return null;
		}
		
	}

	
	
}
