package bharatdarshan.controller;
import java.io.FileNotFoundException;

import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.util.StringUtils;
import java.nio.file.StandardOpenOption;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import bharatdarshan.model.admindetails;
import bharatdarshan.model.booking;
import bharatdarshan.model.gallery;
import bharatdarshan.model.packages;
import bharatdarshan.model.places;
import bharatdarshan.model.user;
import bharatdarshan.model.feedback;
import bharatdarshan.repo.bookingrepo;
import bharatdarshan.repo.userrepo;
import bharatdarshan.service.adminservices;
import bharatdarshan.service.userservices;

@Controller
public class admincontroller 
{
	
	
	
	
	@Autowired
	adminservices as;
	
	@Autowired
	userrepo ur;
	@Autowired
	bookingrepo br;
	
	@Autowired
	userservices us;

	@PostMapping("/loginadmin")
	public ModelAndView loginadmin(@ModelAttribute("a")admindetails a,HttpSession session)
	{
		admindetails admin=as.getadmindetailsByEmail(a.getEmail());
		if(as.getadmindetailsByEmail(a.getEmail())==null) {
			return new ModelAndView("/alerts/invalid_admin");
		}
		String password=admin.getPassword();
		
		if(admin != null && a.getPassword().equals(password)) 
		{
			session.setAttribute("admin",a);
			return new ModelAndView("redirect:admindashboard");	
		}
		else 
		{
			return new ModelAndView("/alerts/login_admin_failed");
		}
		
		
	}
	
	@RequestMapping("admindashboard")
	public ModelAndView  admindashboard(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		admindetails admin=(admindetails) session.getAttribute("admin");
		
		if(admin==null || session.getAttribute("admin")==null)
		{
			return new ModelAndView("/alerts/adminsessioninvalid");
		}
		else 
		{
			long totalusers=ur.count();
			long totalbookings=br.count();
			admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
			modelmap.addAttribute("totalusers",totalusers);
			modelmap.addAttribute("totalbookings",totalbookings);
			return new ModelAndView("/admin/adminpages/admindashboard","admindetails",admindetails);
		}
	}
	@RequestMapping("adminprofile")
	public ModelAndView adminprofile(HttpServletRequest req)
	{
		HttpSession session = req.getSession(false);
		admindetails admin = (admindetails) session.getAttribute("admin");
		
		if(admin==null || session.getAttribute("admin")==null)
		{
			return new ModelAndView("/alerts/adminsessioninvalid");
		}
		else 
		{
			admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
			return new ModelAndView("/admin/adminpages/adminprofile","admindetails",admindetails);
		}
	}

	
	@RequestMapping(value="/logoutadmin",method = RequestMethod.GET)
	public String logoutadmin(HttpSession session)
	{
		session.invalidate();
		return "/alerts/adminlogoutsuccess";
		
		
		
	}
	
	
	@RequestMapping("viewusers")
	public ModelAndView viewusers(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		admindetails admin = (admindetails) session.getAttribute("admin");
		
		List<user> userslist=us.getallusers();
		modelmap.addAttribute("userslist",userslist);
		
		if(admin==null || session.getAttribute("admin")==null)
		{
			return new ModelAndView("/alerts/adminsessioninvalid");
		}
		else 
		{
			admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
			return new ModelAndView("/admin/adminpages/adminusersdata","admindetails",admindetails);
		}
	}
	
	
	@RequestMapping("viewallbookings")
	public ModelAndView viewallbookings(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		admindetails admin = (admindetails) session.getAttribute("admin");
		
		List<booking> allbookings=as.getallbookings();
		modelmap.addAttribute("allbookings",allbookings);
		
		if(admin==null || session.getAttribute("admin")==null)
		{
			return new ModelAndView("/alerts/adminsessioninvalid");
		}
		else 
		{
			admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
			return new ModelAndView("/admin/adminpages/adminviewallpilgrimagebookings","admindetails",admindetails);
		}
	}
	
