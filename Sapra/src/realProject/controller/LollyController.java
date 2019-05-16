package realProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import realProject.service.LollyService;

@Controller
@RequestMapping("/lolly")
public class LollyController {

	@Autowired
	LollyService lollyService;
	
	@RequestMapping(value="/redirect")
	public String add(){
		return null;
	}
}
