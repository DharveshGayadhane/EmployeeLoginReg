package com.example.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ul_id = request.getParameter("username");
		String upwd = request.getParameter("password");
		System.out.println(ul_id + upwd );
		
		HttpSession session = request.getSession();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3521/employees", "root", "9823");
			PreparedStatement pst = con.prepareStatement("Select Name from users where LoginID = ? and Password = ?");
			pst.setString(1, ul_id);
			pst.setString(2,upwd);
					
			ResultSet rs = pst.executeQuery();
			
			
			if(rs.next()) {
				session.setAttribute("name", rs.getString("Name"));
				response.sendRedirect("Retrieve");
			    }
			else {
				request.setAttribute("loginFailed", true);
	            request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		
		}
		catch(Exception e){
			e.printStackTrace();
			
		}

	}
	

}
