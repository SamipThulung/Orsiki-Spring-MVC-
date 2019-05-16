package realProject.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import realProject.dao.SuitsDAO;
import realProject.entity.Suits;
import realProject.entity.SuitsOrder;

@Service
public class SuitsServiceImpl implements SuitsService {

	@Autowired
	SuitsDAO suitDAO;
	
	@Override
	@Transactional
	public List<Suits> getMaleSuits() {
		List<Suits> maleSuits = new ArrayList<Suits>();
		
		for(Suits s : suitDAO.getAllProduct()){
			if(s.getGender().equalsIgnoreCase("Male")){
				maleSuits.add(s);
			}
		}
		return maleSuits;
	}

	@Override
	@Transactional
	public List<Suits> getFemaleSuits() {
		List<Suits> femaleSuits = new ArrayList<Suits>();
		
		for(Suits s : suitDAO.getAllProduct()){
			if(s.getGender().equalsIgnoreCase("female")){
				femaleSuits.add(s);
			}
		}
		return femaleSuits;
	}
	
	@Override
	@Transactional
	public List<Suits> getAllSuits() {
		
		return suitDAO.getAllProduct();
	}
	
	@Override
	@Transactional
	public void addSuits(SuitsOrder suit) {
		
		 suitDAO.addSuit(suit);
	}

}
