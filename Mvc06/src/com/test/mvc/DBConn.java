/*=================
 	DBConn.java
=================*/

// 예외 처리 → throws 구성

package com.test.mvc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn
{
	// 변수 선언(연결 객체)
	private static Connection dbConn;
	
	// 메소드 정의 → 연결
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		if (dbConn == null)
		{
			String url = "jdbc:oracle:thin:@211.238.142.162:1521:xe";
			
			String user = "scott";
			
			String pwd = "tiger";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			dbConn = DriverManager.getConnection(url, user, pwd);
		}
		
		return dbConn;
	}
	
	// 메소드 정의 → 오버로딩 → 연결
	public static Connection getConnection(String url, String user, String pwd) throws ClassNotFoundException, SQLException
	{
		if (dbConn == null)
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbConn = DriverManager.getConnection(url, user, pwd);
		}
		
		return dbConn;
	}
	
	// 메소드 정의 → 연결 종료
	public static void close() throws SQLException
	{
		if (dbConn != null)
		{
			if (!dbConn.isClosed())
			{
				dbConn.close();
			}
		}
		
		// check~!!!
		dbConn = null;
	}
}
