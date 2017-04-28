package lmh.mgr;

import lmh.dao.TestDao;
import lmh.dao.TestDaoImpl;

public class TestMgr {
	TestDao testDao;
	
	public TestMgr(){
		testDao = new TestDaoImpl();
	}
	
	public void getTest(){
		testDao.getTest();
	}

}
