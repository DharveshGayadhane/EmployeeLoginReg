package com.example.login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class Retrieve
 */
@WebServlet("/Retrieve")
public class Retrieve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
List<User> users = new ArrayList<>();
        
        try {
            // Database connection details
            String url = "jdbc:mysql://localhost:3521/employees";
            String user = "root";
            String password = "9823";

            Connection connection = DriverManager.getConnection(url, user, password);
            
            Statement statement = connection.createStatement();
            String query = "SELECT employeeId, name, city FROM users";
            ResultSet resultSet = statement.executeQuery(query);
            System.out.println("Connection successful!");
            while (resultSet.next()) {
                User userObj = new User();
                userObj.setEmployeeId(resultSet.getString("employeeId"));
                userObj.setName(resultSet.getString("name"));
                userObj.setCity(resultSet.getString("city"));
                users.add(userObj);
            }

            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        request.setAttribute("users", users);
        request.getRequestDispatcher("Welcome.jsp").forward(request, response);

	}

	public class User {
	    private String employeeId;
	    private String name;
	    private String city;

	    // Getters and Setters
	    public String getEmployeeId() { return employeeId; }
	    public void setEmployeeId(String employeeId) { this.employeeId = employeeId; }
	    public String getName() { return name; }
	    public void setName(String name) { this.name = name; }
	    public String getCity() { return city; }
	    public void setCity(String city) { this.city = city; }
	}


}
