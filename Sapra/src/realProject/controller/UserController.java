package realProject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import realProject.entity.Customer;
import realProject.entity.Jackets;
import realProject.entity.Jama;
import realProject.entity.Products;
import realProject.entity.RegiUser;
import realProject.entity.User;
import realProject.service.CustomerService;
import realProject.service.ProductService;
import realProject.service.UserService;

@Controller
@RequestMapping("/userClass")
public class UserController {

	@Autowired 
	private UserService userService;
	
	@Autowired 
	private CustomerService customerService;
	
	@Autowired
	private ProductService productService;
	
	@PostMapping(value="/userFormProcess")
	public String userFormProcess(Model theModel, @Valid @ModelAttribute("user") RegiUser theUser,  BindingResult theBindingResult, HttpSession session, Model model){
		System.out.println(""+ theBindingResult.hasErrors());
		
		System.out.println(theUser.getConfirmIdentifier().equals(theUser.getIdentifier())+"sam");
		if(!theUser.getConfirmIdentifier().equals(theUser.getIdentifier())){
			System.out.println("Not a problem");
			session.setAttribute("show", "block");
			session.setAttribute("passwordError", "Duita password eutai vayena.");
			return "registration-form";
		}
		else if(theBindingResult.hasErrors()){
			
			return "registration-form";
			
		}else if(userService.getUserName(theUser.getUserName()) != 0){
			session.setAttribute("show", "block");
			session.setAttribute("passwordError", "Yo username arule lesakeko cha tesalai le arko chanunah");
			return "registration-form";
		}
		else{
			
			
			User user = new User();
			user.setContactNumber(theUser.getContactNumber());
			user.setDob(theUser.getDob());
			user.setUserName(theUser.getUserName());
			user.setFirstName(theUser.getFirstName());
			user.setLastName(theUser.getLastName());
			user.setLocation(theUser.getLocation());
			user.setIdentifier(theUser.getIdentifier());
			user.setEmail(theUser.getEmail());
			user.setGender(theUser.getGender());
			
			System.out.println(user.getUserName()+"userName");
			System.out.println(user.getDob());
			
			
			user.setStatus(1);
			user.setType(1);
			userService.addReader(user);
			userService.updateLolly(user.getUserId(), ""+100);
			
			
			
			theModel.addAttribute("loginName", user.getFirstName());
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			theModel.addAttribute("buying",session.getAttribute("user"));
			theModel.addAttribute("OwnerMessage", "Welcome to "+user.getFirstName()+"'s Sapra" );
			theModel.addAttribute("lollyMessage", "Congratulation! "+ user.getFirstName()+" you have received 100 Lolly (you can deduct prices through lolly for any product you buy in sapra)" );
			int userID = userService.checkLogin(user.getUserName(), user.getIdentifier());
			
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
			
			
			
			List<Customer> theCustomers = customerService.getCustomers();
			List<Jama> skirts = customerService.getSkirts();
			List<Jackets> jackets = customerService.getJackets();
			
//			for(Jackets j : jackets){
//				System.out.println(j.getDescription()+"");
//			}
			//add the customers to the model
			
			theModel.addAttribute("customers", theCustomers);
			theModel.addAttribute("sklo", skirts);
			theModel.addAttribute("jackets", jackets);
			
			
			session.setAttribute("user", user.getUserName());
			
			session.setAttribute("psw", user.getIdentifier());
			session.setAttribute("contact", user.getContactNumber());
			session.setAttribute("loginName", user.getFirstName());
			
		return "list-customers";}
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(User user, BindingResult result,RedirectAttributes redirectAttributes, @RequestParam("uname") String uname,
            @RequestParam("psw") String psw, Model theModel, HttpSession session){
		
		int userExists = userService.checkLogin(uname,psw);
		System.out.println("user Exists" + userExists);
		List<Customer> theCustomers = customerService.getCustomers();
		List<Jama> skirts = customerService.getSkirts();
		List<Jackets> jackets = customerService.getJackets();
		List<Products> product = productService.getTrending();
		
		for(int i =0;i < product.size();i++){
			Products c = product.get(i);
			System.out.println(""+i);
			theModel.addAttribute("trending"+i, c.getImage1());
		}
		
		theModel.addAttribute("customers", theCustomers);
		theModel.addAttribute("sklo", skirts);
		theModel.addAttribute("jackets", jackets);

		if(userExists != 0 ){
				if(userService.checkLogin(uname,psw) == userService.getReader(userExists).getUserId()){
					session.setAttribute("id", userExists);
					
					session.setAttribute("user", userService.getReader(userExists).getUserName());
					session.setAttribute("psw", userService.getReader(userExists).getIdentifier());
					System.out.println("adding attribute"+userService.getReader(userExists).getUserName());
					
					session.setAttribute("contact", userService.getReader(userExists).getContactNumber());
					
					redirectAttributes.addFlashAttribute("messages", "successfully login");  
				
					//add the customers to the model
					
					theModel.addAttribute("loginName", " " + userService.getReader(userExists).getFirstName());
					theModel.addAttribute("visibleLogin", "none");
					theModel.addAttribute("visibleLogout", "inline");
					theModel.addAttribute("OwnerMessage", "Welcome to "+ userService.getReader(userExists).getFirstName()+"'s Sapra" );
					int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
					int uss =Integer.parseInt( userService.getReader(userID).getLolly());
					theModel.addAttribute("lollyMoney",uss);
					return "oriskiHome";
					
				}else
					{
					System.out.println("Entering the non exception");
					theModel.addAttribute("loginName", " Login");
					theModel.addAttribute("visibleLogin", "inline");
					theModel.addAttribute("visibleLogout", "none");
					int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
					int uss =Integer.parseInt( userService.getReader(userID).getLolly());
					theModel.addAttribute("lollyMoney",uss);
					return "oriskiHome";
			
			}
				}else if(uname.isEmpty() && psw.isEmpty()){
					System.out.println("Entering the non exception");
					theModel.addAttribute("loginName", " Login");
					theModel.addAttribute("visibleLogin", "inline");
					theModel.addAttribute("visibleLogout", "none");
					int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
					int uss =Integer.parseInt( userService.getReader(userID).getLolly());
					theModel.addAttribute("lollyMoney",uss);
			return  "oriskiHome";
		}
		
				else{
					session.setAttribute("show", "block");
					session.setAttribute("userNotFoundError", "Please check if your username and password is correct.");
					
					return "LoginForm";
				}
		
		
	
	}
	
	
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		session.removeAttribute("contact");
		session.removeAttribute("id");
		session.removeAttribute("psw");
		session.removeAttribute("OwnerMessage");
		session.removeAttribute("contact");
		session.removeAttribute("loginName");
		session.removeAttribute("firstname");
		session.removeAttribute("lollyMoney");
		return "redirect:/customer/home";
	}
	
}

