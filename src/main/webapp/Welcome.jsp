<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hello <%=session.getAttribute("name")%></title>
</head>
<body>
	

    <h1>Hello <%=session.getAttribute("name")%></h1>
    <h2>Employee List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>EmployeeID</th>
                <th>Name</th>
                <th>City</th>
            </tr>
        </thead>
        <tbody>
             <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.employeeId}</td>
                    <td>${user.name}</td>
                    <td>${user.city}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
