package repository;

import java.util.List;

import bean.Zone;

public interface ZoneRepo {
	public void addZone(Zone z);
	public void updateZone(Zone z);
	public void deleteZone(Zone z);
	List<Zone> viewAll();
	public Zone getZone(int zoneId);
	public Zone getZoneByName(String zoneName);
	List<Zone> getZoneById(List<Integer> zoneId);
}
