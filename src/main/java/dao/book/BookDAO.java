package dao.book;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import beans.Book;
import database.DataSource;

public class BookDAO {
	private static Connection conn = null;
	
	public BookDAO() {
		 conn = DataSource.getInstance().conn;
	}
	
	public boolean insertBook(Book book) throws SQLException {
		String sql = "INSERT INTO " + DataSource.DATABASE_NAME + ".book (title, author, price) VALUES (?, ?, ?)";		
		
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, book.getTitle());
		statement.setString(2, book.getAuthor());
		statement.setInt(3, book.getPrice());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();	
		
				
		return rowInserted;
	}
	
	public List<Book> listAllBooks() throws SQLException {
		List<Book> listBook = new ArrayList<>();
		
		String sql = "SELECT * FROM " + DataSource.DATABASE_NAME + ".book";	
				
		Statement statement = conn.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		
		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			String title = resultSet.getString("title");
			String author = resultSet.getString("author");
			int price = resultSet.getInt("price");
			
			Book book = new Book(id, title, author, price);
			listBook.add(book);
		}
		
				
		return listBook;
	}
	
	public boolean deleteBook(Book book) throws SQLException {
		String sql = "DELETE FROM " + DataSource.DATABASE_NAME +".book where id = ?";
		
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setInt(1, book.getId());
		
		boolean rowDeleted = statement.executeUpdate() > 0;
		
				
		return rowDeleted;		
	}
	
	public boolean updateBook(Book book) throws SQLException {
		String sql = "UPDATE " + DataSource.DATABASE_NAME +".book SET title = ?, author = ?, price = ?";
		sql += " WHERE id = ?";
		
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, book.getTitle());
		statement.setString(2, book.getAuthor());
		statement.setInt(3, book.getPrice());
		statement.setInt(4, book.getId());
		
		boolean rowUpdated = statement.executeUpdate() > 0;
				
				
		return rowUpdated;		
	}
	
	public Book getBook(int id) throws SQLException {
		Book book = null;
		String sql = "SELECT * FROM " + DataSource.DATABASE_NAME +".book WHERE id = ?";
		
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setInt(1, id);
		
		ResultSet resultSet = statement.executeQuery();
		
		if (resultSet.next()) {
			String title = resultSet.getString("title");
			String author = resultSet.getString("author");
			int price = resultSet.getInt("price");
			
			book = new Book(id, title, author, price);
		}
		
				
		return book;
	}



//public static void main (String[] args) {
//	try {
//		List<Book> t = new BookDAO().listAllBooks();
//		for(Book n : t) {
//			System.out.println(n);
//		}
//	} catch (SQLException e) {		
//		e.printStackTrace();
//	}
//}

}