package repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import bean.VehicleRegistry;



public class RTORepositoryImpl implements RTORepository {

	
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;

	@Override
	@Transactional
	public VehicleRegistry getVehicle(VehicleRegistry userVehicle) {
		return entityManager.find(VehicleRegistry.class, userVehicle.getRegId());
	}
	
	
	

}
