package database;


import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import beans.Accounts;
import beans.Book;
import beans.Codifier;
import beans.Issue;
import beans.Priority;
import beans.Rfc;
import beans.Solution;
import beans.Status;


public class DataSource {	
	
	private static DataSource instance; 
	private Statement statement;     	
	public Connection conn;	
	public static final String DATABASE_NAME = "heroku_b7a8cd9e24ff77b";
	
	// Параметры подключения к базе данных mysql на облачном сервисе от heroku 
	private DataSource() {
		String DB_URL = "jdbc:mysql://eu-cdbr-west-02.cleardb.net";
		String DB_LOGIN = "b3f241c16c9fcf";
		String DB_PASSWORD = "8311fc8b";		
		String driver = "com.mysql.cj.jdbc.Driver";
	// устанавливаем связь с базой
		try {
			Class.forName(driver).newInstance();
			this.conn = (Connection)DriverManager.getConnection(DB_URL, DB_LOGIN, DB_PASSWORD);
			System.out.println("connection established");
		} catch (Exception e) {			
			e.printStackTrace();
		}
	}

	public static synchronized DataSource getInstance() {
		if (instance == null) {
			instance = new DataSource();
		}
		
		return instance;
	}
	
    

	}

