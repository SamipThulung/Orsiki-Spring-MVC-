package realProject.service;

import java.util.List;

import realProject.entity.Products;

public interface ProductService {

	public List<Products> getLadiesUpper();
	public List<Products> getGentsUpper();
	public List<Products> getGentsLower();
	public List<Products> getLadiesLower();
	List<Products> getAllProduct();
	List<Products> getLadiesShoes();
	List<Products> getGentsShoes();
	List<Products> getTrending();
	List<Products> getMusicalAcess();
	List<Products> getMusicalI();
	public void addProduct(Products product);
}
