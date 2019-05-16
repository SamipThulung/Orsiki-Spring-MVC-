package realProject.dao;

import java.util.List;


import realProject.entity.Suits;
import realProject.entity.SuitsOrder;

public interface SuitsDAO {
	List<Suits> getAllProduct();

	void addSuit(Suits suit);

	void addSuit(SuitsOrder suit);
}
