package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Area;
import bean.Vehicles;

public class AreaRepoImpl implements AreaRepo{
	
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Override
	public void addArea(Area v) {
		// TODO Auto-generated method stub
		entityManager.persist(v);
	}

	@Override
	public void updateArea(Area v) {
		// TODO Auto-generated method stub
		entityManager.merge(v);
	}
	@Transactional
	@Override
	public void deleteArea(Area v) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Area c set c.record_status= :status"
				+" where c.area_id = :area_id");
		query.setParameter("status", "D");
		query.setParameter("area_id", v.getArea_id());
		int rowsupdated = query.executeUpdate();
	}

	@Override
	public List<Area> viewAll() {
		// TODO Auto-generated method stub
		List<Area> areaList = entityManager.createQuery("SELECT a FROM Area a where a.record_status='A'").getResultList();
		  return areaList;	}

	@Override
	public Area getArea(int AreaId) {
		// TODO Auto-generated method stub
		return entityManager.find(Area.class, AreaId)	;	
	}

}
