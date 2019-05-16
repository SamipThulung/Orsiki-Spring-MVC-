package realProject.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import realProject.dao.ProductDAO;
import realProject.entity.Products;
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	@Transactional
	public List<Products> getLadiesUpper() {
		List<Products> ladiesUpper = new ArrayList<Products>();
		
		for(Products a:productDAO.getUpper()){
			if(a.getGender().equals("female")){
				ladiesUpper.add(a);
			}
		}
		return ladiesUpper;
	}

	@Override
	@Transactional
	public List<Products> getGentsUpper() {
		List<Products> gentsUpper = new ArrayList<Products>();
		
		for(Products a:productDAO.getUpper()){
			
			if(a.getGender().equals("male")){
				
				gentsUpper.add(a);
		
			}
		}
		return gentsUpper;
		
	}
	
	@Override
	@Transactional
	public List<Products> getGentsShoes() {
		List<Products> gentsUpper = new ArrayList<Products>();
		
		for(Products a:productDAO.getShoes()){
			
			if(a.getGender().equals("male")){
				
				gentsUpper.add(a);
		
			}
		}
		return gentsUpper;
		
	}

	@Override
	@Transactional
	public List<Products> getGentsLower() {
		List<Products> gentsLower = new ArrayList<Products>();
		
		for(Products a:productDAO.getLower()){

			if(a.getGender().equals("male")){
				gentsLower.add(a);
			}
		}
		return gentsLower;

	}

	@Override
	@Transactional
	public List<Products> getLadiesLower() {
		List<Products> ladiesLower = new ArrayList<Products>();
		
		for(Products a:productDAO.getLower()){
			System.out.println("Ladies lower" + a.getDescription());
			if(a.getGender().equals("female")){
				ladiesLower.add(a);
			}
		}
		return ladiesLower;

	}
	@Override
	@Transactional
	public List<Products> getLadiesShoes() {
		List<Products> ladiesLower = new ArrayList<Products>();
		
		for(Products a:productDAO.getShoes()){
			System.out.println("Ladies lower" + a.getDescription());
			if(a.getGender().equals("female")){
				ladiesLower.add(a);
			}
		}
		return ladiesLower;

	}
	
	@Override
	@Transactional
	public List<Products> getMusicalAcess() {
		List<Products> ladiesLower = new ArrayList<Products>();
		
		for(Products a:productDAO.getMusical()){
			System.out.println("Ladies lower" + a.getDescription());
			if(a.getGender().equals("unisex")){
				ladiesLower.add(a);
			}
		}
		return ladiesLower;

	}
	@Override
	@Transactional
	public List<Products> getMusicalI() {
		List<Products> ladiesLower = new ArrayList<Products>();
		
		for(Products a:productDAO.getMusicalI()){
		
			if(a.getGender().equals("unisex")){
				ladiesLower.add(a);
			}
		}
		return ladiesLower;

	}
	
	@Override
	@Transactional
	public List<Products> getAllProduct() {

		return productDAO.getAllProduct();

	}
	
	@Override
	@Transactional
	public List<Products> getTrending() {

		return productDAO.getTrending();

	}

	@Override
	@Transactional
	public void addProduct(Products product) {
		productDAO.addProduct(product);
		
	}

}
