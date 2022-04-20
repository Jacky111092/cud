package repository;

import bean.Campaign_And_Vehicle_Details;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Campaign;
import bean.CampaignPhotos;
import bean.Campaign_And_Vehicle_Details;

public class CamPaignPhotosRepoImpl implements CampaignPhotosRepo {
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Transactional
	@Override
	public int updatePhotosOfCampaign(CampaignPhotos cp) {
		// TODO Auto-generated method stub
		 entityManager.persist(cp);
		 entityManager.flush();
		 return cp.getId();
	}
	@Transactional
	@Override
	public void updateDateOfCampaignPhotos(int id) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update CampaignPhotos c set  c.created_date = Sysdate"
				+" where c.id = :id");
		query.setParameter("id", id);

		
		int rowsupdated = query.executeUpdate();
	}
	@Override
	public List<CampaignPhotos> getCampaignPhotos(Campaign_And_Vehicle_Details cv) {
		// TODO Auto-generated method stub
		
		
		  Query query = entityManager.createQuery("select c from CampaignPhotos c"
		  +" where c.cv = :cv"); 
		  query.setParameter("cv", cv);
		 
		return query.getResultList();
	}
	@Override
	public List<CampaignPhotos> getCampaignPhotosByFileType(Campaign_And_Vehicle_Details cvd, String filetype) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("select c from CampaignPhotos c"
				  +" where c.cv in :cv and c.file_type = :filetype"); 
				  query.setParameter("cv", cvd);
				  query.setParameter("filetype", filetype);
				 
				return query.getResultList();
	}

}
