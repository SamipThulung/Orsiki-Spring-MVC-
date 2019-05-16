package realProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import realProject.dao.RepairDAO;
import realProject.entity.Repair;

@Service
public class RepairsServiceImpl implements RepairsService {

	@Autowired
	private RepairDAO repairsDAO;
	@Override
	@Transactional
	public void addRepairs(Repair repair) {
		repairsDAO.addRepair(repair);

	}

}
