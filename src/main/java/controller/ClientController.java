package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.Admin;
import bean.Campaign;
import bean.CampaignCreativeUpload;
import bean.CampaignPhotos;
import bean.Campaign_And_Vehicle_Details;
import bean.Claim;
import bean.Client;
import bean.CustomerQueries;
import bean.IssuedTkt;
import bean.Policy;
import bean.Register;
import bean.Staff;
import bean.Wallet;
import service.AdminService;
import service.CampaignService;
import service.ClaimService;
import service.ClientService;
import service.CustomerQueryService;
import service.LoginService;
import service.PolicyService;
import service.StaffService;
import service.TicketService;

@Controller
public class ClientController {
	
	@Autowired
	private ClientService clientService;
	
	@Autowired
	private CampaignService campaignService;
	
	
	
	@RequestMapping("/addClient.do")
	public ModelAndView addClient(Client client, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		client.getWork_emailid();
		client.setRecord_status("A");
		System.out.println("Client details name"+client.getUsername()+" record_status"+client.getRecord_status());
		clientService.addClient(client);
		mav.addObject("allClientList", clientService.viewAllClients());
		mav.setViewName("Client");
		return mav;
	}
	
	@RequestMapping(value="/editClient.do", params = "edit")
	public ModelAndView editClient(Client client, HttpSession session) {
		System.out.println("asdfghjkasdfghjkl"+client.getClient_id());
		
		ModelAndView mav =new ModelAndView();
		mav.addObject("allClientList", clientService.viewClient(client.getClient_id()));
		mav.setViewName("EditClient");
		return mav;
	}
	
	@RequestMapping(value = "/updateClient.do")
	public ModelAndView updateClient(Client client, HttpSession session) {
		System.out.println("asdfghjkasdfghjkl"+client.getWork_emailid());
		client.setRecord_status("A");
		Client clientt = clientService.viewClientByMail(client.getWork_emailid());
		client.setPassword(clientt.getPassword());
		ModelAndView mav =new ModelAndView();
		clientService.updateClient(client);
		mav = viewAllClients(client, session);
		
		return mav;
	}
	
	@RequestMapping(value = "/updateClientViaClient.do")
	public ModelAndView updateClientViaClient(Client client, HttpSession session) {
		System.out.println("asdfghjkasdfghjkl"+client.getWork_emailid());
		client.setRecord_status("A");
		ModelAndView mav =new ModelAndView();
		clientService.updateClient(client);
		Client new_client = clientService.viewClient(client.getClient_id());
		mav.addObject("ClientDetails",new_client);
		mav.setViewName("bohni_client_profile");
		
		return mav;
	}
	
	@RequestMapping(value="/editClient.do", params = "delete")
	public ModelAndView deleteClient(Client client, HttpSession session) {
		System.out.println("asdfghjkasdfghjkl"+client.getWork_emailid());
		ModelAndView mav =new ModelAndView();
		/*
		 * mav.addObject("allClientList",
		 * clientService.viewClient(client.getWork_emailid()));
		 * mav.setViewName("EditClient");
		 */
		clientService.deleteClient(client);
		mav = viewAllClients(client, session);
		return mav;
	}
	
	
	@RequestMapping("/viewAllClients.do")
	public ModelAndView viewAllClients(Client client, HttpSession session) {
		System.out.println("qwertyui"+client.getPersonal_emailid());
		ModelAndView mav =new ModelAndView();
		mav.addObject("allClientList", clientService.viewAllClients());
		mav.setViewName("ViewAllClients");
		return mav;
	}
	
