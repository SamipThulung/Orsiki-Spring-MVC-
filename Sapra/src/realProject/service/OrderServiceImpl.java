package realProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import realProject.dao.OrdersDAO;
import realProject.entity.Order;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrdersDAO orderDAO;
	
	@Override
	@Transactional
	public void addOder(Order user) {
		// TODO Auto-generated method stub
		orderDAO.addOrder(user);

	}

	@Override
	@Transactional
	public Order getOrder(int id) {
		// TODO Auto-generated method stub
		return orderDAO.getOrder(id);
	}

	@Override
	@Transactional
	public int checkLogin(String i, String j) {
		// TODO Auto-generated method stub
		return 0;
	}

}
