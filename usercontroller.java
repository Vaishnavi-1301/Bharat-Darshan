package bharatdarshan.controller;

import java.io.FileNotFoundException;

import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.StandardOpenOption;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bharatdarshan.model.user;
import bharatdarshan.model.review;
import bharatdarshan.model.booking;
import org.springframework.util.StringUtils;
import bharatdarshan.service.EmailService;
import bharatdarshan.service.userservices;

@Controller
public class usercontroller 
{
	Random random = new Random(1000);
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	userservices us;
	
	@Autowired
	private EmailService emailService;
	
	
	//User Registration
	
	@PostMapping("/userregister")
	public String register(@ModelAttribute("u")user u)
	{
		if(us.getuserByEmail(u.getEmail())!=null) {
			return "/alerts/email_already_exists";
		}
		if(u.getPassword().equals(u.getConfpassword()))
		{
			u.setPassword(passwordEncoder.encode(u.getPassword()));
			u.setConfpassword(passwordEncoder.encode(u.getConfpassword()));
			
		us.registration(u);
		return "/alerts/registration_success";
		}
		else 
		{
			return "/alerts/registration_failed";
		}
	}
	
	
	//user login
	@PostMapping("/loginuser")
	public ModelAndView loginuser(@ModelAttribute("u")user u,HttpSession session)
	{
		user user=us.getuserByEmail(u.getEmail());
		String HashedPassword = "";
		
		if(us.getuserByEmail(u.getEmail())==null) {
			return new ModelAndView("/alerts/invalid_user");
		}
		
		if(user != null)
		{
			HashedPassword=user.getPassword();
			
		}
		
		boolean isPasswordMatched = passwordEncoder.matches(u.getPassword(), HashedPassword);
		
		if(user != null && isPasswordMatched) 
		{
			session.setAttribute("user",u);
			user userdetails=us.getuserByEmail(u.getEmail());
			return new ModelAndView("redirect:index","userdetails",userdetails);
						
		}
		else 
		{
			return new ModelAndView("/alerts/login_user_failed");
			
		}
		
		
	}
	
