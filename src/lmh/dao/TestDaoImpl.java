package lmh.dao;

import config.Factory;
import lmh.mapper.TestMapper;
import domain.Test;

public class TestDaoImpl implements TestDao{
	TestMapper testMapper;
	
	public TestDaoImpl(){
		testMapper = Factory.getMapper(TestMapper.class);
	}
	
	public Test[] getTest(){
		return testMapper.getTest();
	}

}
