<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div style="">
                <h1 style="text-align:center; font-family: sans-serif;">Log In</h1>
                <form action="${pageContext.request.contextPath}/form" method="post">
                       <label>Nombre</label> <input required type="text" name="name" ><br>
                       <label>Apellido:</label> <input type= "text" name= "lname"><br>
                       <label>Fecha de Nacimiento:</label> <input type= "date" name= "bdate"><br>
                       <label>Carrera:</label> <input type= "text" name= "career"><br>
                       <label>Experiencia:</label> <input type= "text" name= "experience"><br>
                       <input type= "submit" value= "Enviar">
                </form>
                </div>
</body>
</html>