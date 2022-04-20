package repository;

import java.util.List;

import bean.UploadFile;
import bean.Vehicles;

public interface FileRepo {

	void save(UploadFile uploadFile);

	void update(UploadFile uploadFile, Vehicles vehicle);

	UploadFile getFileById(Vehicles vehicle);

	void deleteFile(Vehicles vehicle);

	List<UploadFile> viewAllVehicleFile();

}
