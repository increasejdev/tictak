package dao.book;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
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
import database.DataSource;

public class DAO {
	private static Connection conn = DataSource.getInstance().conn;
	
//  Обращаемся к таблице "Users" за данными, заносим полученный результат в Map 	
	public  Map<String, String> selectAll() {
		String sql = "SELECT email, password FROM " + DataSource.DATABASE_NAME + ".Users";
		Map<String, String> users = new HashMap<>();
		
		try (
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			while (rs.next()) {
				users.put(rs.getString("email"), rs.getString("password"));				
			}
						
		} catch (SQLException ex) {
			System.err.println(ex.getMessage());
		}
		
		return users;

}
//  Установка заглавных букв в данных из таблиц 
	private  String firstLetter(String str) {		
		String result = str.substring(0, 1).toUpperCase() + str.substring(1);		
		return result;
	}
	// Формирование пунктов меню с иконками
	public Map<String, String> showTables() {	
		Map<String, String> objS = new HashMap<>();
		
		String icons[] = {"fa fa-database",
				"fa fa-drivers-license-o",
				"fa fa-edit","fa fa-film",
				"fa fa-send-o","fa fa-sliders",
				"fa fa-address-book-o", 
				"fa fa-archive"};
		int i = 0;
		
		try {	    			    
				DatabaseMetaData md = conn.getMetaData();
				ResultSet rs = md.getTables(DataSource.DATABASE_NAME, null, "%", null);				
				while(rs.next()) {	
					objS.put(firstLetter(rs.getString(3)), icons[i]);					
					i++;
				}
		} catch(Exception ex) {ex.getMessage();}		
		
		
		return objS;
	}
	
	// Получение значений из таблиц для последующего вывода в админке
		public ArrayList<Accounts> UsersQuery() {
			 String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + "." + "users";	
			 ArrayList<Accounts> users = new ArrayList<>();		
			try {
				Statement statement = conn.createStatement();
					ResultSet rs = statement.executeQuery(sql); 			
				while (rs.next()) 						
					users.add(new Accounts(Integer.parseInt(rs.getString(1)),rs.getString(2), rs.getString(3)));	
				
							
			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}	
							
			return users;
			}
		
		
		public ArrayList<Rfc> RfcQuery() {
			 String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + "." + "Rfc";	
			 ArrayList<Rfc> rfc = new ArrayList<>();		
			try {
				Statement statement = conn.createStatement();
					ResultSet rs = statement.executeQuery(sql); 			
				while (rs.next()) 						
					rfc.add(new Rfc(Integer.parseInt(rs.getString(1)),rs.getString(2), Integer.parseInt(rs.getString(3))));	
				
							
			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}		
			
					
			return rfc;
			}
		
		public ArrayList<Codifier> CodifierQuery() {		
			 String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + "." + "Codifier";	
			 ArrayList<Codifier> codifier = new ArrayList<>();		
			try {
				Statement statement = conn.createStatement();
					ResultSet rs = statement.executeQuery(sql); 			
				while (rs.next()) 						
					codifier.add(new Codifier(rs.getInt(1),rs.getString(2), rs.getInt(3)));	
				
							
			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}		
			
					
			return codifier;
			}
		
		public ArrayList<Status> StatusQuery() {
			 String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + "." + "Status";	
			 ArrayList<Status> status = new ArrayList<>();		
			try {
				Statement statement = conn.createStatement();
					ResultSet rs = statement.executeQuery(sql); 			
				while (rs.next()) 						
					status.add(new Status(rs.getInt(1),rs.getString(2), rs.getInt(3)));	
				
							
			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}		
			
					
			return status;
			}
		
		public ArrayList<Priority> PriorityQuery() {
			 String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + "." + "Priority";	
			 ArrayList<Priority> priority = new ArrayList<>();		
			try {
				Statement statement = conn.createStatement();
					ResultSet rs = statement.executeQuery(sql); 			
				while (rs.next()) 						
					priority.add(new Priority(rs.getInt(1),rs.getString(2), rs.getInt(3)));	
				
							
			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}		
			
					
			return priority;
			}

		public ArrayList<Solution> SolutionQuery() {
			 String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + "." + "Solution";	
			 ArrayList<Solution> solution = new ArrayList<>();		
			try {
				Statement statement = conn.createStatement();
					ResultSet rs = statement.executeQuery(sql); 			
				while (rs.next()) 						
					solution.add(new Solution(rs.getInt(1),rs.getString(2), rs.getInt(3)));	
				
							
			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}		
			
					
			return solution;
			}
		
		public ArrayList<Issue> IssueQuery() {
			 String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + "." + "Issue";	
			 ResultSet rs = null;
			 ArrayList<Issue> issue = new ArrayList<>();		
			try {
				Statement statement = conn.createStatement();
					rs = statement.executeQuery(sql); 			
				while (rs.next()) 						
					issue.add(new Issue(rs.getInt(1),
							rs.getString(2), 
							rs.getString(3), 
							rs.getString(4), 
							rs.getString(5), 
							rs.getString(6), 
							rs.getString(7), 
							rs.getDate(8), 
							rs.getString(9)));	
				
							
			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}		
				
			return issue;
			}
		
		public ArrayList<Issue> IssueMainPage() {
			 String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + "." + "Issue ORDER BY data";	
			 ResultSet rs = null;
			 ArrayList<Issue> issue = new ArrayList<>();		
			try {
				Statement statement = conn.createStatement();
					rs = statement.executeQuery(sql); 			
				while (rs.next()) 						
					issue.add(new Issue(rs.getInt(1),
							rs.getString(2), 
							rs.getString(3), 
							rs.getString(4), 
							rs.getString(5), 
							rs.getString(6), 
							rs.getString(7), 
							rs.getDate(8), 
							rs.getString(9)));	
				
							
			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}		
				
			return issue;
			}
		
		public ArrayList<Book> BooksQuery() {
			 String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + "." + "Book";	
			 ArrayList<Book> book = new ArrayList<>();		
			try {
				Statement statement = conn.createStatement();
					ResultSet rs = statement.executeQuery(sql); 			
				while (rs.next()) 						
					book.add(new Book(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getInt(4)));	
				
							
			} catch (SQLException ex) {
				System.err.println(ex.getMessage());
			}		
			
					
			return book;
			}
	
	
}
