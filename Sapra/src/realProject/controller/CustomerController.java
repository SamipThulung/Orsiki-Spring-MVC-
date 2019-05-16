package realProject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import realProject.entity.Customer;
import realProject.entity.Jackets;
import realProject.entity.Jama;
import realProject.entity.Order;
import realProject.entity.Products;
import realProject.entity.RegiUser;
import realProject.entity.Repair;
import realProject.entity.User;
import realProject.service.CustomerService;
import realProject.service.ProductService;
import realProject.service.UserService;



@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	//inject customer Service
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ProductService productService;
	@Autowired 
	private UserService userService;
	
	@RequestMapping("/home")
	public String listCustomer(Model theModel, HttpSession session){
		
		//get customers from dao
		List<Customer> theCustomers = customerService.getCustomers();
		List<Jama> skirts = customerService.getSkirts();
		List<Jackets> jackets = customerService.getJackets();
		List<Products> product = productService.getTrending();
	
		
		theModel.addAttribute("customers", theCustomers);
		theModel.addAttribute("sklo", skirts);
		theModel.addAttribute("jackets", jackets);
		
		for(int i =0;i < product.size();i++){
			Products c = product.get(i);
			
			theModel.addAttribute("trending"+i, c.getImage1());
			theModel.addAttribute("trendingDescription"+i, c.getName());
		}
		
		
	

		if(session.getAttribute("user") != null){
			
			System.out.println("Here is the request" + session.getAttribute("psw"));
			System.out.println("Here is the request" + session.getAttribute("user"));
			
			
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			
			String username=(String) session.getAttribute("user");
			String password = (String) session.getAttribute("psw");
			
			System.out.println(username+password);
			int userID = userService.checkLogin(username, password);
			String firstname = userService.getReader(userID).getFirstName();
			System.out.println(userID+"Here is the userID userId");
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("buying",userService.getReader(userID).getFirstName());
			theModel.addAttribute("loginName", firstname);
			theModel.addAttribute("OwnerMessage", "Welcome to "+firstname +"'s Oriski" );
			theModel.addAttribute("lollyMoney",uss);
			
			return "oriskiHome";
			
		}else{
			
			theModel.addAttribute("loginName", "Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			theModel.addAttribute("visibleLolly", "none");
			theModel.addAttribute("buying", "");
			return "oriskiHome";}
	}
	
//	@RequestMapping("/skL")
//	public String listSkirts(Model model){
//		List<Skirts> skirts = customerService.getSkirts();
//		model.addAttribute("sk", skirts);
//		return "list-customers";
//	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model TheModel){
		Customer thecustomer = new Customer();
		TheModel.addAttribute("customer", thecustomer);
		
		return "customer-form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer){
		
		//save customer using service
		customerService.saveCustomer(theCustomer);
		
		return "redirect:/customer/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId, Model theModel){
		
		//get customer from the service
		Customer theCustomer = customerService.getCustomer(theId);
		
		//set customer as model attribute to pre populate the form
		theModel.addAttribute("customer", theCustomer);
		
		//send over to our form
		return "customer-form";

}
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId){
		
		//delete the customer
		
		customerService.deleteCustomer(theId);
		
		
		
		return "redirect:/customer/list";
		
		
	}
			
		
		
		
		
	
	
	
	
	@RequestMapping(value="/check", method = RequestMethod.GET)
	public ModelAndView check(@RequestParam("Id") int theId,@RequestParam("cate") String cate, Model theModel,HttpSession session){
//		Order order = new Order();
//		theModel.addAttribute("order", order);
		ModelAndView model = new ModelAndView("oriskiProuduct");
		System.out.println("The user at Get"+ session.getAttribute("user"));
		System.out.println("This is contact: "+ session.getAttribute("contact"));
//		if (session == null) s{
//		       session.getAttribute("user");
//		       
//		   }
		System.out.println( session.getAttribute("user"));
		
		if(session.getAttribute("user") != null){
			int userId = userService.checkLogin(session.getAttribute("user")+"",session.getAttribute("psw")+"" );
			System.out.println(userId+"what the hell");
			
			User uuus = userService.getReader(userId);
			System.out.println(uuus.getGender());
			System.out.println(" user Added");
			model.addObject("loginName", " " + userService.getReader(userId).getFirstName());
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			model.addObject("buying", session.getAttribute("user")+"");
			model.addObject("contact", session.getAttribute("contact"));
			theModel.addAttribute("visibleLolly", "inline-block");
			
			theModel.addAttribute("inputRange", "range");
			theModel.addAttribute("outputValue", "text");
			theModel.addAttribute("min", 0);
			theModel.addAttribute("max", Integer.parseInt(uuus.getLolly()));
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
		}else{
			model.addObject("loginName", " Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			model.addObject("buying","");
			model.addObject("contact", "");
			theModel.addAttribute("visibleLolly", "none");
		
			theModel.addAttribute("inputRange", "hidden");
			theModel.addAttribute("outputValue", "hidden");
		}
		
		if(cate.equals("sklo")){
			List<Jama> theCustomers = customerService.getSkirts();
			Jama c = theCustomers.get(theId-1);
			
			

			model.addObject("type",c.getType());
			System.out.print("Skirts in add:" + c.getType());
			model.addObject("id",c.getId());
			model.addObject("msg",c.getDescription());	
			model.addObject("img1",c.getImage1());
			model.addObject("img2",c.getImage2());
			model.addObject("img3",c.getImage3());
			model.addObject("img4",c.getImage4());
			model.addObject("gender",c.getGender());
			model.addObject("brand",c.getName());
			model.addObject("price",c.getPrice());
			model.addObject("cp",c.getCp());
			
			return model;
		}
		else if(cate.equals("customers")){
		List<Customer> theCustomers = customerService.getCustomers();
		Customer c = theCustomers.get(theId-1);
		System.out.println(c.getDescription());
		
		model.addObject("type",c.getType());
		model.addObject("id",c.getId());
		model.addObject("msg",c.getDescription());
		model.addObject("img1",c.getImage1());
		model.addObject("img2",c.getImage2());
		model.addObject("img3",c.getImage3());
		model.addObject("img4",c.getImage4());
		model.addObject("gender",c.getGender());
		model.addObject("brand",c.getName());
		model.addObject("price",c.getPrice());
		model.addObject("cp",c.getCp());
		return model;
		}
		else if(cate.equals("jackets")){
			List<Jackets> theCustomers = customerService.getJackets();
			Jackets c = theCustomers.get(theId-1);
			System.out.println(c.getDescription());
			model.addObject("msg",c.getDescription());
		
			model.addObject("type", c.getType());
			model.addObject("id",c.getId());
			model.addObject("img1",c.getImage1());
			model.addObject("img2",c.getImage2());
			model.addObject("img3",c.getImage3());
			model.addObject("img4",c.getImage4());
			model.addObject("gender",c.getGender());
			model.addObject("brand",c.getName());
			model.addObject("cp",c.getCp());
			model.addObject("price",c.getPrice());
			return model;	
		}
		else {
			List<Products> products = productService.getAllProduct();
			Products c = products.get(theId-1);
			
			System.out.println(c.getPrice()+"This is the price of th product");
			model.addObject("msg",c.getDescription());
			
			model.addObject("type", c.getType());
			model.addObject("id",c.getId());
			model.addObject("img1",c.getImage1());
			model.addObject("img2",c.getImage2());
			model.addObject("img3",c.getImage3());
			model.addObject("img4",c.getImage4());
			model.addObject("gender",c.getGender());
			model.addObject("brand",c.getName());
			model.addObject("price",c.getPrice());
			model.addObject("cp",c.getCp());
			return model;	
		}
	}
	
	@RequestMapping(value="/trending", method = RequestMethod.GET)
	public ModelAndView getTrending(Model theModel,HttpSession session,  int theId){
		ModelAndView model = new ModelAndView("oriskiProuduct");
		System.out.println("The user at Get"+ session.getAttribute("user"));
		System.out.println("This is contact: "+ session.getAttribute("contact"));
		
		if(session.getAttribute("user") != null){
			int userId = userService.checkLogin(session.getAttribute("user")+"",session.getAttribute("psw")+"" );
			System.out.println(userId+"what the hell");
			
			User uuus = userService.getReader(userId);
			System.out.println(uuus.getGender());
			System.out.println(" user Added");
			model.addObject("loginName", " " + userService.getReader(userId).getFirstName());
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			model.addObject("buying", session.getAttribute("user")+"");
			model.addObject("contact", session.getAttribute("contact"));
			theModel.addAttribute("visibleLolly", "inline-block");
			
			theModel.addAttribute("inputRange", "range");
			theModel.addAttribute("outputValue", "text");
			theModel.addAttribute("min", 0);
			theModel.addAttribute("max", Integer.parseInt(uuus.getLolly()));
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
		}else{
			model.addObject("loginName", " Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			model.addObject("buying","");
			model.addObject("contact", "");
			theModel.addAttribute("visibleLolly", "none");
		
			theModel.addAttribute("inputRange", "hidden");
			theModel.addAttribute("outputValue", "hidden");
		}
		System.out.println("Trending number" + theId);
		List<Products> products = productService.getTrending();
		Products c = products.get(theId);
		model.addObject("msg",c.getDescription());
		
		model.addObject("type", c.getType());
		model.addObject("id",c.getId());
		model.addObject("img1",c.getImage1());
		model.addObject("img2",c.getImage2());
		model.addObject("img3",c.getImage3());
		model.addObject("img4",c.getImage4());
		model.addObject("gender",c.getGender());
		model.addObject("brand",c.getName());
		model.addObject("price",c.getPrice());
		model.addObject("cp",c.getCp());
		return model;	

	
	}
	
	@RequestMapping(value="/trending1", method = RequestMethod.GET)
	public ModelAndView trend1(Model theModel,HttpSession session){
		return getTrending(theModel, session,   0);
	}
	
	@RequestMapping(value="/trending2", method = RequestMethod.GET)
	public ModelAndView trend2(Model theModel,HttpSession session){
		return getTrending(theModel, session,   1);
	}
	@RequestMapping(value="/trending3", method = RequestMethod.GET)
	public ModelAndView trend3(Model theModel,HttpSession session){
		return getTrending(theModel, session,   2);
	}
	
	@GetMapping("/checkSkirt")
	public ModelAndView checkSkirts(@RequestParam("Id") int theId){
		
		List<Jama> theCustomers = customerService.getSkirts();
		Jama c = theCustomers.get(theId);
		System.out.println(c.getDescription());
		ModelAndView model = new ModelAndView("check");
		model.addObject("msg",c.getDescription());
		
		return model;
	}
	
	
	
	@GetMapping("/registerButton")
	public String userFormProcess(Model theModel){
		RegiUser thecustomer = new RegiUser();
		theModel.addAttribute("show", "none");
		theModel.addAttribute("user", thecustomer);
		return "registration-form";
	}
	
	@RequestMapping("/more")
	public String more(Model theModel){
		List<Customer> theCustomers = customerService.getCustomers();
		
		theModel.addAttribute("pants",theCustomers);
		
		return "More";
	}
}

