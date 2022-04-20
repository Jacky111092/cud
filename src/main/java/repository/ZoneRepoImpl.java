package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Area;
import bean.Zone;

public class ZoneRepoImpl implements ZoneRepo{
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Override
	public void addZone(Zone z) {
		// TODO Auto-generated method stub
		entityManager.persist(z);
	}

	@Override
	public void updateZone(Zone z) {
		// TODO Auto-generated method stub
		entityManager.merge(z);
	}
	@Transactional
	@Override
	public void deleteZone(Zone z) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Zone z set z.record_status= :status"
				+" where z.zone_id = :zone_id");
		query.setParameter("status", "D");
		query.setParameter("zone_id", z.getZone_id());
		int rowsupdated = query.executeUpdate();
	}

	@Override
	public List<Zone> viewAll() {
		// TODO Auto-generated method stub
		List<Zone> zoneList = entityManager.createQuery("SELECT a FROM Zone a where a.record_status='A'").getResultList();
		  return zoneList;
	}

	@Override
	public Zone getZone(int zoneId) {
		// TODO Auto-generated method stub
		return entityManager.find(Zone.class, zoneId)	;
	}
	
	@Override
	public Zone getZoneByName(String zoneName) {
		// TODO Auto-generated method stub
		Query query= entityManager.createQuery("SELECT a FROM Zone a where a.zone_name= :zone_name");
		query.setParameter("zone_name", zoneName);
		return (Zone) query.getSingleResult();
	}
	@Override
	public List<Zone> getZoneById(List<Integer> zoneId)
	{
		Query query= entityManager.createQuery("SELECT a FROM Zone a where a.zone_id in :zone_id");
		query.setParameter("zone_id", zoneId);
		return (List<Zone>) query.getResultList();
	}

}
