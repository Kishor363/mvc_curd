<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Book Registration form</h1>


<form:form method="POST" modelAttribute="bookCurd" >
<table  border="1">
<tr>
<td>Book Name</td>
<td><form:input path="bookName"/></td>
</tr>
<tr>
<td>Book Auther</td>
<td><form:input path="auther"/></td>
</tr>
<tr>
<td>Book cost</td>
<td><form:input path="cost"/></td>
</tr>
<tr>
<td>Book PublishDate</td>
<td><form:input type="date" path="publishDate"/></td>
</tr>
<tr>
<td>Book Language</td>
<td><form:input path="language"/></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
<td><input type="reset" value="reset"></td>
</tr>

</table>


</form:form>


</body>
</html>