package realProject.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import realProject.entity.Products;


@Repository
public class ProductDAOImpl implements ProductDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addProduct(Products pr){
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(pr);
	}
	
	@Override
	public List<Products> getAllProduct() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create the query
		Query <Products> theQuery = currentSession.createQuery("from Products" , Products.class);
		
		//return the result
		List<Products> upper = theQuery.getResultList();
		
		return upper;
	}
	
	@Override
	public List<Products> getUpper() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create the query
		Query <Products> theQuery = currentSession.createQuery("from Products  where productType = :upper" , Products.class);
		theQuery.setParameter("upper", "upper");
		//return the result
		List<Products> upper = theQuery.getResultList();
		
		return upper;
	}
	
	@Override
	public List<Products> getShoes() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create the query
		Query <Products> theQuery = currentSession.createQuery("from Products  where productType = :upper" , Products.class);
		theQuery.setParameter("upper", "shoes");
		//return the result
		List<Products> upper = theQuery.getResultList();
		
		return upper;
	}
	

	@Override
	public List<Products> getLower() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create the query
		Query <Products> theQuery = currentSession.createQuery("from Products where productType = :lower" , Products.class);
		theQuery.setParameter("lower", "lower");
		//return the result
		List<Products> upper = theQuery.getResultList();
		
		return upper;
	}
	
	@Override
	public List<Products> getTrending() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create the query
		Query <Products> theQuery = currentSession.createQuery("from Products where productType = :lower" , Products.class);
		theQuery.setParameter("lower", "trending");
		//return the result
		List<Products> upper = theQuery.getResultList();
		
		return upper;
	}
	
	@Override
	public List<Products> getMusical() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create the query
		Query <Products> theQuery = currentSession.createQuery("from Products where productType = :lower" , Products.class);
		theQuery.setParameter("lower", "ma");
		//return the result
		List<Products> upper = theQuery.getResultList();
		
		return upper;
	}

	@Override
	public List<Products> getMusicalI() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create the query
		Query <Products> theQuery = currentSession.createQuery("from Products where productType = :lower" , Products.class);
		theQuery.setParameter("lower", "mi");
		//return the result
		List<Products> upper = theQuery.getResultList();
		
		return upper;
	}

}
