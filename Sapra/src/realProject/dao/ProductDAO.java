package realProject.dao;

import java.util.List;

import realProject.entity.Products;



public interface ProductDAO {

	public List<Products> getUpper();
	public List<Products> getLower();
	List<Products> getAllProduct();
	List<Products> getShoes();
	List<Products> getTrending();
	List<Products> getMusical();
	List<Products> getMusicalI();
	void addProduct(Products pr);
}
