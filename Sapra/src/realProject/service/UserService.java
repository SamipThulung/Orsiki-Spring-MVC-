package realProject.service;


import realProject.entity.User;

public interface UserService {
	public void addReader(User user);
	public User getReader(int id);
	public int checkLogin(String i, String j);
	int getUserName(String userName);
	int updateLolly(int id, String lolly);
}
