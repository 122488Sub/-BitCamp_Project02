package com.bitbang.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBService {
	private static SqlSessionFactory factory;
	
	static {
		// Resources : ibatis.io.Resources
		try {

			factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("com/bitbang/mybatis/config.xml"));
		
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getFactory() { 
		return factory; // factory객체를 가져오는 메소드 만든 것
	}
	
}
