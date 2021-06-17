package kr.co.sist.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisHandler {
	
	private static MyBatisHandler mbh;
	private static SqlSessionFactory ssf;
	
	private MyBatisHandler() {
	
	}
	
	public static MyBatisHandler getInstance() {
		if (mbh == null) {
			mbh = new MyBatisHandler();
		}
		
		return mbh;
	}
	
	private SqlSessionFactory getSessionFactory() {
		if (ssf == null) {
			try {
				Reader reader = Resources.getResourceAsReader("kr/co/sist/dao/mybatis-config.xml");
				ssf = new SqlSessionFactoryBuilder().build(reader);
				
				if (reader != null) { reader.close();}
			} catch (IOException e) {
				e.printStackTrace();
			}//end catch
			
		}//end if
		
		return ssf;
	}
	
	public SqlSession getHandler() {
		SqlSession ss = getSessionFactory().openSession();
		
		return ss;
	}
}