	//user dashboard
	@RequestMapping("userdashboard")
	public ModelAndView welcomeuser(HttpServletRequest req)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		
		if(user==null || session.getAttribute("user")==null)
		{
			return new ModelAndView("/alerts/usersessioninvalid");
		}
		else 
		{
			user userdetails=us.getuserByEmail(user.getEmail());
			return new ModelAndView("user/userpages/userdashboard","userdetails",userdetails);
		}
		
	}
	
	//user profile page
	@RequestMapping("userprofile")
	public ModelAndView userprofile(HttpServletRequest req)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		
		if(user==null || session.getAttribute("user")==null)
		{
			return new ModelAndView("/alerts/usersessioninvalid");
		}
		else 
		{
			user userdetails=us.getuserByEmail(user.getEmail());
			return new ModelAndView("user/userpages/userprofile","userdetails",userdetails);
		}
		
	}
	
	//user Review page
		@RequestMapping("review")
		public ModelAndView review(HttpServletRequest req)
		{
			HttpSession session = req.getSession(false);
			user user=(user) session.getAttribute("user");
			
			if(user==null || session.getAttribute("user")==null)
			{
				return new ModelAndView("/alerts/usersessioninvalid");
			}
			else 
			{
				user userdetails=us.getuserByEmail(user.getEmail());
				return new ModelAndView("user/userpages/reviewbharatdarshan","userdetails",userdetails);
			}
			
		}
	
	//update profile picture
		@PostMapping("/updateprofile")
		public String updateProfile(@RequestParam("profilephoto") MultipartFile file, HttpServletRequest req) {
		    HttpSession session = req.getSession(false);
		    if (session == null) {
		        return "redirect:/login"; // redirect to login if session expired
		    }

		    user currentUser = (user) session.getAttribute("user");
		    if (currentUser == null) {
		        return "redirect:/login";
		    }

		    String email = currentUser.getEmail();

		    // Use Paths for portability
		    Path uploadPath = Paths.get("src/main/resources/static/images/users");
		    try {
		        if (!Files.exists(uploadPath)) {
		            Files.createDirectories(uploadPath);
		        }

		        // Sanitize filename
		        String originalFilename = StringUtils.cleanPath(file.getOriginalFilename());

		        // Save file to server
		        Path filePath = uploadPath.resolve(originalFilename);
		        Files.write(filePath, file.getBytes(), StandardOpenOption.CREATE);

		        // Update user in DB
		        user userDetails = us.getuserByEmail(email);
		        userDetails.setProfilephoto(originalFilename);
		        us.registration(userDetails);

		    } catch (IOException e) {
		        e.printStackTrace();
		        return "error"; // Redirect or display an error page
		    }

		    return "alerts/updateprofilesuccess";
		}

	//changePassword
	
	@PostMapping("/changepassword")
	public String changepassword(@RequestParam("password") String password,@RequestParam("confpassword") String confpassword,HttpServletRequest req)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		String email=user.getEmail();
		
		if(password.equals(confpassword))
		{
			user userdetails=us.getuserByEmail(email);
			
			
			userdetails.setPassword(passwordEncoder.encode(password));
			userdetails.setConfpassword(passwordEncoder.encode(confpassword));
			us.registration(userdetails);
		
		return "/alerts/changepasswordsuccess";
		}
		else 
		{
			return "/alerts/changepasswordfailed";
		}
	}
	
	
	//user logout
	@RequestMapping(value="/logoutuser",method = RequestMethod.GET)
	public String logoutadmin(HttpSession session)
	{
		session.invalidate();
		return "/alerts/userlogoutsuccess";
		
		
		
	}
	
	
	//user forgot password
	
	@PostMapping("/verifyemailandsendotp")
	public String verifyemailandsendotp(@RequestParam("email") String email,HttpSession session) 
	{
		user user=us.getuserByEmail(email);
		
		//generating random number
		int otp= random.nextInt(999999);                 
		                                                 
		System.out.println(otp);
		
		//send otp to email
		String subject="OTP From BharatDarshan";
		String message=""
				+"<div>"
				+"<p>"
				+"<b>"
				+"<u>"+otp
				+" "
				+"</u>"
				+"</b>"
				+"is your OTP to Reset the Password of Your Bharat Darshan Account."
				+"</p>"
				+"</div>";
		String to=email;
		
		boolean flag= emailService.sendEmail(subject, message, to);
		
		//verify Email & Send OTP
		if(user != null && flag) 
		{
			session.setAttribute("emailOtp", otp);
			session.setAttribute("email", email);
			return "redirect:verifyotp";
			
		}
		else
		{
			return "/alerts/usernotfound";
		}
		
		
		
	}
	
	//Verify OTP Which Is Sent On Your Email
	@PostMapping("/verifyotp")
	public String verifyOtp(@RequestParam("otp") int otp,HttpSession session) 
	{
	   	int emailOtp= (Integer) session.getAttribute("emailOtp");
	   	
	   	if(emailOtp == otp) {
	   			return "redirect:resetpassword";
	   		}
	   	else {
	   		    return "/alerts/invalidresetotp";
	   		}
	   	
	}
	
	// Reset Password
	
	@PostMapping("resetpassword")
	public String resetpassword(@RequestParam("password") String password,@RequestParam("confpassword") String confpassword,HttpSession session) 
	{
		String email = (String) session.getAttribute("email");
		user user = us.getuserByEmail(email);
		if(password.equals(confpassword))
		{
			user.setPassword(passwordEncoder.encode(password));
			user.setConfpassword(passwordEncoder.encode(confpassword));
			us.registration(user);
			
			return "/alerts/resetsuccess";
		}
		else 
		{
			return "/alerts/resetfailed";
		}
		
		
		
	}
	
	
	//User post review
	
		@PostMapping("/postreview")
		public String postreview(@ModelAttribute("reviews")review reviews)
		{
			
			us.postreview(reviews);
			return "/alerts/reviewsuccess";
			
		}
		
		
		//View my Bookings
		
		@RequestMapping("mybookings")
		public ModelAndView verifybooking(HttpServletRequest req,ModelMap modelmap)
		{
			HttpSession session = req.getSession(false);
			user user=(user) session.getAttribute("user");
			
			if(user==null) 
			{
				
				return new ModelAndView("/alerts/usersessioninvalid");
			}
			
			else 
			{
				user userdetails=us.getuserByEmail(user.getEmail());
				modelmap.addAttribute("userdetails",userdetails);
				
				List<booking> mybookings=us.getallbookingsbyemail(userdetails.getEmail());
				modelmap.addAttribute("mybookings",mybookings);
				return new ModelAndView("/user/userpages/viewmybookings","user",user);
				
			}
			
		}
}
