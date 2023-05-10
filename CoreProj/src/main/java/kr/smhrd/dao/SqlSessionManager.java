package kr.smhrd.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

	// Connection Pool 생성하고 관리 --> 우리 프로젝트가(서버가) 실행되자마자
	// 초기화 블럭 --> 특정 시점에 자동으로 코드 실행
	// (생성자가 사용 됐을 때 자동으로 실행)
	// new SqlSessionManager();

	// static : 우리 프로젝트가 실행되자마자 메모리에 할당
	// static 초기화 블럭 --> static 변수들이 할당 되자마자(프로젝트가 시작되자마자)

	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			// ctrl + shift + o
			String resource = "kr/smhrd/dao/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);

			// Connection Pool
			sqlSessionFactory = 
					new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace(); // 콘솔창에 빨간글씨로 에러 출력
		}
	}

	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

}
