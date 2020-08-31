<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>To-do's for ${name}</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">

		<table class="table table-striped">
			<caption>Your todo's are...</caption>
			<thead>
				<tr>
					<th>Description</th>
					<th>Target Date</th>
					<th>Is It Done?</th>
					<th>Delete</th>
					</tr>
			</thead>
			<tbody>
				<!-- JSTL For Loop -->
				<!-- for(Item todo: todos-->
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>
						<td><a href="/delete-todo?id=${todo.id}" type="button" class="btn btn-warning">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div>
			<a class="button" href="/add-todo">Add a todo</a>
		</div>

		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</div>
</body>
</html>