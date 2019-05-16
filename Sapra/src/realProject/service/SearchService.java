package realProject.service;

import java.util.ArrayList;

import realProject.entity.Customer;
import realProject.entity.MainObject;

public interface SearchService {
	public ArrayList<MainObject> list(String keyword);
	
}