	@RequestMapping("viewmessages")
	public ModelAndView viewmessages(HttpServletRequest req,ModelMap modelmap)
	{
		HttpSession session = req.getSession(false);
		admindetails admin = (admindetails) session.getAttribute("admin");
		
		List<feedback> feedbackslist=us.getallfeedbacks();
		modelmap.addAttribute("feedbackslist",feedbackslist);
		
		if(admin==null || session.getAttribute("admin")==null)
		{
			return new ModelAndView("/alerts/adminsessioninvalid");
		}
		else 
		{
			admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
			return new ModelAndView("/admin/adminpages/adminfeedbackdata","admindetails",admindetails);
		}
	}
	
	
	@RequestMapping("admingalleryupdate")
	public ModelAndView admingalleryupdate(HttpServletRequest req)
	{
		HttpSession session = req.getSession(false);
		admindetails admin = (admindetails) session.getAttribute("admin");
		
		if(admin==null || session.getAttribute("admin")==null)
		{
			return new ModelAndView("/alerts/adminsessioninvalid");
		}
		else 
		{
			admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
			return new ModelAndView("/admin/adminpages/admingalleryupdate","admindetails",admindetails);
		}
	}
	
	
	@PostMapping("/updategallery")
	public String updategallery(@ModelAttribute("g")gallery g,@RequestParam("image") MultipartFile multipartfile) throws IOException
	{
		
		String path="D:\\7.Eclipse WorkPlaces\\Project\\BharatDarshanProject\\src\\main\\resources\\static\\images\\gallery";
		String filename=multipartfile.getOriginalFilename();
		byte b[]=multipartfile.getBytes();
		g.setGalleryphoto(filename);
		as.updategallery(g);
		
		try {
			
		FileOutputStream fout = new FileOutputStream(path+"/"+filename);
		fout.write(b);
		fout.close();
		}
		catch (FileNotFoundException e) 
		{
			
			e.printStackTrace();
		}
		
		return "/alerts/updategallerysuccess";
	
	}
	
	
	
	//update profile picture
	@PostMapping("/adminupdateprofile")
	public String adminUpdateProfile(@RequestParam("profilephoto") MultipartFile file, HttpServletRequest req) {

	    HttpSession session = req.getSession(false);
	    if (session == null) {
	        return "redirect:/admin/login"; // redirect if session is expired
	    }

	    admindetails admin = (admindetails) session.getAttribute("admin");
	    if (admin == null) {
	        return "redirect:/admin/login"; // redirect if admin not found
	    }

	    String email = admin.getEmail();

	    // Sanitize the filename
	    String filename = StringUtils.cleanPath(file.getOriginalFilename());

	    // Define upload path (use relative path or configure in application.properties)
	    Path uploadPath = Paths.get("src/main/resources/static/images/admin/profilephoto");

	    try {
	        if (!Files.exists(uploadPath)) {
	            Files.createDirectories(uploadPath);
	        }

	        // Save file to the server
	        Path filePath = uploadPath.resolve(filename);
	        Files.write(filePath, file.getBytes(), StandardOpenOption.CREATE);

	        // Update DB
	        admindetails adminDetails = as.getadmindetailsByEmail(email);
	        adminDetails.setProfilephoto(filename);
	        as.registration(adminDetails);

	    } catch (IOException e) {
	        e.printStackTrace();
	        return "error"; // Optional: route to error page
	    }

	    return "alerts/adminupdateprofilesuccess";
	}
		
		//changePassword
		
		@PostMapping("/adminchangepassword")
		public String adminchangepassword(@RequestParam("password") String password,@RequestParam("confpassword") String confpassword,HttpServletRequest req)
		{
			HttpSession session = req.getSession(false);
			admindetails admin = (admindetails) session.getAttribute("admin");
			
			String email=admin.getEmail();
			
			if(password.equals(confpassword))
			{
				admindetails admindetails=as.getadmindetailsByEmail(email);
				
				
				admindetails.setPassword(password);
				
				as.registration(admindetails);
			
			return "/alerts/adminchangepasswordsuccess";
			}
			else 
			{
				return "/alerts/adminchangepasswordfailed";
			}
		}
		//open create package page
		@RequestMapping("createpackages")
		public ModelAndView createpackages(HttpServletRequest req)
		{
			HttpSession session = req.getSession(false);
			admindetails admin = (admindetails) session.getAttribute("admin");
			
			if(admin==null || session.getAttribute("admin")==null)
			{
				return new ModelAndView("/alerts/adminsessioninvalid");
			}
			else 
			{
				admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
				return new ModelAndView("/admin/adminpages/admincreatepackages","admindetails",admindetails);
			}
		}
		
		//create package
		@PostMapping("createpackage")
		public String createpackage(@ModelAttribute("p")packages p,@RequestParam("photo") MultipartFile multipartfile) throws IOException
		{
			
			String path="D:\\7.Eclipse WorkPlaces\\Project\\BharatDarshanProject\\src\\main\\resources\\static\\images\\packages";
			String filename=multipartfile.getOriginalFilename();
			byte b[]=multipartfile.getBytes();
			p.setPackagephoto(filename);
			as.createpackage(p);
			
			try {
				
			FileOutputStream fout = new FileOutputStream(path+"/"+filename);
			fout.write(b);
			fout.close();
			}
			catch (FileNotFoundException e) 
			{
				
				e.printStackTrace();
			}
			
			return "/alerts/packagecreatesuccess";
		
		}
		
