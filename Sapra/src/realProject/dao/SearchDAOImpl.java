package realProject.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import realProject.entity.Customer;
import realProject.entity.Jackets;
import realProject.entity.Jama;
import realProject.entity.MainObject;
import realProject.entity.Products;

@Repository
public class SearchDAOImpl implements SearchDAO {


	
	@Autowired
	private SessionFactory sessionFactory;
	
	protected Session getCurrentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public ArrayList<MainObject> searchItem(String keyword) {
  
		
		ArrayList<MainObject> main = new ArrayList<MainObject>();
		
		if(!searchPants(keyword).isEmpty()){
			for(Customer c: searchPants(keyword)){
			main.add(c);
			}
			return main;
		}else if(!searchSkirts(keyword).isEmpty()){
			for(Jama c: searchSkirts(keyword)){

				main.add(c);
				}
				return main;
	        }
		else if(!searchProduct(keyword).isEmpty()){
			for(Products c: searchProduct(keyword)){

				main.add(c);
				}
				return main;
	        
		}else {
			for(Jackets c: searchJackets(keyword)){
				main.add(c);
				}
				return main;
		}
}
   
		

		
		
	
	
	public ArrayList<Customer> searchPants(String keyword){
		Query<Customer> theQuery= getCurrentSession().createQuery("from Customer where name like '%' || :keyword || '%' OR name like '%' || :keyword OR name Like :keyword || '%' ", Customer.class);
		theQuery.setParameter("keyword", keyword);
		
		ArrayList<Customer> finalResult = new ArrayList<Customer>();

		List<Customer> list = theQuery.list();
		if(list != null){
			for(Customer l : list){
				finalResult.add(l);
			}
			return finalResult;
		}else{
		return null;
		}
	}
	
	public ArrayList<Jama> searchSkirts(String keyword){
		Query<Jama> theQuery= getCurrentSession().createQuery("from Jama where name like '%' || :keyword || '%' OR name like '%' || :keyword OR name Like :keyword || '%' ", Jama.class);
		theQuery.setParameter("keyword", keyword);
		
		ArrayList<Jama> finalResult = new ArrayList<Jama>();

		List<Jama> list = theQuery.list();
		if(list != null){
			for(Jama l : list){
				finalResult.add(l);
			}
			return finalResult;
		}else{
		return null;
		}
	}
	
	public ArrayList<Jackets> searchJackets(String keyword){
		Query<Jackets> theQuery= getCurrentSession().createQuery("from Jackets where name like '%' || :keyword || '%' OR name like '%' || :keyword OR name Like :keyword || '%' ", Jackets.class);
		theQuery.setParameter("keyword", keyword);
		
		ArrayList<Jackets> finalResult = new ArrayList<Jackets>();

		List<Jackets> list = theQuery.list();
		if(list != null){
			for(Jackets l : list){
				finalResult.add(l);
			}
			return finalResult;
		}else{
		return null;
		}
	}
	
	public ArrayList<Products> searchProduct(String keyword){
		Query<Products> theQuery= getCurrentSession().createQuery("from Products where name like '%' || :keyword || '%' OR name like '%' || :keyword OR name Like :keyword || '%' ", Products.class);
		theQuery.setParameter("keyword", keyword);
		
		ArrayList<Products> finalResult = new ArrayList<Products>();

		List<Products> list = theQuery.list();
		if(list != null){
			for(Products l : list){
				finalResult.add(l);
			}
			return finalResult;
		}else{
		return null;
		}
	}

}
