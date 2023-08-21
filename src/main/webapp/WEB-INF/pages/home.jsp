<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<head>

<style type="text/css">
#Firstone{
grid-template-columns: 1fr 1fr;
    grid-gap: 20px;
  display: grid;
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: -50px;
    margin-left: -50px;
    width: 100px;
    height: 100px;
}
#anc{

text-decoration: none;
}




</style>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>

<div id="Firstone">
<div id="one">
<button type="button" class="btn btn-outline-primary"  ><a href="showPage" id="anc">Add Book</a></button>
</div>

<div id="two">
<button type="button" class="btn btn-outline-primary"><a href="allBookks" id="anc">Show Book</a></button>
</div>
</div>

</body>
</html>