		//open view/modify package page
				@RequestMapping("viewmodifypackages")
				public ModelAndView viewmodifypackages(HttpServletRequest req,ModelMap modelmap)
				{
					HttpSession session = req.getSession(false);
					admindetails admin = (admindetails) session.getAttribute("admin");
					
					List<packages> packageslist=as.getallpackages();
					modelmap.addAttribute("packageslist",packageslist);
					
					if(admin==null || session.getAttribute("admin")==null)
					{
						return new ModelAndView("/alerts/adminsessioninvalid");
					}
					else 
					{
						admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
						return new ModelAndView("/admin/adminpages/adminviewpackages","admindetails",admindetails);
					}
				}
			
				//delete package data
				@RequestMapping("deletepackage")
				public String deletepackage(@Param("packagename") String packagename)
				{
					as.deletebypackagename(packagename);
					return "redirect:viewmodifypackages";
				}
				
				
				//edit package details
				@GetMapping("editpackage")
				public ModelAndView editpackage(@Param("packagename")String packagename,ModelMap m,HttpServletRequest req)
				{
					HttpSession session = req.getSession(false);
					admindetails admin = (admindetails) session.getAttribute("admin");
					
					if(admin==null || session.getAttribute("admin")==null)
					{
						return new ModelAndView("/alerts/adminsessioninvalid");
					}
					else 
					{
						packages pa=as.getpackage(packagename);
						m.addAttribute("pack",pa);
						admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
						return new ModelAndView("/admin/adminpages/admineditpackage","admindetails",admindetails);
					}
					
				}
				
				
				//update package
				@PostMapping("updatetepackage")
				public String updatetepackage(@Param("packagename")String packagename,@ModelAttribute("pl")packages pl,@RequestParam("photo") MultipartFile multipartfile) throws IOException
				{
					
					String path="D:\\7.Eclipse WorkPlaces\\Project\\BharatDarshanProject\\src\\main\\resources\\static\\images\\packages";
					String filename=multipartfile.getOriginalFilename();
					byte b[]=multipartfile.getBytes();
					packages pa=as.getpackage(packagename);
					pa.setAboutpackage(pl.getAboutpackage());
					pa.setDays(pl.getDays());
					pa.setNights(pl.getNights());
					pa.setPackagecost(pl.getPackagecost());
					pa.setPackagephoto(filename);
					as.updatepackage(pa);
					
					try {
						
					FileOutputStream fout = new FileOutputStream(path+"/"+filename);
					fout.write(b);
					fout.close();
					}
					catch (FileNotFoundException e) 
					{
						
						e.printStackTrace();
					}
					
					return "/alerts/packageupdatesuccess";
				
				}
				
				
				
				//open  package details page
				@RequestMapping("packagedetails")
				public ModelAndView packagedetails(@Param("packagename")String packagename,HttpServletRequest req,ModelMap modelmap)
				{
					HttpSession session = req.getSession(false);
					admindetails admin = (admindetails) session.getAttribute("admin");
					
					packages packagedetails=as.getpackage(packagename);
					modelmap.addAttribute("packagedetails",packagedetails);
					
					List<places> placeslistbypackagename=as.getallplacesbypackagename(packagename);
					modelmap.addAttribute("placeslistbypackagename",placeslistbypackagename);
					
					
					if(admin==null || session.getAttribute("admin")==null)
					{
						return new ModelAndView("/alerts/adminsessioninvalid");
					}
					else 
					{
						admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
						return new ModelAndView("/admin/adminpages/adminpackagedetails","admindetails",admindetails);
					}
				}
				
		
				//open Add Places page
				@RequestMapping("addplaces")
				public ModelAndView addplaces(HttpServletRequest req,ModelMap modelmap)
				{
					HttpSession session = req.getSession(false);
					admindetails admin = (admindetails) session.getAttribute("admin");
					
					List<packages> packageslist=as.getallpackages();
					modelmap.addAttribute("packageslist",packageslist);
					
					if(admin==null || session.getAttribute("admin")==null)
					{
						return new ModelAndView("/alerts/adminsessioninvalid");
					}
					else 
					{
						admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
						return new ModelAndView("/admin/adminpages/adminaddplaces","admindetails",admindetails);
					}
				}
				
