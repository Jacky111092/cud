package repository;

import java.util.List;

import bean.Area;

public interface AreaRepo {
	public void addArea(Area v);
	public void updateArea(Area v);
	public void deleteArea(Area v);
	List<Area> viewAll();
	public Area getArea(int AreaId);
}