	@RequestMapping("/checkClientMailPass.do")
	public ModelAndView checkClientMailPass(Client client, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		
		System.out.println("Client details name"+client.getUsername()+" record_status"+client.getRecord_status());
		Client clientt = clientService.viewClientByMailPass(client);
		if(clientt == null) {
			mav.addObject("invalid", "Invalid User ID/Password");
			mav.setViewName("bohni_brand_and_agencies_login_mail");
			
		} else {
		mav.addObject("ClientDetails",clientt);
		
		List<Campaign> allcampaignList = campaignService.viewCampaignByClientName(clientt);
		mav.addObject("allCampaignList",allcampaignList);
		List<List<Campaign_And_Vehicle_Details>> cv = new ArrayList<List<Campaign_And_Vehicle_Details>>();
		List<List<Wallet>> wallet = new ArrayList<List<Wallet>>();
		ArrayList<Integer> totalKmsRan = new ArrayList<Integer>();
		ArrayList<Integer> countOfVehicles = new ArrayList<Integer>();
		
		 System.out.println("allcampaignListtt "+allcampaignList.isEmpty()); 
		if(null!=allcampaignList && !allcampaignList.isEmpty())
		{
		for(Campaign c : allcampaignList)
		{
			System.out.println("campaign idddddddd "+c.getCampaignId());
			cv.add( campaignService.viewCampaignAndVehicle(c));
			wallet.add(campaignService.viewAllWalletForCampaign(c));
		}
		
		
		totalKmsRan = campaignService.viewTotalKmsRan(allcampaignList);
		countOfVehicles = campaignService.viewCountOfVehicles(allcampaignList);
		
		}
		/*
		 * for(Campaign c : allcampaignList) {
		 * cvd.addAll(campaignService.viewTotalAndCount(c)); }
		 */
		mav.addObject("allCampaignAndVehicle",cv);
		mav.addObject("TotalKmsRan",totalKmsRan);
		mav.addObject("CountOfVehicles", countOfVehicles);
		mav.addObject("allWallet",wallet);
		/*
		 * System.out.println("C and V "+cvd.get(0).get(0));
		 */		/*
		 * for(Integer i:cvd) { System.out.println("c and v and i"+i.intValue()); }
		 */
		/*
		 * System.out.println("C and V vv"+cvd.get(0).toString());
		 * 
		 * System.out.println("C and V vv"+cvd.get(0).intValue());
		 */
		//mav.addObject("allClientList", clientService.viewAllClients());
		session.setAttribute("clientt",clientt );
		
		mav.setViewName("bohni_client_overall_dashboard");
		
		}
		return mav;
	}
	@RequestMapping("/viewClientDashboard.do")
	public ModelAndView viewClientDashboard(Client client, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		Client clientt = clientService.viewClient(client.getClient_id());
		mav.addObject("ClientDetails",clientt);
		
		List<Campaign> allcampaignList = campaignService.viewCampaignByClientName(clientt);
		mav.addObject("allCampaignList",allcampaignList);
		List<List<Campaign_And_Vehicle_Details>> cv = new ArrayList<List<Campaign_And_Vehicle_Details>>();
		List<List<Wallet>> wallet = new ArrayList<List<Wallet>>();
		ArrayList<Integer> totalKmsRan = new ArrayList<Integer>();
		ArrayList<Integer> countOfVehicles = new ArrayList<Integer>();
		if(null!=allcampaignList && !allcampaignList.isEmpty())
		{
		for(Campaign c : allcampaignList)
		{
			System.out.println("campaign idddddddd "+c.getCampaignId());
			cv.add( campaignService.viewCampaignAndVehicle(c));
			wallet.add(campaignService.viewAllWalletForCampaign(c));
		}
		
		
		totalKmsRan = campaignService.viewTotalKmsRan(allcampaignList);
		countOfVehicles = campaignService.viewCountOfVehicles(allcampaignList);
		}
		
		/*
		 * for(Campaign c : allcampaignList) {
		 * cvd.addAll(campaignService.viewTotalAndCount(c)); }
		 */
		mav.addObject("allCampaignAndVehicle",cv);
		mav.addObject("TotalKmsRan",totalKmsRan);
		mav.addObject("CountOfVehicles", countOfVehicles);
		mav.addObject("allWallet",wallet);
		/*
		 * System.out.println("C and V "+cvd.get(0).get(0));
		 */		/*
		 * for(Integer i:cvd) { System.out.println("c and v and i"+i.intValue()); }
		 */
		/*
		 * System.out.println("C and V vv"+cvd.get(0).toString());
		 * 
		 * System.out.println("C and V vv"+cvd.get(0).intValue());
		 */
		//mav.addObject("allClientList", clientService.viewAllClients());
		session.setAttribute("clientt",clientt );
		mav.setViewName("bohni_client_overall_dashboard");
		return mav;
	}
	
