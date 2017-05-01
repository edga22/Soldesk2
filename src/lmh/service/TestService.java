package lmh.service;

import lmh.mgr.TestMgr;
import domain.Test;

public class TestService {
	TestMgr testMgr;
	
	public TestService(){
		testMgr = new TestMgr();
	}
	
	public Test[] getOne(){
		return testMgr.getTest();	
	}

}
