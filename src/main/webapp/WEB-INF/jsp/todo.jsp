<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
	<form:form method="post" modelAttribute="todo">
		<form:hidden path="id" />
		<fieldset class="form-group">
			<form:label path="desc">Description</form:label>
			<form:input path="desc" type="text" class="form-control"
				required="required" />
			<form:errors path="desc" cssClass="text-warning" />
		</fieldset>

		<fieldset class="form-group">
			<form:label path="targetDate">Target Date</form:label>
			<form:input path="targetDate" type="text" class="form-control"
				required="required" />
			<form:errors path="targetDate" cssClass="text-warning" />
		</fieldset>

		<button type="submit" class="btn btn-success">Add</button>
	</form:form>
</div>
<%@ include file="common/footer.jspf" %>
<%-- <%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
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
<%@ include file="common/footer.jspf" %> --%>