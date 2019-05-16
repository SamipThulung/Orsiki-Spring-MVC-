package realProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import realProject.dao.UserDAO;
import realProject.entity.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public void addReader(User user) {
		userDAO.addReader(user);

	}

	@Override
	@Transactional
	public User getReader(int id) {
		
		return userDAO.getReader(id);
	}

	@Override
	@Transactional
	public int checkLogin(String userName, String userPassword) {
		// TODO Auto-generated method stub
		return userDAO.checkLogin(userName, userPassword);
	}
	
	@Override 
	@Transactional
	public int getUserName(String userName){
		return userDAO.getUserName(userName);
	}
	
	@Override 
	@Transactional
	public int updateLolly(int id, String lolly){
		return userDAO.updateUser(id, lolly);
	}

}
