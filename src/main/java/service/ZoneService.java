package service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import bean.Zone;
import bean.Zone;
import repository.ZoneRepo;


@Service
@EnableTransactionManagement
public class ZoneService {
	@Autowired
	private ZoneRepo zoneRepo;
	
	@Transactional
	public void add(Zone z) {
		 zoneRepo.addZone(z);
	}
	
	@Transactional
	public Zone getZone(int zoneId)
	{
		return zoneRepo.getZone(zoneId);
	}
	
	@Transactional
	public Zone getZoneByName(String zoneName)
	{
		return zoneRepo.getZoneByName(zoneName);
	}
	
	@Transactional
	public List getZoneById(List zoneId)
	{
		return zoneRepo.getZoneById(zoneId);
	}
	
	@Transactional
	public void deleteZone(Zone z)
	{
		zoneRepo.deleteZone(z);
	}
	
	@Transactional
	public void updateZone(Zone z)
	{
		zoneRepo.updateZone(z);
	}
	
	
	public	List viewAllZone()
	{
		List<Zone> zoneList=zoneRepo.viewAll();
		
		for(Zone z:zoneList)
		{
			System.out.println("Zone name "+z.getZone_name());
		}
		return zoneList;
	}
	
	
}
