package bharatdarshan.controller;
import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.razorpay.RazorpayClient;

import bharatdarshan.model.user;
import bharatdarshan.model.review;
import bharatdarshan.model.feedback;
import bharatdarshan.model.gallery;
import bharatdarshan.model.packages;
import bharatdarshan.model.places;
import bharatdarshan.model.booking;
import bharatdarshan.service.adminservices;
import bharatdarshan.service.userservices;
@Controller
public class bharatdarshancontroller 
{
	@Autowired
	userservices us;
	@Autowired
	adminservices as;
	// All Pages mapping start
	
	@RequestMapping("/")
	public ModelAndView index(ModelMap modelmap)
	{
		List<review> reviewslist=us.getallreviews();
		modelmap.addAttribute("reviewslist",reviewslist);
		
		List<packages> packageslist=as.gettopthreepackages();
		modelmap.addAttribute("packageslist",packageslist);
		
		return new ModelAndView("index");
	}
	@RequestMapping("index")
	public ModelAndView homepage(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		
		List<review> reviewslist=us.getallreviews();
		modelmap.addAttribute("reviewslist",reviewslist);
		
		List<packages> packageslist=as.gettopthreepackages();
		modelmap.addAttribute("packageslist",packageslist);
		
		if(user!=null) 
		{
		user userdetails=us.getuserByEmail(user.getEmail());
		modelmap.addAttribute("userdetails",userdetails);
		modelmap.addAttribute("user",user);
		}
		return new ModelAndView("index");
	}

	@RequestMapping("about")
	public ModelAndView about(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		if(user!=null) 
		{
		user userdetails=us.getuserByEmail(user.getEmail());
		modelmap.addAttribute("userdetails",userdetails);
		}
		return new ModelAndView("about","user",user);
	
	
	}
	
	@RequestMapping("packages")
	public ModelAndView packages(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		
		List<packages> packageslist=as.getallpackages();
		modelmap.addAttribute("packageslist",packageslist);
		
		if(user!=null) 
		{
		user userdetails=us.getuserByEmail(user.getEmail());
		modelmap.addAttribute("userdetails",userdetails);
		}
		return new ModelAndView("packages","user",user);
	}
	
	
	@RequestMapping("explorepackage")
	public ModelAndView explorepackage(@Param("packagename")String packagename,HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		
		packages packagedetails=as.getpackage(packagename);
		modelmap.addAttribute("packagedetails",packagedetails);
		
		List<places> placeslistbypackagename=as.getallplacesbypackagename(packagename);
		modelmap.addAttribute("placeslistbypackagename",placeslistbypackagename);
		
		if(user!=null) 
		{
		user userdetails=us.getuserByEmail(user.getEmail());
		modelmap.addAttribute("userdetails",userdetails);
		}
		return new ModelAndView("explorepackage","user",user);
	}
	
	@RequestMapping("services")
	public ModelAndView services(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		if(user!=null) 
		{
		user userdetails=us.getuserByEmail(user.getEmail());
		modelmap.addAttribute("userdetails",userdetails);
		}
		return new ModelAndView("services","user",user);
	}
	
	@RequestMapping("destinations")
	public ModelAndView destinations(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		
		List<places> placeslist=as.getallplaces();
		modelmap.addAttribute("placeslist",placeslist);
		
		if(user!=null) 
		{
		user userdetails=us.getuserByEmail(user.getEmail());
		modelmap.addAttribute("userdetails",userdetails);
		}
		return new ModelAndView("destinations","user",user);
	}
	
	@RequestMapping("explorepilgrimage")
	public ModelAndView explorepilgrimage(@Param("pilgrimagename")String pilgrimagename,HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		
		places placedetails=as.getplace(pilgrimagename);
		modelmap.addAttribute("placedetails",placedetails);
		
		if(user!=null) 
		{
		user userdetails=us.getuserByEmail(user.getEmail());
		modelmap.addAttribute("userdetails",userdetails);
		}
		return new ModelAndView("explorepilgrimage","user",user);
	}
	
