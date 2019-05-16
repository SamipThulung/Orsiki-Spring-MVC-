package realProject.dao;


import realProject.entity.User;

public interface UserDAO {
	
	public void addReader(User user);
	public User getReader(int id);
	public int checkLogin(String userName, String userPassword);
	int getUserName(String userName);
	int updateUser(int id, String lolly);
}
	
