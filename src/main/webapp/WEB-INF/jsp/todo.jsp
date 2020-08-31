<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add Todo</title>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
			rel="stylesheet">
	</head>

	<body>
		<div class="container">
			<form method="post">
			<fieldset class="form-group"> 
			<label for="description">Description: </label>
				<input type="text" name="desc" id="description" class="form-control" required>
			</fieldset>
				 <button type="submit" class="btn btn-success">Add</button>
			</form>
		</div>
		
		
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</body>
</html>