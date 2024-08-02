<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        form {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 4px;
            width: 350px;
            background-color: #f9f9f9;
        }
        table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
        .login-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }
        .registration-button {
            background-color: #00308F;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }
            </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="login" method="post">
            <div class="error">
                <% 
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (errorMessage != null) {
                        out.print(errorMessage);
                    }
                %>
            </div>
            <div>
                <input type="text" name="username" placeholder="Username" required style="width: 100%; padding: 8px; box-sizing: border-box;" />
            </div>
            <div style="margin-top: 10px;">
                <input type="password" name="password" placeholder="Password" required style="width: 100%; padding: 8px; box-sizing: border-box;" />
            </div>
            <div style="margin-top: 20px; text-align: center;">
                <input type="submit" value="Login" class="login-button" />
     
            </div>
	</form>
			 <form action="Registration.jsp" method="get">
        			<div style="margin-top: 20px; text-align: center;">
                <input type="submit" value="Register New Employee" class="registration-button" />
            </div>
        </form>
    </div>
      <% if (request.getAttribute("loginFailed") != null && (Boolean) request.getAttribute("loginFailed")) { %>
<div class="message-box">
    <p>Login failed. Please try again.</p>
</div>
<% } %>
     </body>
</html>
