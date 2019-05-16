package realProject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import realProject.entity.Order;
import realProject.entity.User;
import realProject.service.OrderService;
import realProject.service.UserService;

@Controller
@RequestMapping("/orderClass")
public class OrderController {
	
	@Autowired 
	private OrderService orderService;
	
	@Autowired
	private UserService userService;
	
	@PostMapping(value="/addOrder")
	public ModelAndView addOrder( @RequestParam("userLolly") String userLolly,@RequestParam("username") String uname, @RequestParam("quantity") String quantity, @RequestParam("date") String date, @RequestParam("contact") String contact, @RequestParam("location") String location, @RequestParam("productid") String productid, @RequestParam("producttype") String producttype, @RequestParam("price") String price, @RequestParam("cp") String cp,HttpSession session){

		
		
		
		
		
		Order order = new Order();
		order.setProductType(producttype);
		order.setProductId(productid);
		order.setUserName(uname);
		order.setQuantity(quantity);
		order.setDate(date);
		order.setContactNo(contact);
		order.setLocation(location);
		
		System.out.println("" + order.getUserName());
		
		//session.removeAttribute("user");
		ModelAndView thanks = new ModelAndView("thankYouPage");

		if(session.getAttribute("user") != null){
			
			int total= Integer.parseInt(quantity) * (Integer.parseInt(price));
			int totalPrice = total- Integer.parseInt(userLolly);
			thanks.addObject("price",total);
			thanks.addObject("dp", totalPrice);
			thanks.addObject("user",session.getAttribute("user"));
			order.setPrice(totalPrice+"");
			
			
			int userId = userService.checkLogin(""+session.getAttribute("user"), session.getAttribute("psw")+"");
			int currentLolly = Integer.parseInt(userService.getReader(userId).getLolly()) - Integer.parseInt(userLolly);
			int lolly = (int) ((Double.parseDouble(price)*5)/100);
			int totalLolly = currentLolly + (lolly*Integer.parseInt(quantity));
			System.out.println(totalLolly+"total lolly");
			userService.updateLolly(userId, ""+totalLolly);
		  thanks.addObject("additionalLolly", "Congratulation! another " +(lolly*Integer.parseInt(quantity))+" lolly added to your account (You can use it to deduct prices in any products you buy in sapra)");
			orderService.addOder(order);
			
		}
		else{
			int lolly = (int) ((Double.parseDouble(price)*5)/100);
			
			int total= Integer.parseInt(quantity) * (Integer.parseInt(price)- lolly);
			int totalprice= Integer.parseInt(quantity) * (Integer.parseInt(price));
			thanks.addObject("price",totalprice);
			thanks.addObject("dp", total);
			thanks.addObject("user","");
			order.setPrice(total+"");
			orderService.addOder(order);
		}
		return thanks;
		
	}
	
	@RequestMapping(value="/redirect")
	public String redirect(){
		return "list-customers";
	}

}
