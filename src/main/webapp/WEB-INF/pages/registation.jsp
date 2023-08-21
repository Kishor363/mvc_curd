<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 color="pink" align="center">Book Registration Fom</h1>

<div align="center">

<form:form method="POST" modelAttribute="bookCurd">
  <div class="input-group input-group-lg">
  <span class="input-group-text" id="inputGroup-sizing-lg">Book Name</span>
  <form:input path="bookName" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg"/>
</div>

<div class="input-group input-group-lg">
  <span class="input-group-text" id="inputGroup-sizing-lg">Book Auther</span>
  <form:input path="auther" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg"/>
</div>

<div class="input-group input-group-lg">
  <span class="input-group-text" id="inputGroup-sizing-lg">Book Cost</span>
  <form:input path="cost" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg"/>
</div>

<div class="input-group input-group-lg">
  <span class="input-group-text" id="inputGroup-sizing-lg">Book PublishDate</span>
  <form:input path="publishDate" type="date" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg"/>
</div>

<div class="input-group input-group-lg">
  <span class="input-group-text" id="inputGroup-sizing-lg">Book Language</span>
  <form:input path="language" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg"/>
</div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="reset" class="btn btn-primary">Reset</button>
</form:form>
</div>


</body>
</html>