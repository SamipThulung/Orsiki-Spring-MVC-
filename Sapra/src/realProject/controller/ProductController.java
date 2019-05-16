package realProject.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import realProject.service.ProductService;
import realProject.service.UserService;
import realProject.entity.Products;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired 
	private UserService userService;

//	List<Products> list4 = new ArrayList<Products>();
//	List<Products> list5 = new ArrayList<Products>();
//	List<Products> list6 = new ArrayList<Products>();
	
	
	
	@RequestMapping("/gentsUpper")
	public String gentsUpper(Model theModel, HttpSession session){
		List<Products> list1 = new ArrayList<Products>();
		List<Products> list2 = new ArrayList<Products>();
		List<Products> list3 = new ArrayList<Products>();
		for(Products a: productService.getGentsUpper()){
		
			if(a.getSubtype().equals("u1")){
				list1.add(a);
			}else if(a.getSubtype().equals("u2")){
				System.out.println("Controller Desc"+ a.getDescription());
				list2.add(a);
				System.out.println("added to list2 in controller");
			}else if(a.getSubtype().equals("u3")){
				list3.add(a);
			}
		}
		theModel.addAttribute("list1",list1);
		theModel.addAttribute("list2",list2);
		theModel.addAttribute("list3",list3);

		if(session.getAttribute("user") != null){
			theModel.addAttribute("loginName",session.getAttribute("user"));
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
			userExists(theModel, session);
			return "Products";
			
		}else{
			theModel.addAttribute("loginName"," Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			theModel.addAttribute("visibleLolly", "none");
			
			userDoesnotExist(theModel, session);
			return "Products";}
		
	}
	
	@RequestMapping("/ladiesLower")
	public String ladiesLower(Model theModel, HttpSession session){
		List<Products> list1 = new ArrayList<Products>();
		List<Products> list2 = new ArrayList<Products>();
		List<Products> list3 = new ArrayList<Products>();
		for(Products a: productService.getLadiesLower()){
						
			if(a.getSubtype().equals("l1")){
					list1.add(a);
			}else if(a.getSubtype().equals("l2")){
				list2.add(a);
			}else if(a.getSubtype().equals("l3")){
				list3.add(a);
			}
		}
		theModel.addAttribute("list1",list1);
		theModel.addAttribute("list2",list2);
		theModel.addAttribute("list3",list3);
	
		if(session.getAttribute("user") != null){
			theModel.addAttribute("loginName",session.getAttribute("user"));
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
			userExists(theModel, session);
			return "Products";
			
		}else{
			theModel.addAttribute("loginName"," Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			theModel.addAttribute("visibleLolly", "none");
			
			userDoesnotExist(theModel, session);
			return "Products";}
	}
	
	@RequestMapping("/ladiesShoes")
	public String ladiesShoes(Model theModel, HttpSession session){
		List<Products> list1 = new ArrayList<Products>();
		List<Products> list2 = new ArrayList<Products>();
		List<Products> list3 = new ArrayList<Products>();
		for(Products a: productService.getLadiesShoes()){
						
			if(a.getSubtype().equals("s1")){
					list1.add(a);
			}else if(a.getSubtype().equals("s2")){
				list2.add(a);
			}else if(a.getSubtype().equals("s3")){
				list3.add(a);
			}
		}
		theModel.addAttribute("list1",list1);
		theModel.addAttribute("list2",list2);
		theModel.addAttribute("list3",list3);
	
		if(session.getAttribute("user") != null){
			theModel.addAttribute("loginName",session.getAttribute("user"));
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
			userExists(theModel, session);
			return "Products";
			
		}else{
			theModel.addAttribute("loginName"," Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			theModel.addAttribute("visibleLolly", "none");
			
			userDoesnotExist(theModel, session);
			return "Products";}
	}
	
	@RequestMapping("/ladiesUpper")
	public String LadiesUpper(Model theModel, HttpSession session){
		List<Products> list1 = new ArrayList<Products>();
		List<Products> list2 = new ArrayList<Products>();
		List<Products> list3 = new ArrayList<Products>();
		for(Products a: productService.getLadiesUpper()){
					
			if(a.getSubtype().equals("u1")){
					list1.add(a);
			}else if(a.getSubtype().equals("u2")){
				list2.add(a);
			}else if(a.getSubtype().equals("u2")){
				list3.add(a);
			}
		}
		theModel.addAttribute("list1",list1);
		theModel.addAttribute("list2",list2);
		theModel.addAttribute("list3",list3);
		if(session.getAttribute("user") != null){
			theModel.addAttribute("loginName",session.getAttribute("user"));
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
			userExists(theModel, session);
			return "Products";
			
		}else{
			theModel.addAttribute("loginName"," Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			theModel.addAttribute("visibleLolly", "none");
			
			userDoesnotExist(theModel, session);
			return "Products";}
	}
	@RequestMapping("/gentsLower")
	public String gentsLower(Model theModel, HttpSession session){
		List<Products> list1 = new ArrayList<Products>();
		List<Products> list2 = new ArrayList<Products>();
		List<Products> list3 = new ArrayList<Products>();
		for(Products a: productService.getGentsLower()){
			System.out.println("get the lower subtyoe " + a.getSubtype());			
			if(a.getSubtype().equals("l1")){
					list1.add(a);
			}else if(a.getSubtype().equals("l2")){
				list2.add(a);
			}else if(a.getSubtype().equals("l3")){
				list3.add(a);
			}
		}
		theModel.addAttribute("list1",list1);
		theModel.addAttribute("list2",list2);
		theModel.addAttribute("list3",list3);

		if(session.getAttribute("user") != null){
			theModel.addAttribute("loginName",session.getAttribute("user"));
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
			userExists(theModel, session);
			return "Products";
			
		}else{
			theModel.addAttribute("loginName"," Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			theModel.addAttribute("visibleLolly", "none");
			
			userDoesnotExist(theModel, session);
			return "Products";}
	}
	
	@RequestMapping("/gentsShoes")
	public String gentsShoes(Model theModel, HttpSession session){
		List<Products> list1 = new ArrayList<Products>();
		List<Products> list2 = new ArrayList<Products>();
		List<Products> list3 = new ArrayList<Products>();
		for(Products a: productService.getGentsShoes()){
			System.out.println("get the lower subtyoe " + a.getSubtype());			
			if(a.getSubtype().equals("s1")){
					list1.add(a);
			}else if(a.getSubtype().equals("s2")){
				list2.add(a);
			}else if(a.getSubtype().equals("s3")){
				list3.add(a);
			}
		}
		theModel.addAttribute("list1",list1);
		theModel.addAttribute("list2",list2);
		theModel.addAttribute("list3",list3);

		if(session.getAttribute("user") != null){
			theModel.addAttribute("loginName",session.getAttribute("user"));
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
			userExists(theModel, session);
			return "Products";
			
		}else{
			theModel.addAttribute("loginName"," Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			theModel.addAttribute("visibleLolly", "none");
			
			userDoesnotExist(theModel, session);
			return "Products";}
	}
	
	@RequestMapping("/ma")
	public String musicalAcess(Model theModel, HttpSession session){
		List<Products> list1 = new ArrayList<Products>();
		List<Products> list2 = new ArrayList<Products>();
		List<Products> list3 = new ArrayList<Products>();
		for(Products a: productService.getMusicalAcess()){
			System.out.println("get the lower subtyoe " + a.getSubtype());			
			if(a.getSubtype().equals("m1")){
					list1.add(a);
			}else if(a.getSubtype().equals("m2")){
				list2.add(a);
			}else if(a.getSubtype().equals("m3")){
				list3.add(a);
			}
		}
		theModel.addAttribute("list1",list1);
		theModel.addAttribute("list2",list2);
		theModel.addAttribute("list3",list3);

		if(session.getAttribute("user") != null){
			theModel.addAttribute("loginName",session.getAttribute("user"));
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
			userExists(theModel, session);
			return "Products";
			
		}else{
			theModel.addAttribute("loginName"," Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			theModel.addAttribute("visibleLolly", "none");
			
			userDoesnotExist(theModel, session);
			return "Products";}
	}
	
	@RequestMapping("/mi")
	public String musicalI(Model theModel, HttpSession session){
		List<Products> list1 = new ArrayList<Products>();
		List<Products> list2 = new ArrayList<Products>();
		List<Products> list3 = new ArrayList<Products>();
		for(Products a: productService.getMusicalI()){
		
			if(a.getSubtype().equals("m1")){
					list1.add(a);
			}else if(a.getSubtype().equals("m2")){
				list2.add(a);
			}else if(a.getSubtype().equals("m3")){
				list3.add(a);
			}
		}
		theModel.addAttribute("list1",list1);
		theModel.addAttribute("list2",list2);
		theModel.addAttribute("list3",list3);

		if(session.getAttribute("user") != null){
			theModel.addAttribute("loginName",session.getAttribute("user"));
			theModel.addAttribute("visibleLogin", "none");
			theModel.addAttribute("visibleLogout", "inline");
			theModel.addAttribute("visibleLolly", "inline-block");
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			theModel.addAttribute("lollyMoney",uss);
			userExists(theModel, session);
			return "Products";
			
		}else{
			theModel.addAttribute("loginName"," Login");
			theModel.addAttribute("visibleLogin", "inline");
			theModel.addAttribute("visibleLogout", "none");
			theModel.addAttribute("visibleLolly", "none");
			
			userDoesnotExist(theModel, session);
			return "Products";}
	}
	
	public void userExists(Model theModel, HttpSession session){
		
		
		theModel.addAttribute("loginName", session.getAttribute("user"));
		theModel.addAttribute("visibleLogin", "none");
		theModel.addAttribute("visibleLogout", "inline");
		theModel.addAttribute("buying",session.getAttribute("user"));
	}
	
	public void userDoesnotExist(Model theModel, HttpSession session){
		theModel.addAttribute("loginName", "Login");
		theModel.addAttribute("visibleLogin", "inline");
		theModel.addAttribute("visibleLogout", "none");
		theModel.addAttribute("buying", "");
	}
}
