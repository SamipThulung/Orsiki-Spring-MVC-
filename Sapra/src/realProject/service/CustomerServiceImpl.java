package realProject.service;



import realProject.dao.CustomerDAO;
import realProject.entity.Customer;
import realProject.entity.Jackets;
import realProject.entity.Jama;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class CustomerServiceImpl implements CustomerService {
		//injecting customer DAO
	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		// TODO Auto-generated method stub
		return customerDAO.getCustomers();
	}
	
	@Override
	public List<Jama> getSkirts() {
		// TODO Auto-generated method stub
	return customerDAO.getSkirts();
	}
	
	@Override
	public List<Jackets> getJackets() {
		// TODO Auto-generated method stub
	return customerDAO.getJackets();
	}

	
	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		customerDAO.saveCustomer(theCustomer);
	}
	
	@Override
	@Transactional
	public Customer getCustomer(int theId) {
		
		return customerDAO.getCustomer(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		
	customerDAO.deleteCustomer(theId);
		
	}
	
	@Override
	@Transactional
	public List<Jama> searchSkirts(String name) {
		
	return customerDAO.searchSkirts(name);
		
	}
	
	@Override
	@Transactional
	public List<Customer> searchPants( String name, String gender){
		
		
		return customerDAO.searchPants(name, gender);
		
	}

	


}