package realProject.service;

import java.util.List;

import realProject.entity.Customer;
import realProject.entity.Jackets;
import realProject.entity.Jama;





public interface CustomerService {
	
	public List<Customer> getCustomers();
	
	public List<Jama> getSkirts();
	public List<Jackets> getJackets();

	public void saveCustomer(Customer theCustomer);

	Customer getCustomer(int theId);

	void deleteCustomer(int theId);

	public List<Jama> searchSkirts(String name);

	List<Customer> searchPants(String name, String gender);

}
