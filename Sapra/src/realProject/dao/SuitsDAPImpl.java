package realProject.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import realProject.entity.Suits;
import realProject.entity.SuitsOrder;

@Repository
public class SuitsDAPImpl implements SuitsDAO {


	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Suits> getAllProduct() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create the query
		Query <Suits> theQuery = currentSession.createQuery("from Suits" , Suits.class);
		
		//return the result
		List<Suits> upper = theQuery.getResultList();
		
		return upper;
	}
	
	@Override
	public void addSuit(SuitsOrder suit){
		Session currentSession = sessionFactory.getCurrentSession();
		//save into database
		currentSession.saveOrUpdate(suit);
	}

	@Override
	public void addSuit(Suits suit) {
		// TODO Auto-generated method stub
		
	}
	
	
}
