package realProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import realProject.dao.LollyDAO;
import realProject.entity.Lolly;

@Service
public class LollyServiceImpl implements LollyService {

	@Autowired
	LollyDAO lollyDAO;
	
	@Override
	@Transactional
	public void addLolly(Lolly lolly) {
	
      lollyDAO.addLolly(lolly);
	}

}
