package realProject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import realProject.entity.Jama;
import realProject.entity.MainObject;
import realProject.service.SearchService;
import realProject.service.UserService;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	@Autowired 
	private UserService userService;
	
	@RequestMapping(value="/Search")
	public ModelAndView search(@RequestParam("keyword")String keyword, HttpSession session){
		System.out.println("We have entered");
		ArrayList<MainObject> pants = new ArrayList<MainObject>();
		
		pants = searchService.list(keyword);
		for(MainObject j : pants){
			if(j instanceof Jama){
			  Jama i = (Jama) j;
			System.out.println("There is a skirt" + i.getName());}
		}
		ModelAndView pantView = new ModelAndView("oriskiSearchResult");
		pantView.addObject("pants",pants);
		if(session.getAttribute("user") != null){
			pantView.addObject("loginName",session.getAttribute("user"));
			pantView.addObject("visibleLogin", "none");
			pantView.addObject("visibleLogout", "inline");
			pantView.addObject("visibleLolly", "inline-block");
			
			int userID = userService.checkLogin(""+session.getAttribute("user"), ""+session.getAttribute("psw"));
			int uss =Integer.parseInt( userService.getReader(userID).getLolly());
			pantView.addObject("lollyMoney",uss);
		}else{
			pantView.addObject("loginName"," Login");
			pantView.addObject("visibleLogin", "inline");
			pantView.addObject("visibleLogout", "none");
			pantView.addObject("visibleLolly", "none");
		}
		return pantView;
		
	}


}
