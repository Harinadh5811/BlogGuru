package com.klef.jfsd.springboot.controller;

import java.sql.SQLException;	
import java.io.File;
import java.io.IOException;
import java.sql.Blob;
import java.util.List;	
import javax.sql.rowset.serial.SerialException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Blogger;
import com.klef.jfsd.springboot.model.Comment;
import com.klef.jfsd.springboot.model.CreatePost;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.CreatePostRepository;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BloggerService;
import com.klef.jfsd.springboot.service.CreatePostService;
import com.klef.jfsd.springboot.service.FeedbackService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private CreatePostService cps;
	
	@Autowired
	 private BloggerService bloggerService;
	
	@Autowired
	 private AdminService adminService;
	
	@Autowired
	 private FeedbackService feedbackService;
	
	@GetMapping("/")
	public String main()
	{
		return "index";
	}
	
	@GetMapping("userreg")
	public ModelAndView userreg()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("userreg");
	    return mv;
	}
	
	@GetMapping("userallposts")
 	public ModelAndView userallposts()
 	{
 		ModelAndView mv=new ModelAndView();
 		mv.setViewName("userallposts");
 		
 		List<CreatePost> postlist =cps.viewallposts();
 		mv.addObject("postdata", postlist);
 		return mv;
 	}

	
	@PostMapping ("insertuser")
	public ModelAndView insertaction(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String msg=null;
		
		try 
		{
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob"); 
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String location = request.getParameter("location");
			String contact = request.getParameter("contact");
			
			Blogger user = new Blogger();
		       user.setName(name);
		       user.setGender(gender);
		       user.setDateofbirth(dob); 
		       user.setEmail(email);
		       user.setPassword(pwd);
		       user.setLocation(location);
		       user.setContact(contact);
		       user.setActive(true);
		       
		      msg = bloggerService.userregister(user);
		      
		      mv.setViewName("displaymsg");
		      mv.addObject("message",msg);
		}
		catch (Exception e) 
		{
			mv.setViewName("displayerror");
			
			msg=e.getMessage();
			
			mv.addObject("message",msg);
		}
		return mv;
	}
	

	@GetMapping("userlogin")
	public ModelAndView userlogin()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("userlogin");
	    return mv;
	}
	
	@PostMapping("checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		Admin admin=adminService.checkadminlogin(email, pwd);
		
		Blogger user=bloggerService.checkuserlogin(email, pwd);
		
		if(admin!=null) {
			mv.setViewName("adminhome");
		}
		else if(user!=null)
		{
			//session start
			HttpSession session=request.getSession();
			
			session.setAttribute("uid", user.getId()); 
			session.setAttribute("uname", user.getName()); 
			session.setAttribute("uemail", user.getEmail());
			session.setAttribute("ulocation", user.getLocation());
			session.setAttribute("ucontactno", user.getContact());
			session.setAttribute("ugender", user.getGender());
			session.setAttribute("udob", user.getDateofbirth());
			//session end
			mv.setViewName("userhome");
		}
		else
		{
			mv.setViewName("userlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	

	/*@GetMapping("adminlogin") 
	public ModelAndView adminlogin()
	{
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminlogin");
	     return mv;
	}*/
	


	/*@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		String uname= request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		
		Admin a = adminService.checkadminlogin(uname, pwd);
		
		ModelAndView mv =new ModelAndView();
		if(a!=null)
		{
			mv.setViewName("adminhome");  
			
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}*/
	
	@GetMapping("adminhome")
	   public ModelAndView adminhome()
	   {
		long userscount=adminService.userscount(); 
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminhome");
	     mv.addObject("ucount",userscount); 
	     return mv;
	   }
	
	@GetMapping("viewallusers")
	public ModelAndView viewallusers()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallusers");
		
		List<Blogger> userlist =adminService.viewallusers();
		mv.addObject("userdata", userlist);
		return mv;
	}
	@GetMapping("GetDetails")
	   public ModelAndView viewdetails(@RequestParam("id") int uid)
	   {
	     Blogger user = bloggerService.viewuserbyid(uid);
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("userdetails");
	     mv.addObject("user", user);
	     return mv;
	   }

	@GetMapping("ViewallComments")
	public ModelAndView ViewallComments()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ViewallComments");
		
		List<Comment> userlist =adminService.ViewallComments();
		mv.addObject("userdata", userlist);
		return mv;
	}
	
	@GetMapping("viewallfeedback")
	public ModelAndView viewallfeedback()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallfeedback");
		
		List<Feedback> userfeedback =adminService.viewallfeedback();
		mv.addObject("userfeedback", userfeedback);
		return mv;
	}
	
	@GetMapping("view")
	   public ModelAndView viewempdemo(@RequestParam("id") int uid)
	   {
	     Blogger user = adminService.viewuserbyid(uid);
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("viewuserbyid");
	     mv.addObject("user", user);
	     return mv;
	   }
	@GetMapping("deleteuser")
    public ModelAndView deleteuser()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("deleteuser");
      
      List<Blogger> userlist =  adminService.viewallusers();
      
      mv.addObject("userdata", userlist);
      
      return mv;
    }
	
	  @GetMapping("userlogout")
	   public ModelAndView userlogout()
	   {
		   ModelAndView mv= new ModelAndView();
		   mv.setViewName("userlogin");
		   mv.addObject("message","Logout Succesfully");
		   return mv;
	   }


	@GetMapping("delete/{id}")
	public String deleteaction(@PathVariable("id") int uid )
	{
		adminService.deleteuser(uid);
		return "redirect:/deleteuser";
	}

	
	
	@GetMapping("contactus")
	public ModelAndView contactus()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("contactus");
	    return mv;
	  }
	
	@GetMapping("createpost")
	public ModelAndView createpost() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("createpost");
	    return mv;
	}

	@PostMapping("processpost")
	public ModelAndView processpost(HttpServletRequest request,@RequestParam("image") MultipartFile file) throws IOException, SerialException, SQLException {

		ModelAndView mv=new ModelAndView();
		String msg=null;
		
		try 
		{
			String author = request.getParameter("author");
			String title = request.getParameter("title");
			String content = request.getParameter("content"); 
			byte[] bytes = file.getBytes();
			  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			
			
			CreatePost user = new CreatePost();
		       user.setAuthorName(author);
		       user.setPostTitle(title);
		       user.setImage(blob);
		       user.setPostContent(content); 
		       
		      
		       
		      msg = cps.postregister(user);
		      
		      mv.setViewName("displayblogmsg");
		      mv.addObject("message",msg);
		}
		catch (Exception e) 
		{
			mv.setViewName("displayerror");
			
			msg=e.getMessage();
			
			mv.addObject("message",msg);
		}
		return mv;
	}
    @GetMapping("displayimage")
    public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
    {
      CreatePost post =  cps.ViewpostByID(id);
      byte [] imageBytes = null;
      imageBytes = post.getImage().getBytes(1,(int) post.getImage().length());

      return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
    }
    
	@PostMapping("feedbackregister")
	public ModelAndView processfeedback(HttpServletRequest request) {

		ModelAndView mv=new ModelAndView();
		String msg=null;
		
		try 
		{
			String feedback = request.getParameter("feedback");
			
			Feedback user = new Feedback();
		       user.setfeedbackContent(feedback);
		       
		       
		      msg = feedbackService.feedbackregister(user);
		      
		      mv.setViewName("displayfeedback");
		      mv.addObject("message",msg);
		}
		catch (Exception e) 
		{
			mv.setViewName("displayerror");
			
			msg=e.getMessage();
			
			mv.addObject("message",msg);
		}
		return mv;
	}
	@GetMapping("userhome")
	public ModelAndView userhome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userhome");
		return mv;
	}
	@GetMapping("aboutus")
	public ModelAndView aboutus() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("aboutus");
	    return mv;
	}
	@GetMapping("viewallblogs")
	public ModelAndView viewallblogs()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallblogs");
		List<CreatePost> userlist =adminService.viewallblogs();
		mv.addObject("userdata", userlist);
		return mv;
	}
	@GetMapping("userblogs1")
	public ModelAndView userblogs1()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userblogs1");
		List<CreatePost> userlist =adminService.viewallblogs();
		System.out.println(userlist);
		mv.addObject("userdata1", userlist);
		return mv;
	}
	@GetMapping("deletepost/{id}")
	public String deletepost(@PathVariable("id") int uid) {
	    adminService.deletepost(uid);
	    return "redirect:/viewallblogs";
	}
	@GetMapping("deletecmt/{id}")
	public String deletecmt(@PathVariable("id") int uid) {
	    adminService.deletecmt(uid);
	    return "redirect:/ViewallComments";
	}
	
	
	@GetMapping("viewallposts")
	public ModelAndView viewuserblogs()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewuserblogs");
		List<CreatePost> userlist =bloggerService.userblogs1();
		mv.addObject("userdata", userlist);
		return mv;
	}

	
}
