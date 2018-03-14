package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Accounts;
import dao.book.BookDAO;
import dao.book.DAO;
import database.DataSource;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DAO dao;
	
	public void init() {
		dao = new DAO();
	}
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String name = request.getParameter("name");		
		
		switch(name==null?"":name ) {
		case "login":
			// ������� �� �������� ������ �� �����������
						request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
						break;
		case "register":
			// ������� �� �������� ����������� �� ������ �� ������
			request.setAttribute("email", "");
			request.setAttribute("password", "");
			request.setAttribute("vmessage", "");			
			request.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
			break;			
			
		case "Rfc":			
			request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);
			break;
		case "Codifier":			
			request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);
			break;
		case "Status":			
			request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);
			break;
		case "Priority":			
			request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);
			break;
		case "Solution":			
			request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);
			break;
		case "Issue":			
			request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);
			break;
		case "Book":			
			request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);
			break;
		case "Users":			
			request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);
			break;
		case "adm":
			request.setAttribute("email", "");
			request.setAttribute("password", "");
			request.setAttribute("vmessage", "");			
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
			break;
		case "logout":
			HttpSession session = request.getSession();
			if(session != null) 
				session.invalidate();	
			request.getSession().setAttribute("welcome", dao.IssueMainPage());
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			break;
			
		default:	
			request.getSession().setAttribute("welcome", dao.IssueMainPage());  // �������� �� �������
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
			
		
		}
			
			
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HashMap<String, String> rt = null;
		String name = request.getParameter("name");
		Accounts account = null;
		String email = "";
		String password = "";
		
		switch(name) {
		case "new":
			 email = request.getParameter("email");
			 password = request.getParameter("password");
			account = new Accounts(email, password);
			
			// ����������� �� �����
			if(account.validate()) {
				// �������� � ������ ������� �������� ������ ���������
				PrintWriter out = response.getWriter();
				out.println("added successfully");
			}else {
				request.setAttribute("email", "");
				request.setAttribute("password", "");
				
				// ��� �� ������ ����� ������� ��������� �� ������
				request.setAttribute("vmessage", account.getMessage());
				request.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(request, response);
			}
			break;
			
		case "enter":
			// ���� �� ����� ������
			 email = request.getParameter("email");
			 password = request.getParameter("password");
			
			account = new Accounts(email, password);
			// ���� ������ � ����� ������� � ���� �� ��������� � �������
			
			if(account.authenticate()) { //Olya@yandex.ru  Pa$$w0rd		
				
				request.getSession().setAttribute("email", email);
				request.getSession().setAttribute("table", dao.showTables());
				
				request.getSession().setAttribute("Accounts", dao.UsersQuery());
				request.getSession().setAttribute("Book", dao.BooksQuery());
				request.getSession().setAttribute("Issue", dao.IssueQuery());
				request.getSession().setAttribute("Solution", dao.SolutionQuery());
				request.getSession().setAttribute("Priority", dao.PriorityQuery());
				request.getSession().setAttribute("Status", dao.StatusQuery());
				request.getSession().setAttribute("Codifier", dao.CodifierQuery());
				request.getSession().setAttribute("Rfc", dao.RfcQuery());
				
				request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);
				
			} else {
				request.setAttribute("email", "");
				request.setAttribute("password", "");
				request.setAttribute("vmessage", account.getMessage()); // ���� � ���� ��� ������������ ������� �� ���� ������
				request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
			}
			break;
		
			default:
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
		}
		
		
	}
	
 
	

	
	
	}

