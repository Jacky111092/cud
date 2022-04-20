package controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import bean.UploadFile;
import bean.Vehicle;
import bean.VehiclePartner;
import bean.Vehicle;
import bean.Vehicles;
import repository.FileRepo;
import service.VehiclePartnerService;
import service.VehicleService;
import service.VehicleService;

@Controller
public class FileController {
	@Autowired
	private FileRepo fileRepo;
	
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver getCommonsMultipartResolver() {
	    CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
	    multipartResolver.setMaxUploadSize(20971520);   // 20MB
	    multipartResolver.setMaxInMemorySize(1048576);  // 1MB
	    return multipartResolver;
	}
	//file upload
	  @RequestMapping(value = "/doUpload.do", method = RequestMethod.POST)
	    public String handleFileUpload(HttpServletRequest request,
	            @RequestParam CommonsMultipartFile[] fileUpload, String fileType, Vehicles vehicleId) throws Exception {
	          
	        if (fileUpload != null && fileUpload.length > 0) {
	            for (CommonsMultipartFile aFile : fileUpload){
	                  
	                System.out.println("Saving file: " + aFile.getOriginalFilename() + " File sizes "+aFile.getOriginalFilename().length()+" "+aFile.getBytes().length);
	                 
	                UploadFile uploadFile = new UploadFile();
	                uploadFile.setFileName(aFile.getOriginalFilename());
	                uploadFile.setData(aFile.getBytes());
	                uploadFile.setFile_type(fileType);
	                uploadFile.setVehicle(vehicleId);
	                uploadFile.setRecord_status("A");
	                fileRepo.save(uploadFile);               
	            }
	        }
	  
	        return "Success";
	    }  

		/*
		 * @RequestMapping(value = "/doUpload.do", method = RequestMethod.POST)
		 */
	    public String handleFileUploadForUpdate(HttpServletRequest request,
	            @RequestParam CommonsMultipartFile[] fileUpload, String fileType, Vehicles vehicle) throws Exception {
	          
	        if (fileUpload != null && fileUpload.length > 0) {
	            for (CommonsMultipartFile aFile : fileUpload){
	                if( null!=aFile.getOriginalFilename() && 0!=aFile.getOriginalFilename().length() && 0!=aFile.getBytes().length)
	                {
		                System.out.println("Saving file: " + aFile.getOriginalFilename() + " File sizes "+aFile.getOriginalFilename().length()+" "+aFile.getBytes().length);
		                 
		                UploadFile uploadFile = new UploadFile();
		                uploadFile.setFileName(aFile.getOriginalFilename());
		                uploadFile.setData(aFile.getBytes());
		                uploadFile.setFile_type(fileType);
		                uploadFile.setVehicle(vehicle);
		                uploadFile.setRecord_status("A");
		                fileRepo.update(uploadFile, vehicle);     
	                }
	            }
	        }
	  
	        return "Success";
	    }
	public UploadFile getFileById(Vehicles vehicle) {
		return fileRepo.getFileById(vehicle);
	}
	public void deleteFile(Vehicles vehicle) {
		// TODO Auto-generated method stub
		fileRepo.deleteFile(vehicle);
	}
	public List viewAllVehicleFile() {
		// TODO Auto-generated method stub
		return fileRepo.viewAllVehicleFile();
	}  
}
