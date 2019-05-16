package realProject.dao;



import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import realProject.entity.Customer;
import realProject.entity.Jackets;
import realProject.entity.Jama;


@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	//inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Customer> getCustomers() {
		
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create the query
		Query <Customer> theQuery = currentSession.createQuery("from Customer" , Customer.class);
		
		//return the result
		List<Customer> customers = theQuery.getResultList();
		
		return customers;
	}
	
	@Override
    @Transactional
	public List<Jama> getSkirts() {
		//get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
				//create the query
				Query <Jama> theQuery = currentSession.createQuery("from Jama" , Jama.class);
				
				//return the result
				List<Jama> customers = theQuery.getResultList();
				
				return customers;
	}
	
	@Override
    @Transactional
	public List<Jackets> getJackets() {
		//get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
				//create the query
				Query <Jackets> theQuery = currentSession.createQuery("from Jackets" , Jackets.class);
				
				//return the result
				List<Jackets> customers = theQuery.getResultList();
				
				return customers;
	}

	@Override
	public void saveCustomer(Customer theCustomer) {
		//get the current hibernate session'
		Session currentSession = sessionFactory.getCurrentSession();
		//save into database
		currentSession.saveOrUpdate(theCustomer);
	}
	
	@Override
	public Customer getCustomer(int theId) {
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//read data from database using primary key
		Customer theCustomer = currentSession.get(Customer.class, theId);
		return theCustomer;
	}

	@Override
	public void deleteCustomer(int theId) {
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete object with primary key
		Query<?> theQuery= currentSession.createQuery("delete from Customer where id = :customerId");
		theQuery.setParameter("customerId", theId);
		theQuery.executeUpdate();
	}
	
	@Override
	public List<Jama> searchSkirts( String theId) {
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete object with primary key
		Query<Jama> theQuery= currentSession.createQuery("from Jama where Name = :customerId", Jama.class);
		theQuery.setParameter("customerId", theId);
		
		
		List<Jama> customers = theQuery.list();
		return customers;
	}
	
	@Override
	public List<Customer> searchPants( String theId,String gender) {
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete object with primary key
		Query<Customer> theQuery= currentSession.createQuery("from Customer where Name= :Name and gender= :FemaleMale", Customer.class);
				theQuery.setParameter("Name",theId);
				theQuery.setParameter("FemaleMale", gender);
		
		
		
		List<Customer> customers = theQuery.list();
		return customers;
	}

	

	

	


}

