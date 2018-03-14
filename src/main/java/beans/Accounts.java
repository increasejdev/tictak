package beans;

import java.util.Map;

import dao.book.DAO;
import database.DataSource;


public class Accounts {
	
	private int id;
	private String email;
	private String password;
	
	private String message = "";
	
	
	
	public String getMessage() {
		return message;
	}

	public Accounts() {
		
	}
	
	public Accounts(String email, String password) {
			this.email = email;
			this.password = password;
	}
	
	public Accounts(int id, String email, String password) {
		this.email = email;
		this.password = password;
		this.id = id;
}
	
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean validate() {
		if(!email.matches("\\w+@\\w+\\.\\w+")) {
			message = "Invalid email address.";
			return false;
		}
		
		if(password.length() < 8) {
			message = "Password must be at least 8 characters.";
			return false;
		}
		
		else if(password.matches("\\w*\\s+\\w*")) {
			message = "Password can't contain space.";
			return false;
		}		
		
		return true;
	}
	
	public boolean authenticate() {		
		 Map<String, String> Auth = new DAO().selectAll();		 
		boolean result = false;	
		for(Map.Entry<String, String> entry : Auth.entrySet()) {
			if (email.equals(entry.getKey()) && password.equals(entry.getValue())) {
				result = true;
				break;
			} else {
				message = "Wrong Password or Login.";
				result = false;
			}
		}
		return result;		
	}

	@Override
	public String toString() {
		return "Accounts [id=" + id + ", email=" + email + ", password=" + password + "]";
	}
	
//	public static void main (String[] args) {
//		Accounts t = new Accounts("oakozlova1994@yandex.ru","19942018");	
//		if(t.authenticate())
//			System.out.println(t);
//	}


}
