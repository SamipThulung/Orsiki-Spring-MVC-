package realProject.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import realProject.entity.Repair;

@Repository
public class RepairsDAOImpl implements RepairDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void addRepair(Repair repair) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(repair);

	}

}
