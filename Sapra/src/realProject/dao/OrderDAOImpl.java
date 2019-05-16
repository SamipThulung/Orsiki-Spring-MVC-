package realProject.dao;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import realProject.entity.Order;
import realProject.entity.User;



@Repository
public class OrderDAOImpl implements OrdersDAO {

	@Autowired
	SessionFactory sessionFactory;

	protected Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addOrder(Order order) {
		Session currentSession = sessionFactory.getCurrentSession();
		//save into database
		currentSession.saveOrUpdate(order);
		
	}

	@Override
	public Order getOrder(int id) {
		// TODO Auto-generated method stub
		return (Order) currentSession().get(Order.class,  id);
	}

	@Override
	public int checkOrder(String userName, String userPassword) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

	
}
