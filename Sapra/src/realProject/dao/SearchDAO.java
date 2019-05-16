package realProject.dao;

import java.util.ArrayList;

import realProject.entity.Customer;
import realProject.entity.MainObject;

public interface SearchDAO {

	public ArrayList<MainObject> searchItem(String keyword);
}
