package realProject.service;

import java.util.List;

import realProject.entity.Suits;
import realProject.entity.SuitsOrder;



public interface SuitsService {

	List<Suits> getMaleSuits();
	List<Suits> getFemaleSuits();
	List<Suits> getAllSuits();
	void addSuits(SuitsOrder suit);
}