				//add places
				@PostMapping("addplace")
				public String addplace(@ModelAttribute("pl")places pl,@RequestParam("photo") MultipartFile multipartfile) throws IOException
				{
					
					String path="D:\\7.Eclipse WorkPlaces\\Project\\BharatDarshanProject\\src\\main\\resources\\static\\images\\places";
					String filename=multipartfile.getOriginalFilename();
					byte b[]=multipartfile.getBytes();
					pl.setPilgrimagephoto(filename);
					as.addplace(pl);
					
					try {
						
					FileOutputStream fout = new FileOutputStream(path+"/"+filename);
					fout.write(b);
					fout.close();
					}
					catch (FileNotFoundException e) 
					{
						
						e.printStackTrace();
					}
					
					return "/alerts/placeaddsuccess";
				
				}
				
				
				//open view/modify places page
				@RequestMapping("viewmodifyplaces")
				public ModelAndView viewmodifyplaces(HttpServletRequest req,ModelMap modelmap)
				{
					HttpSession session = req.getSession(false);
					admindetails admin = (admindetails) session.getAttribute("admin");
					
					List<places> placeslist=as.getallplaces();
					modelmap.addAttribute("placeslist",placeslist);
					
					if(admin==null || session.getAttribute("admin")==null)
					{
						return new ModelAndView("/alerts/adminsessioninvalid");
					}
					else 
					{
						admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
						return new ModelAndView("/admin/adminpages/adminviewplaces","admindetails",admindetails);
					}
				}
				
				//delete places data
				@RequestMapping("deleteplace")
				public String deleteplace(@Param("pilgrimagename") String pilgrimagename)
				{
					as.deletebypilgrimagename(pilgrimagename);
					return "redirect:viewmodifyplaces";
				}
				
				//edit places details
				@GetMapping("editplace")
				public ModelAndView editplace(@Param("pilgrimagename")String pilgrimagename,ModelMap m,HttpServletRequest req)
				{
					HttpSession session = req.getSession(false);
					admindetails admin = (admindetails) session.getAttribute("admin");
					
					List<packages> packageslist=as.getallpackages();
					m.addAttribute("packageslist",packageslist);
					
					if(admin==null || session.getAttribute("admin")==null)
					{
						return new ModelAndView("/alerts/adminsessioninvalid");
					}
					else 
					{
						places p1=as.getplace(pilgrimagename);
						m.addAttribute("place",p1);
						admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
						return new ModelAndView("/admin/adminpages/admineditplace","admindetails",admindetails);
					}
					
				}
				
				
				//update place
				@PostMapping("updateplace")
				public String updateplace(@Param("pilgrimagename")String pilgrimagename,@ModelAttribute("pl")places pl,@RequestParam("photo") MultipartFile multipartfile) throws IOException
				{
					
					String path="D:\\7.Eclipse WorkPlaces\\Project\\BharatDarshanProject\\src\\main\\resources\\static\\images\\places";
					String filename=multipartfile.getOriginalFilename();
					byte b[]=multipartfile.getBytes();
					places p=as.getplace(pilgrimagename);
					
					p.setAboutpilgrimage(pl.getAboutpilgrimage());
					p.setPilgrimagelocation(pl.getPilgrimagelocation());
					p.setPackagename(pl.getPackagename());
					p.setPilgrimagecost(pl.getPilgrimagecost());
					p.setDays(pl.getDays());
					p.setNights(pl.getNights());
					p.setPilgrimagephoto(filename);
					
					as.updateplace(p);
					
					try {
						
					FileOutputStream fout = new FileOutputStream(path+"/"+filename);
					fout.write(b);
					fout.close();
					}
					catch (FileNotFoundException e) 
					{
						
						e.printStackTrace();
					}
					
					return "/alerts/placeupdatesuccess";
				
				}
				
				//open  place details page
				@RequestMapping("placedetails")
				public ModelAndView placedetails(@Param("pilgrimagename")String pilgrimagename,HttpServletRequest req,ModelMap modelmap)
				{
					HttpSession session = req.getSession(false);
					admindetails admin = (admindetails) session.getAttribute("admin");
					
					places placedetails=as.getplace(pilgrimagename);
					modelmap.addAttribute("placedetails",placedetails);
					
					if(admin==null || session.getAttribute("admin")==null)
					{
						return new ModelAndView("/alerts/adminsessioninvalid");
					}
					else 
					{
						admindetails admindetails=as.getadmindetailsByEmail(admin.getEmail());
						return new ModelAndView("/admin/adminpages/adminplacedetails","admindetails",admindetails);
					}
				}
}
