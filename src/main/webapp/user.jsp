<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
BODY{
	background-color: #eee;
	padding:2%;
}

table {
	width:80% !important;
	margin:2% auto;
	background-color:#fff !important;
}

table tr:nth-child(odd) {
	background-color:royalblue !important;
}

table tr:nth-child(even) {
	background-color:yellow !important;
}

</style>
</head>
<body>
	<p><a href="http://localhost:8082/home">Home</a> | <a href="http://localhost:8082/user">User</a></p>
	<h3 class="text-center">User List</h3>
	<br>
	
	<table class="table table-center table-bordered">
		<thead>
			<tr style="background-color:#fff !important">
				<th>User ID</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<td><c:out value="${user.id}"></c:out></td>
					<td><c:out value="${user.name}"></c:out></td>
					<td><c:out value="${user.gender}"></c:out></td>
					<td style="text-align:center !important;"><form><input type="text" value="${user.id}" /></form><button class="btn btn-sm btn-danger" type="button">Remove</button></td>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
</body>
</html>