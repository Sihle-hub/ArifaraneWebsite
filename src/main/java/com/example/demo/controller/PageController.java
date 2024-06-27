package com.example.demo.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.domain.Event;
import com.example.demo.domain.Member;
import com.example.demo.domain.Photo;
import com.example.demo.domain.ProgramPhoto;
import com.example.demo.repository.EventRepository;
import com.example.demo.service.EventService;
import com.example.demo.service.MemberService;
import com.example.demo.service.PhotoService;
import com.example.demo.service.ProgramPhotoService;



@Controller
public class PageController {
	
	 @Autowired
	 private PhotoService service;
	 @Autowired
	 private MemberService servicemb;
	 @Autowired
	 private EventService serviceev;
	 @Autowired
	 private EventRepository eventrepo;
	 @Autowired
	 private ProgramPhotoService phs;
	 @Autowired
	 private ProgramPhotoService servicepp;
	
	 @GetMapping("/")
	 private String welcomePAge() {
		 
		    return "Home.html";
		 
	 }
	 
     @GetMapping("/sponsorform")//Vision Page
	 public String Sponserform() {

			   return "sponsorform.html";
		
     }
	 
	 
	 @PostMapping("/sponser_form")//getting sponser details
	    public String SponsorForm(@RequestParam("fullName") String name,
		                         @RequestParam("email") String email,
	                             @RequestParam("phone") String cellNumber,
	                             @RequestParam("organization") String org,
	                             @RequestParam("message") String message)
	     {
	
		 Photo sponser = new Photo(name, email , cellNumber , org , message);
		 
		 service.save(sponser);
		 
 			    
		 return "redirect:/Home.html";

	 }
	 
	 @PostMapping("/admin_page")//direct the admin
     public String submitSponsorForm(@RequestParam("username") String usernameIn,
			            @RequestParam("password") String passwordIn) {
				 
				    String url = " ";
				    String username = "Sihle";
				    String password = "12345";
				    
				 
				 
				   if(username.equals(usernameIn) && password.equals(passwordIn)) {
					   
					     url = "redirect:/admin.jsp";
				   }
	
				   else {	   
					     url = "redirect:/login.html";
				   }
			
			        return url ; //direct the this page if the login details are correct
			        
			    }
	 
	 @PostMapping("/add_member")
		public String addMember(@RequestParam("memberName") String name,
								@RequestParam("memberSurname") String surname,
								@RequestParam("memberPosition") String position,
								@RequestParam("image") MultipartFile image) throws IOException
								{
		
		    byte[] imageData = image.getBytes();

		    Member member = new Member(name,surname,position,imageData);
		
		    servicemb.save(member);
			
			return "redirect:/admin.jsp"; // Redirect to the members list page
			
		}

	   @GetMapping("/login")
	   public String login() {
		   
	        return "login.html";//Login Page for Admin
	        
	   }
	 
		@GetMapping("/visionPage")//Vision Page
		public String visionPage() {

			   return "visionPage.html";
		
     }
		
		@GetMapping("/member")//Vision Page
		public String memberform() {

			   return "memberform.html";
		
     }
		
		@GetMapping("/aboutPage")//About Page
		public String aboutPage() {

			   return "aboutPage.html";
	 
        }
		
		@GetMapping("/missionPage")//Mission Page
		public String missionPage() {

			   return "missionPage.html";

        }

		
		@GetMapping("/photos_page")
		public ModelAndView musicPlaylist() {
			
			List<Photo> sponser = service.listAll();
			ModelAndView data = new ModelAndView("photos.jsp");
			data.addObject("playlist" , sponser);
			
			return data;
			
		}
		
		@PostMapping("/event")
		public String createEvent(@RequestParam("eventName") String eventName,
								 @RequestParam("eventDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date eventDate,
								 @RequestParam("eventDescription") String eventDescription) {
			
	      Event event = new Event(eventName,eventDate,eventDescription);  
	   
	      serviceev.save(event);
			
			return "redirect:/admin.jsp"; // redirect to the events list page
		}

		@GetMapping("/events")
		public ModelAndView events() {
			
			List<Event> sponser = serviceev.listAll();
			ModelAndView data = new ModelAndView("eventsList.jsp");
			data.addObject("events" , sponser);
			
			return data;
			
		}


		@GetMapping("/member_view")
		public ModelAndView members() {
			
			List<Member> sponser = servicemb.listAll();
			ModelAndView data = new ModelAndView("member.jsp");
			data.addObject("events" , sponser);
			
			return data;
			
		}
		
		@GetMapping("/member_view_photo")
		public ModelAndView membersPhoto() {
			
			List<Member> sponser = servicemb.listAll();
			ModelAndView data = new ModelAndView("photos.jsp");
			data.addObject("events" , sponser);
			
			return data;
			
		}
		
		 @PostMapping("/add_photo")
			public String addPhoto(
									@RequestParam("title") String title,
									@RequestParam("desc") String desc,
									@RequestParam("image") MultipartFile image) throws IOException
									{
			
			    byte[] imageData = image.getBytes();

			    ProgramPhoto photo = new ProgramPhoto(imageData,title,desc);
			
			     phs.save(photo);
				
				return "redirect:/admin.jsp"; // Redirect to the members list page
				
			}
		 
			@GetMapping("/photos_side")
			public ModelAndView programPhoto() {
				
				List<ProgramPhoto> sponser = servicepp.listAll();
				ModelAndView data = new ModelAndView("photos.jsp");
				data.addObject("events" , sponser);
				
				return data;
				
				
			}
			
			@GetMapping("/view_sponser")
			public ModelAndView view_sponser() {
				
				List<Photo> sponser = service.listAll();
				ModelAndView data = new ModelAndView("view_sponser.jsp");
				data.addObject("events" , sponser);
				
				return data;
				
				
			}
			
	

}
