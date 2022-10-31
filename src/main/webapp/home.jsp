<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

form {
	margin:2% auto;
	width:90%;
}
form .row {
	margin:2%;
}
</style>
</head>
<body>
	<p><a href="http://localhost:8082/home">Home</a> | <a href="http://localhost:8082/user">User</a></p>

	<h3 class="text-center">${msg}</h3>
	<br>
	<form class="form-horizontal" method="post" action="/user/save">
		<div class="row">
			<label class="control-label">Name</label>
			<input type="text" class="form-control" name="name" placeholder="Enter Name"/>
		</div>
		<div class="row">
			<label class="control-label">Gender</label>
			<input type="text" list="gend" class="form-control" name="gender" placeholder="Enter Gender" />
		</div>
		<div class="row">
			<button type="submit" class="btn btn-primary">Add User</button>
		</div>
	</form>
	<br/>
	<p style="color:green;font-weight:bold;margin-left:2%">${USER_REG_MSG}</p>
	
	<datalist id="gend">
		<option>Male</option>
		<option>Female</option>
	</datalist>
</body>
</html>