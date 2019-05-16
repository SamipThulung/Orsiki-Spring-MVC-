package realProject.service;

import realProject.entity.Order;

public interface OrderService {

	public void addOder(Order user);
	public Order getOrder(int id);
	public int checkLogin(String i, String j);
}
