<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 align="center">All Book Data Here</h1>

<c:choose>
 <c:when test="${!empty bookList }">
 
 <table border="1" align="center" >
 <tr>
 <th>Book id</th><th>Book Name</th><th>Book Auther</th><th>Book cost</th><th>Book PublishDate</th><th>Book Language</th><th>Operation</th>
 </tr>
 <c:forEach var="list" items="${bookList}">
 <tr> 
 <td>${list.bookId}</td>
 <td>${list.bookName}</td>
 <td>${list.auther}</td>
 <td>${list.cost}</td>
 <td>${list.publishDate}</td>
 <td>${list.language}</td>
 <td><a href="updateBook?id=${list.bookId}">Update</a>&nbsp;&nbsp;
 <a href="deleteBook?id=${list.bookId }">Delete</a></td>
 </tr>
 
 
 
 
 </c:forEach>
 
 </table>
 
 </c:when>


</c:choose>
<div align="center">
<h3 >${result}</h3>
</div>

</body>
</html>