	@RequestMapping("/checkClientLogin.do")
	public ModelAndView checkClientLogin(Client client, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		
		System.out.println("Client details name"+client.getUsername()+" record_status"+client.getRecord_status());
		Client clientt = clientService.viewClientByMail(client.getWork_emailid());
		if(clientt == null) {
			mav.addObject("invalid", "Invalid User ID/Password");
			mav.setViewName("bohni_brand_and_agencies_login");
			
		} else {
		mav.addObject("ClientDetails",clientt);
		
		List<Campaign> allcampaignList = campaignService.viewCampaignByClientName(clientt);
		mav.addObject("allCampaignList",allcampaignList);
		List<List<Campaign_And_Vehicle_Details>> cv = new ArrayList<List<Campaign_And_Vehicle_Details>>();
		List<List<Wallet>> wallet = new ArrayList<List<Wallet>>();
		ArrayList<Integer> totalKmsRan = new ArrayList<Integer>();
		ArrayList<Integer> countOfVehicles = new ArrayList<Integer>();
		
		 System.out.println("allcampaignListtt "+allcampaignList.isEmpty()); 
		if(null!=allcampaignList && !allcampaignList.isEmpty())
		{
		for(Campaign c : allcampaignList)
		{
			System.out.println("campaign idddddddd "+c.getCampaignId());
			cv.add( campaignService.viewCampaignAndVehicle(c));
			wallet.add(campaignService.viewAllWalletForCampaign(c));
		}
		
		
		totalKmsRan = campaignService.viewTotalKmsRan(allcampaignList);
		countOfVehicles = campaignService.viewCountOfVehicles(allcampaignList);
		
		}
		/*
		 * for(Campaign c : allcampaignList) {
		 * cvd.addAll(campaignService.viewTotalAndCount(c)); }
		 */
		mav.addObject("allCampaignAndVehicle",cv);
		mav.addObject("TotalKmsRan",totalKmsRan);
		mav.addObject("CountOfVehicles", countOfVehicles);
		mav.addObject("allWallet",wallet);
		/*
		 * System.out.println("C and V "+cvd.get(0).get(0));
		 */		/*
		 * for(Integer i:cvd) { System.out.println("c and v and i"+i.intValue()); }
		 */
		/*
		 * System.out.println("C and V vv"+cvd.get(0).toString());
		 * 
		 * System.out.println("C and V vv"+cvd.get(0).intValue());
		 */
		//mav.addObject("allClientList", clientService.viewAllClients());
		session.setAttribute("clientt",clientt );
		mav.setViewName("bohni_client_overall_dashboard");
		
		}
		return mav;
	}
	
