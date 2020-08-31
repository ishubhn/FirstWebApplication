<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
		<form:form method="post" modelAttribute="todo">
			<form:hidden path="id" />
			<fieldset class="form-group">
				<form:label for="description" path="desc">Description: </form:label>
				<!-- desc is attribute from Todo class -->
				<form:input type="text" path="desc" id="description"
					class="form-control" required="required" />
				<!--replaced name tag with path, it will create name automatically, also above required="required" is expected else it will throw JasperException    -->
				<form:errors path="desc" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label for="targetDate" path="targetDate">Target Date: </form:label>
				<!-- desc is attribute from Todo class -->
				<form:input type="text" path="targetDate" id="targetDate"
					class="form-control" required="required" />
				<!--replaced name tag with path, it will create name automatically, also above required="required" is expected else it will throw JasperException    -->
				<form:errors path="targetDate" cssClass="text-warning" />
			</fieldset>
			<button type="submit" class="btn btn-success">Add</button>
		</form:form>
	</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script	src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
	<script>
		$('#targetDate').datepicker({ /*identify attribute with id*/
			format : 'dd/mm/yyyy'
		});
	</script>
</body>
</html>