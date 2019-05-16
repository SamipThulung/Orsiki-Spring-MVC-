package realProject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import realProject.dao.SearchDAO;

import realProject.entity.MainObject;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private SearchDAO searchService;
	
	@Override
	@Transactional
	public ArrayList<MainObject> list(String keyword) {
		
		return searchService.searchItem(keyword);
	}


}
