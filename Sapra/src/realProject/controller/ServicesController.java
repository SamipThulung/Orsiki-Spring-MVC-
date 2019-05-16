package realProject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import realProject.entity.Repair;
import realProject.entity.SuitCheck;
import realProject.entity.Suits;
import realProject.entity.SuitsOrder;
import realProject.service.RepairsService;
import realProject.service.SuitsService;
import realProject.service.UserService;

@Controller
@RequestMapping("/service")
public class ServicesController {
	
	@Autowired
	SuitsService suitService;
	@Autowired
	UserService userService;
	@Autowired
	RepairsService repairService;
	
	@RequestMapping(value="/tailor")
	public String tailor(Model theModel, HttpSession session){
		List<Suits> list2 = suitService.getMaleSuits();
		List<Suits> list1 =suitService.getFemaleSuits();
		
		theModel.addAttribute("list1",list1);
		theModel.addAttribute("list2",list2);
		SuitsOrder suitOrder= new SuitsOrder();
		theModel.addAttribute("suitOrder", suitOrder);
		
		if(session.getAttribute("user") != null){
			userExists(theModel, session);
			return "Tailor";
			
		}else{
			
			userDoesnotExist(theModel, session);
			return "Tailor";}
		
		
	}
	
	@GetMapping(value="/measurement")
	public String measurement(Model theModel, HttpSession session, @RequestParam("Id") int theId,@RequestParam("cate") String cate){
	
		
		
		
		session.setAttribute("currentId", theId);
		
		List<Suits> allSuits = suitService.getAllSuits();
		
		Suits c = allSuits.get(theId-1);
		SuitCheck suitOrder= new SuitCheck();
	
		theModel.addAttribute("id",c.getId());
		theModel.addAttribute("msg",c.getDescription());	
		theModel.addAttribute("img",c.getImage1());
		theModel.addAttribute("gender",c.getGender());
		theModel.addAttribute("brand",c.getName());
		theModel.addAttribute("suitOrder", suitOrder);
		
		
		if(session.getAttribute("user") != null){
			userExists(theModel, session);
			return "MeasurementOrderSuits";
			
		}else{
			
			userDoesnotExist(theModel, session);
			return "MeasurementOrderSuits";}
		
		
	}
	
	public void userExists(Model theModel, HttpSession session){
		System.out.println("Here is the request" + session.getAttribute("id"));
		System.out.println("Here is the request" + session.getAttribute("user"));
		
		
		
		
		theModel.addAttribute("visibleLogin", "none");
		theModel.addAttribute("visibleLogout", "inline");
		theModel.addAttribute("visibleLolly", "inline-block");
		theModel.addAttribute("buying",session.getAttribute("user"));
		String username=(String) session.getAttribute("user");
		String password = (String) session.getAttribute("psw");
		System.out.println(username+password);
		int userID = userService.checkLogin(username, password);
		System.out.println(userID+"Here is the userID userId");
		int uss =Integer.parseInt( userService.getReader(userID).getLolly());
		theModel.addAttribute("lollyMoney",uss);
		theModel.addAttribute("loginName", userService.getReader(userID).getFirstName());
	}
	
	public void userDoesnotExist(Model theModel, HttpSession session){
		theModel.addAttribute("visibleLolly", "none");
		theModel.addAttribute("loginName", "Login");
		theModel.addAttribute("visibleLogin", "inline");
		theModel.addAttribute("visibleLogout", "none");
		theModel.addAttribute("buying", "");
	}
	
	
	@PostMapping(value="/measurementComplete")
	public String addSuit(@Valid @ModelAttribute("suitOrder") SuitCheck suits, BindingResult theBindingResult, HttpSession session,Model theModel){
		System.out.println(""+ theBindingResult.hasErrors());
		System.out.println("BlazzerLength"+suits.getBlazzerLength());
		
		List<Suits> allSuits = suitService.getAllSuits();
		int i = (Integer) session.getAttribute("currentId");
		Suits c = allSuits.get(i-1);
		theModel.addAttribute("id",c.getId());
		theModel.addAttribute("msg",c.getDescription());	
		theModel.addAttribute("img",c.getImage1());
		theModel.addAttribute("gender",c.getGender());
		theModel.addAttribute("brand",c.getName());
		
		
		if(theBindingResult.hasErrors()){
			if(session.getAttribute("user") != null){
				userExists(theModel, session);
				return "MeasurementOrderSuits";}
			else{
				userDoesnotExist(theModel, session);
			return "MeasurementOrderSuits";}
		
		//suitService.addSuits(suits);
		}else{
			SuitsOrder suitDb = new SuitsOrder();
			
			suitDb.setUsername(suits.getUsername());
			suitDb.setContactNumber(suits.getContactNumber());
			suitDb.setDate(suits.getDate());
			suitDb.setLocation(suits.getLocation());
			suitDb.setBlazzerLength(suits.getBlazzerLength());
			suitDb.setChestLength(suits.getChestLength());
			suitDb.setShoulderLength(suits.getShoulderLength());
			suitDb.setSleeveLength(suits.getSleeveLength());
			suitDb.setPantLength(suits.getPantLength());
			suitDb.setWaistLength(suits.getWaistLength());
			suitDb.setHipLength(suits.getHipLength());
			suitDb.setThighToKneeLength(suits.getThighToKneeLength());
			suitDb.setProductid(suits.getProductid());
			suitDb.setProducttype(suits.getProducttype());
			suitService.addSuits(suitDb);
		return "thankYouPage";}
	}
	
	@RequestMapping("/mobileRepairing")
	public String mobileReparing(Model theModel,HttpSession session){
		Repair rep = new Repair();
		theModel.addAttribute("rep",rep);
		if(session.getAttribute("user") != null){
			userExists(theModel, session);
			
			return "MobileRepairing";
			
		}else{
			
			userDoesnotExist(theModel, session);
			return "MobileRepairing";}
		
		
	}
	
	@RequestMapping("/after")
	public String after(@ModelAttribute("rep") Repair rep){
		repairService.addRepairs(rep);
		return "thankYouPage";
	}

}
