package lmh.service;

import lmh.mgr.TestMgr;

public class TestService {
	TestMgr testMgr;
	
	public TestService(){
		testMgr = new TestMgr();
	}
	
	public void getOne(){
		testMgr.getTest();
		
	}

}
