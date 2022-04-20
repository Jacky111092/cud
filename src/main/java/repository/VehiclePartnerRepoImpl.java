package repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Campaign;
import bean.VehiclePartner;
import bean.Zone;

public class VehiclePartnerRepoImpl implements VehiclePartnerRepo{
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Override
	public void addVehiclePartner(VehiclePartner v) {
		// TODO Auto-generated method stub
		entityManager.persist(v);

	}

	@Override
	public void updateVehiclePartner(VehiclePartner v) {
		// TODO Auto-generated method stub
		entityManager.merge(v);
	}

	@Override
	public VehiclePartner viewVehiclePartner(int vehiclepartnerId) {
		// TODO Auto-generated method stub
		try
		{
			return entityManager.find(VehiclePartner.class, vehiclepartnerId);	
		}
		catch(NoResultException nre)
		{
			return null;
		}
		}

	@Override
	public List<VehiclePartner> viewAllVehiclePartner() {
		// TODO Auto-generated method stub
		try{
			List<VehiclePartner> vehicle_partner = entityManager.createQuery("SELECT s FROM VehiclePartner s where s.record_status='A'").getResultList();
		
			return vehicle_partner;	
		}
		catch(NoResultException nre)
		{
			return null;
		}
		}
	
	@Transactional
	@Override
	public void deleteVehiclePartner(VehiclePartner v) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update VehiclePartner c set c.record_status= :status"
				+" where c.vehicle_partner_id = :vehicle_partner_id");
		query.setParameter("status", "D");
		query.setParameter("vehicle_partner_id", v.getVehicle_partner_id());
		int rowsupdated = query.executeUpdate();
	}
	@Override
	public VehiclePartner getVehiclePartnerByName(String vehicle_partner_name) {
		// TODO Auto-generated method stub
		try
		{
			Query query= entityManager.createQuery("SELECT a FROM VehiclePartner a where a.company_name= :vehicle_partner_name");
			query.setParameter("vehicle_partner_name", vehicle_partner_name);
			return (VehiclePartner) query.getSingleResult();
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	
	
	
	@Override
	public ArrayList<ArrayList<String>> getVehicleCount(/* String vehicle_partner_name */) {
		// TODO Auto-generated method stub
		
		try {
		Query query= entityManager.createQuery("SELECT vp.company_name,count(*) FROM VehiclePartner vp, Vehicles v  where v.owner_name = vp.company_name and v.record_status='A' and vp.record_status ='A' group by vp.company_name");
		System.out.println("Type of vehicle counttttt  "+query.getResultList().getClass());

		
		return  (ArrayList<ArrayList<String>>) query.getResultList();}
		catch(NoResultException nre)
		{
			return null;
		}
	}

	@Override
	public ArrayList<ArrayList<String>> getVehicleCount(String vehicle_partner_name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateVehicleCount(int vehicleId) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update VehiclePartner c set c.vehicle_count=c.vehicle_count +1"
				+" where c.vehicle_partner_id = :vehicleId");
		
		query.setParameter("vehicleId", vehicleId);
		int rowsupdated = query.executeUpdate();
	}

	@Override
	public void decrementVehicleCount(int vehicle_partner_id) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update VehiclePartner c set c.vehicle_count=c.vehicle_count -1"
				+" where c.vehicle_partner_id = :vehicle_partner_id");
		
		query.setParameter("vehicle_partner_id", vehicle_partner_id);
		int rowsupdated = query.executeUpdate();
	}
	
}
