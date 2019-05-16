package realProject.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import realProject.entity.Lolly;

@Repository
public class LollyDAOImpl implements LollyDAO {

	@Autowired
	SessionFactory sessionFactory;


	@Override
	public void addLolly(Lolly user) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(user);
		
	}

}
