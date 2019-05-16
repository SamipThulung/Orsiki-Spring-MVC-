package realProject.dao;

import realProject.entity.Order;

public interface OrdersDAO {

	public void addOrder(Order user);
	public Order getOrder(int id);
	public int checkOrder(String userName, String userPassword);
}