	@RequestMapping("/checkOTP.do")
	public ModelAndView checkOTP(Client client,HttpSession session) throws UnsupportedEncodingException {
		ModelAndView mav = new ModelAndView();
		String username = "ZOCOMED";
		//Your authentication key
		String authkey = "ca2859c408XX";
		//Multiple mobiles numbers separated by comma (max 200)
		String mobiles ="+91"+ client.getPhone_no();//"+918291155155"
		System.out.println("mobiless "+mobiles);
		//Sender ID,While using route4 sender id should be 6 characters long.
		String senderId = "alerts";
		

	    // this will convert any number sequence into 6 character.
		Random rnd = new Random();
	    int number = rnd.nextInt(999999);
		String otp = String.format("%06d", number);
		//Your message to send, Add URL encoding here.
		String message = "your One Time Password is: {"+otp+"} Thank You";
		System.out.println("OTP is "+otp);
		//define route
		String accusage="1";

		//Prepare Url
		URLConnection myURLConnection=null;
		URL myURL=null;
		BufferedReader reader=null;

		//encoding message
		String encoded_message=URLEncoder.encode(message,java.nio.charset.StandardCharsets.UTF_8.toString());

		//Send SMS API
		String mainUrl="http://mobicomm.dove-sms.com//generateOtp.jsp?";
		             
		//Prepare parameter string
		StringBuilder sbPostData= new StringBuilder(mainUrl);
		sbPostData.append("userid="+username);
		sbPostData.append("&key="+authkey);
		sbPostData.append("&mobileno="+mobiles);
		sbPostData.append("&timetoalive="+"200");
		sbPostData.append("&message="+encoded_message);
		
		/*
		 * sbPostData.append("&accusage="+accusage);
		 * sbPostData.append("&senderid="+senderId);
		 */
		                 
		//final string
		mainUrl = sbPostData.toString();
		System.out.println("urllll  "+mainUrl);
		Client clientt = clientService.viewClientByPhoneNo(client);
		if(null!=clientt)
		{
				session.setAttribute("clientt",clientt );
				try
				{
				//prepare connection
				myURL = new URL(mainUrl);
				myURLConnection = myURL.openConnection();
				myURLConnection.connect();
				reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
				//reading response
				String response;
				while ((response = reader.readLine()) != null)
				//print response
				System.out.println(response);
				                       
				//finally close connection
				reader.close();
				}
				catch (IOException e)
				{
				e.printStackTrace();
				mav.setViewName("bohni_brand_and_agencies_login");
				}
				mav.setViewName("bohni_verifyOTP");
		}
		else {
			mav.addObject("invalid", "Phone number doesn't exists, Kindly signup");
			mav.setViewName("bohni_brand_and_agencies_login");
		}
		return mav;
	}
	@RequestMapping("/verifyClientOtp.do")
	public ModelAndView verifyClientOtp(Client client,@RequestParam("one") String one,@RequestParam("two") String two,@RequestParam("three") String three,
			@RequestParam("four") String four,@RequestParam("five") String five,@RequestParam("six") String six,HttpSession session) throws UnsupportedEncodingException {
		ModelAndView mav = new ModelAndView();
		
		String otp = one+two+three+four+five+six;
		
		System.out.println("OTP is "+otp);
		System.out.println("Phone no is "+("+91"+client.getPhone_no()));
		
		//Prepare Url
		URLConnection myURLConnection=null;
		URL myURL=null;
		BufferedReader reader=null;

		String mainUrl="http://mobicomm.dove-sms.com//validateOtpApi.jsp?";
		             
		//Prepare parameter string
		StringBuilder sbPostData= new StringBuilder(mainUrl);
		sbPostData.append("otp="+otp);
		sbPostData.append("&mobileno="+("+91"+client.getPhone_no()));
		      
		//final string
		mainUrl = sbPostData.toString();
		System.out.println("urllll  "+mainUrl);
		//session.setAttribute("clientt",client );
		try
		{
		//prepare connection
			myURL = new URL(mainUrl);
			myURLConnection = myURL.openConnection();
			myURLConnection.connect();
			reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
			//reading response
			String response;
			while ((response = reader.readLine()) != null)
			if(null!=response && response.length()>12 && response.charAt(0)!='\0' )//&& response.charAt(10)!='\0' && response.charAt(11)!='\0'
			{
			//print response
			System.out.println("Yooooo responseee" +response);
			
			  System.out.println("0 char"+response.charAt(0));
			  System.out.println("10 char"+response.charAt(10));
			 
			System.out.println("11 char"+response.charAt(11));
			if (response.charAt(11)=='s')
			{	mav = viewClientDashboard(client,session);
			}
			else
			{	
				mav.addObject("invalid", "Incorrect OTP, kindly try again");
				mav.setViewName("bohni_brand_and_agencies_login");
			}
			}
			                       
			//finally close connection
			reader.close();
		}
		catch (IOException e)
		{
		e.printStackTrace();
		mav.setViewName("bohni_brand_and_agencies_login");
		}
		
		//mav.setViewName("bohni_client_overall_dashboard");
		return mav;
	}
	@RequestMapping(value="/viewTimeline.do",method = RequestMethod.GET)
	public ModelAndView viewTimeline(@RequestParam int client_id, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		System.out.println("Client timeline "+client_id);
		Client client = new Client();
		client.setClient_id(client_id);
		List<Campaign> allcampaignList = campaignService.viewCampaignByClientName(client);
		mav.addObject("allCampaignList",allcampaignList);
		List<List<Campaign_And_Vehicle_Details>> cv = new ArrayList<List<Campaign_And_Vehicle_Details>>();
		List<CampaignCreativeUpload> ccu = new ArrayList<CampaignCreativeUpload>();
		List<List<CampaignPhotos>> campaignphotos = new ArrayList<List<CampaignPhotos>>();
		ArrayList<Integer> totalKmsRan = new ArrayList<Integer>();
		ArrayList<Integer> countOfVehicles = new ArrayList<Integer>();
		if(null!=allcampaignList && !allcampaignList.isEmpty())
		{
		for(Campaign c : allcampaignList)
		{
			System.out.println("campaign idddddddd "+c.getCampaignId());
			cv.add( campaignService.viewCampaignAndVehicle(c));
			ccu.add(campaignService.getCreativeUploadsOfCampaign(c));
			
		}
		System.out.println("C&VVVVV "+cv);
		if(null!=cv && !cv.isEmpty())
		{
		for (List<Campaign_And_Vehicle_Details> list_cav : cv)
		{	System.out.println("C&VVVVVlist "+list_cav);
			if(null!=list_cav && !list_cav.isEmpty())
			{
				System.out.println("C&VVVVVlistttttt "+list_cav);
			for(Campaign_And_Vehicle_Details cav: list_cav )
			{
				campaignphotos.add(campaignService.getCampaignPhotos(cav));
			}
			}
			
		}
		}
		System.out.println("Campaign Photosss "+campaignphotos);
		
		
		totalKmsRan = campaignService.viewTotalKmsRan(allcampaignList);
		countOfVehicles = campaignService.viewCountOfVehicles(allcampaignList);
		}
		/*
		 * for(Campaign c : allcampaignList) {
		 * cvd.addAll(campaignService.viewTotalAndCount(c)); }
		 */
		mav.addObject("allCampaignAndVehicle",cv);
		mav.addObject("TotalKmsRan",totalKmsRan);
		mav.addObject("CountOfVehicles", countOfVehicles);
		mav.addObject("listCampaignCreativeUpload", ccu);
		mav.addObject("listCampaignPhotos",campaignphotos);
		
		//is_payment_done method check
		
		
		mav.setViewName("bohni_client_timelines");
		return mav;
	}
	
