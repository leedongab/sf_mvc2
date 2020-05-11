package com.exam.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class MakeConnection {

	private static MakeConnection oc = null;
	private static Connection conn;

	final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	final String USER = "scott";
	final String PASSWORD = "tiger";

	private MakeConnection() {}

	public static MakeConnection getInstance() {
		if(oc==null) oc = new MakeConnection();
		return oc;
	}

	public Connection getConnection() {
		if(conn==null) {
			try {
				Class.forName(DRIVER);

				conn = DriverManager.getConnection(URL, USER, PASSWORD);
				System.out.println("성공");
				System.out.println("conn : " + conn);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}// if end
		return conn;
	}

}
