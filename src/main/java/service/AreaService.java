package service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import bean.Area;
import bean.Area;
import repository.AreaRepo;


@Service
@EnableTransactionManagement
public class AreaService {
	@Autowired
	private AreaRepo areaRepo;
	
	@Transactional
	public void add(Area v) {
		 areaRepo.addArea(v);
	}
	
	@Transactional
	public Area getArea(int areaId)
	{
		return areaRepo.getArea(areaId);
	}
	
	@Transactional
	public void deleteArea(Area v)
	{
		areaRepo.deleteArea(v);
	}
	
	@Transactional
	public void updateArea(Area v)
	{
		areaRepo.updateArea(v);
	}
	
	
	public	List viewAllArea()
	{
		List areaList=areaRepo.viewAll();
		
		/*
		 * for(Area vb:areaList) { System.out.println("Area owner "+vb.getArea_name());
		 * }
		 */
		return areaList;
	}
}
