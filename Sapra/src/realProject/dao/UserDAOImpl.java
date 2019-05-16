package realProject.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import realProject.entity.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	protected Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	
	@Override
	public void addReader(User theUser) {
		//get the current hibernate session'
		Session currentSession = sessionFactory.getCurrentSession();
		//save into database
		currentSession.saveOrUpdate(theUser);
	}

	@Override
	public User getReader(int id) {

		return (User) currentSession().get(User.class,  id);
	}


	
	@Override
	public int checkLogin(String userName, String userPassword) {
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete object with primary key
		Query<User> theQuery= currentSession.createQuery("from User where userName= :name and identifier= :password", User.class);
				theQuery.setParameter("name",userName);
				theQuery.setParameter("password", userPassword);
		int userFound = 0;
		
		List<User> list = theQuery.list();
		if ((list != null) && (list.size() > 0)) {
			for (User user : list)
			{
				userFound= user.getUserId();
				System.out.println("This is it" + user.getFirstName());
			}
		}
		return userFound;    
		
		
		
		
	}
	
	@Override
	public int getUserName(String userName){
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete object with primary key
		Query<User> theQuery= currentSession.createQuery("from User where userName= :name", User.class);
				theQuery.setParameter("name",userName);
				
		int userFound = 0;
		List<User> list = theQuery.list();
		if ((list != null) && (list.size() > 0)) {
			for (User user : list)
			{
				userFound= user.getUserId();
				System.out.println("This is it" + user.getFirstName());
			}
		}
		return userFound;    
		
	}
	
	@Override
	public int updateUser(int id,String lolly){
		  Session session = this.sessionFactory.getCurrentSession();
	         Query query = session.createQuery("update User set lolly =:lolly where userId = :id ");
	         query.setParameter("id", id);  
	         query.setParameter("lolly", lolly);  
	         int result = query.executeUpdate();
	         return result;
		
	}
	
	

}
