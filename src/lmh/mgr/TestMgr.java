package lmh.mgr;

import lmh.dao.TestDao;
import lmh.dao.TestDaoImpl;
import domain.Test;

public class TestMgr {
	TestDao testDao;
	
	public TestMgr(){
		testDao = new TestDaoImpl();
	}
	
	public Test[] getTest(){
		return testDao.getTest();
	}

}
