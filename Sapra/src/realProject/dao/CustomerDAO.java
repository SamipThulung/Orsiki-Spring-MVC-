package realProject.dao;

import java.util.List;

import realProject.entity.Customer;
import realProject.entity.Jackets;
import realProject.entity.Jama;



public interface CustomerDAO {
	
	public List <Customer> getCustomers();
	
	public List<Jama> getSkirts();
	
	public List<Jackets> getJackets();
	

	
	public void saveCustomer(Customer theCustomer);


	public void deleteCustomer(int theId);


	Customer getCustomer(int theId);


	List<Jama> searchSkirts(String theId);


	List<Customer> searchPants(String theId,String gender);


	

}
