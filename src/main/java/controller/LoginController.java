package controller;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.Login;
import bean.Policy;
import bean.Register;
import bean.Staff;
import repository.VehicleRepositoryImpl;
import service.LoginService;
import service.NewPasswordService;
import service.PolicyService;
import service.QuestionService;
import service.VehicleService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@Autowired
	private QuestionService qservice;
	@Autowired
	private PolicyService pservice;

	
	@RequestMapping("/login.do")
	public ModelAndView checkLogin(Login login, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String usertype = null;
		Register user = loginService.validateUser(login);
		if(user == null) {
			mav.addObject("loginmessage", "Invalid EmailID/Password");
			mav.setViewName("customer");
			
			
		} else {Set<Policy> p=pservice. getAllpolicy(user);
		
		
		if(!p.isEmpty())
		{
			mav.addObject("name", " " + user.getName());
		mav.setViewName("home2exist");
		
		usertype="existinguser";

		}
	else {
		usertype="newuser";
		mav.addObject("name", " " + user.getName());
		mav.setViewName("home");
	}
		session.setAttribute("user",user );
			
		}
		session.setAttribute("usertype", usertype);

		return mav;
	}
	
	
	@RequestMapping("/register.do")
	public ModelAndView register(Register user,HttpSession session,HttpServletRequest request) {
	ModelAndView mav = new ModelAndView();
	Register checkUser=loginService.getUser(user.getEmailid());
	if(checkUser==null)
	{
	user.setQuestionBean(qservice.getQuestion(Integer.parseInt(request.getParameter("questionid"))));
	mav.setViewName("customer");
	loginService.registerUser(user);	
	}
	else
	{
		mav.addObject("message","Account with the given EmailId already exist");
		mav.setViewName("SignUp");
	}
	return mav;
	}
	
	@RequestMapping("/reset.do")
	public ModelAndView reset(Login login,int questionid,String answer, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Register user=loginService.getUser(login.getEmailid());
		session.setAttribute("user", user);
		if(user!=null&&user.getQuestionBean()!=null&&user.getQuestionBean().getQuestionId()==questionid&&user.getAnswer().equals(answer)) {
			mav.setViewName("Resetpass");
		}
		else {
			mav.addObject("invalidmessage", "Our Records didn't match the Details provided by you");
			mav.setViewName("Forget");
		}
		return mav;
	}
	
	@RequestMapping("/updatepassword.do")
	public ModelAndView updatepassword(String password, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Register user=(Register) session.getAttribute("user");
		System.out.println(user.getEmailid());
		user.setPassword(password);
		loginService.updateUser(user);
		mav.setViewName("customer");
		return mav;
		
		
	}
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("index");
		return mav;
		
		
	}
	
		@RequestMapping("/requestCall.do")
		public ModelAndView callBackRequest(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Register user=(Register) session.getAttribute("user");
		user=loginService.getUser(user.getEmailid());
		String usertype=(String) session.getAttribute("usertype");
		if(usertype.equals("newuser"))
		{
			if(user.isCallBackrequest())
			{
				mav.addObject("message","You have already applied for Call Request our staff will get back to you soon");
			}
			else
			{
			mav.addObject("message","Your CallRequest has been raised!");
			user.setCallBackrequest(true);
			loginService.updateUser(user);
			}
			mav.setViewName("Requestcall");

		}
		else if(usertype.equals("existinguser"))
		{
			if(user.isCallBackrequest())
			{
				mav.addObject("message","You have already applied for Call Request our staff will get back to you soon");
			}
			else
			{
			mav.addObject("message","Your CallRequest has been raised!");
			user.setCallBackrequest(true);
			loginService.updateUser(user);
			}
			mav.setViewName("Requestcall2");
		}
		return mav;
		
		
	}
}




