package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.UploadFile;
import bean.Vehicles;

public class FileRepoImpl implements FileRepo{
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Transactional
	@Override
	public void save(UploadFile uploadFile) {
		// TODO Auto-generated method stub
		entityManager.persist(uploadFile);
	}
	
	@Transactional
	@Override
	public void update(UploadFile uploadFile, Vehicles vehicle) {
		// TODO Auto-generated method stub
		/*
		 * Query query = entityManager.
		 * createQuery("update UploadFile f set f.data= :data and f.file_name = :file_name"
		 * +" where f.vehicle = :vehicless"); query.setParameter("data",
		 * uploadFile.getData()); query.setParameter("file_name",
		 * uploadFile.getFileName()); query.setParameter("vehicless",
		 * uploadFile.getVehicle()); int rowsupdated = query.executeUpdate();
		 */
		deleteFile(vehicle);
		entityManager.persist(uploadFile);
	}

	@Override
	public UploadFile getFileById(Vehicles vehicle) {
		// TODO Auto-generated method stub
		System.out.println("File for ehicle id "+vehicle.getVehicleId());
		Query query = entityManager.createQuery("select f from UploadFile f where f.record_status='A' and f.vehicle = :vehicless");
		query.setParameter("vehicless", vehicle);
		return (UploadFile) query.getSingleResult();
		}
	@Transactional
	@Override
	public void deleteFile(Vehicles vehicle) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update UploadFile f set f.record_status= :status"
				+" where f.vehicle = :vehicless");
		query.setParameter("status", "D");
		query.setParameter("vehicless", vehicle);
		int rowsupdated = query.executeUpdate();
	}

	@Override
	public List<UploadFile> viewAllVehicleFile() {
		// TODO Auto-generated method stub
		
		Query query = entityManager.createQuery("select f from UploadFile f where f.record_status='A' order by f.vehicle");
		
		return query.getResultList();
	}

}