	@RequestMapping(value="/viewCampaignReport.do",method = RequestMethod.GET)
	public ModelAndView viewCampaignReport(@RequestParam int client_id, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		System.out.println("Client timeline "+client_id);
		Client client = new Client();
		client.setClient_id(client_id);
		List<Campaign> allcampaignList = campaignService.viewCampaignByClientName(client);
		mav.addObject("allCampaignList",allcampaignList);
		mav.setViewName("bohni_client_report");
		return mav;
		
	}
	
	
	@RequestMapping(value="/downloadWorkProofs.do", params = "Proof of Work 1") 
	public ModelAndView
	downloadWorkProofs(Campaign campaign, HttpSession session) {
	  //System.out.println("Campaign Detailssss "+campaign.getCampaign_name());
	  
	  List<Campaign_And_Vehicle_Details> listcvd = campaignService.viewCampaignAndVehicle(campaign);
	  List<List<CampaignPhotos>> listCampaignPhotos = new ArrayList<List<CampaignPhotos>>();
	  String filetype= "Proof of Work 1";
	  for (Campaign_And_Vehicle_Details cvd : listcvd)
	  {
		  listCampaignPhotos.add(campaignService.getCampaignPhotosByFileType(cvd,  filetype));
	  }
	  
	  
	  ModelAndView mav =new ModelAndView(); 
	  mav.addObject("listCampaignPhotos",
			  listCampaignPhotos);
	  String imgLen="";

		/*
		 * if(rs1.next()){
		 * 
		 * imgLen = rs1.getString(1);
		 * 
		 * }
		 * 
		 * rs1 = st1.executeQuery(strQuery);
		 * 
		 * if(rs1.next()){
		 * 
		 * int len = imgLen.length();
		 * 
		 * byte [] rb = new byte[len];
		 * 
		 * InputStream readImg = rs1.getBinaryStream(1);
		 * 
		 * int index=readImg.read(rb, 0, len);
		 * 
		 * st1.close();
		 * 
		 * response.reset();
		 * 
		 * response.setContentType("image/jpg");
		 * 
		 * response.setHeader("Content-disposition","attachment; filename=" +filename);
		 * 
		 * response.getOutputStream().write(rb,0,len);
		 * 
		 * response.getOutputStream().flush();
		 */
	  mav.setViewName("EditCampaign2"); 
	  
	  return mav; 
	  
	}
	
	
	@RequestMapping(value="/viewWallet.do",method = RequestMethod.GET)
	public ModelAndView viewWallet(@RequestParam int client_id, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		System.out.print(client_id);
		/*
		 * System.out.println("Client details name"+client.getUsername()
		 * +" record_status"+client.getRecord_status()); Client clientt =
		 * clientService.viewClientByMail(client.getWork_emailid());
		 * mav.addObject("ClientDetails",clientt);
		 */
		Client client = new Client();
		client.setClient_id(client_id);
		List<Campaign> allcampaignList = campaignService.viewCampaignByClientName(client);
		List<List<Wallet>> wallet = new ArrayList<List<Wallet>>();
		for(Campaign c : allcampaignList)
		{
			System.out.println("asdfghjkl "+ c.getAmount());
			wallet.add(campaignService.viewAllWalletForCampaign(c));
		}
		mav.addObject("allCampaignList",allcampaignList);
		mav.addObject("allWallet",wallet);
		mav.setViewName("bohni_client_wallet");
		return mav;
	}
	
	@RequestMapping(value="/viewClientProfile.do",method = RequestMethod.GET)
	public ModelAndView viewClientProfile(@RequestParam int client_id, HttpSession session) {
		ModelAndView mav =new ModelAndView();
		Client client = clientService.viewClient(client_id);
		mav.addObject("ClientDetails",client);
		mav.setViewName("bohni_client_profile");
		return mav;
		
	}
	
	@RequestMapping("/logoutClient.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("Bohni_index");
		return mav;
		
		
	}

}