	@RequestMapping("gallery")
	public ModelAndView gallery(HttpServletRequest req,ModelMap modelmap)
	{
		List<gallery> imagesdetail=as.getallimages();
		modelmap.addAttribute("imagesdetail",imagesdetail);
		
	HttpSession session = req.getSession(false);
	user user=(user) session.getAttribute("user");
	if(user!=null) 
	{
	user userdetails=us.getuserByEmail(user.getEmail());
	modelmap.addAttribute("userdetails",userdetails);
	}
	return new ModelAndView("gallery","user",user);
	}
	
	
	@PostMapping("/sendfeedback")
	public String sendfeedback(@ModelAttribute("message")feedback message)
	{
		us.sendfeedback(message);
		return "/alerts/sendfeedback";
	}
	
	
	
		
	@RequestMapping("registration")
	public String registration()
	{
		return "/user/registration";
	}
	
	@RequestMapping("userlogin")
	public String userlogin()
	{
		return "/user/userlogin";
	}
	
	@RequestMapping("forgetpassword")
	public String forgetpassword()
	{
		return "/user/forgetpassword";
	}
	@RequestMapping("verifyotp")
	public String verifyotp()
	{
		return "/user/verifyotp";
	}
	@RequestMapping("resetpassword")
	public String resetpassword()
	{
		return "/user/resetpassword";
	}
	
	@RequestMapping("adminlogin")
	public String adminlogin()
	{
		return "/admin/adminlogin";
	}
	
	
	
	
	
	//All pages Mapping End..
	
	
	//booking And Payment start
	
	@RequestMapping("booking")
	public ModelAndView booking(@Param("packagename")String packagename,@Param("pilgrimagename")String pilgrimagename,HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		
		if(user==null) 
		{
			
			return new ModelAndView("/alerts/loginforbooking");
		}
		
		else
		{
		if(packagename!=null) 
		{
			user userdetails=us.getuserByEmail(user.getEmail());
			modelmap.addAttribute("userdetails",userdetails);
			
			packages packagedetails=as.getpackage(packagename);
			modelmap.addAttribute("packagedetails",packagedetails);
		 
			return new ModelAndView("booking","user",user);
		
		}
		
		else
		{
		
			user userdetails=us.getuserByEmail(user.getEmail());
			modelmap.addAttribute("userdetails",userdetails);
			
			places placedetails=as.getplace(pilgrimagename);
			modelmap.addAttribute("placedetails",placedetails);
		
			return new ModelAndView("booking","user",user);
		
		}
		
		
		}
	}
	
	
	@PostMapping("/bookpilgrimage")
	public String bookpilgrimage(@Param("cost")int cost,@ModelAttribute("booking")booking booking,HttpSession session)
	{
		int totalcost=cost*booking.getTotalpilgrims();
		session.setAttribute("totalcost",totalcost);
		
		booking.setTotalcost(totalcost);
		us.bookpilgrimage(booking);
		return "redirect:verifybooking";
	}
	
	@RequestMapping("verifybooking")
	public ModelAndView verifybooking(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		user user=(user) session.getAttribute("user");
		
		if(user==null) 
		{
			
			return new ModelAndView("/alerts/invalidentry");
		}
		else 
		{
			user userdetails=us.getuserByEmail(user.getEmail());
			modelmap.addAttribute("userdetails",userdetails);
			
			int Totalcost= (int) session.getAttribute("totalcost");
			modelmap.addAttribute("Totalcost",Totalcost);
			return new ModelAndView("verifybooking","user",user);
			
		}
		
	}
	
	
	//creating order for request
		@PostMapping("/create_order")
		@ResponseBody
		public String createOrder(@RequestBody Map<String, Object> data,Principal principal) throws Exception
		{
			System.out.println(data);
			//System.out.println("order function executed");
			int amt=Integer.parseInt(data.get("amount").toString());
			var client= new RazorpayClient("rzp_test_UqR4rLTzLN0KOI", "UQJ4xgEhCvRYrU3pGKBiRdy1");
			
			JSONObject ob = new JSONObject();
			ob.put("amount", amt*100);
			ob.put("currency", "INR");
			ob.put("receipt", "txn_235425");
			
			//creating new order
			 com.razorpay.Order order= client.orders.create(ob);
			System.out.println(order);
			
			// save order to db
			
			return order.toString(); 
		
		}
	
	//booking And Payment end
	
	
	
}
