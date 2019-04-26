<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	<table border="1" style="background-color: #bc47ad; color:white;">
		<tr>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Fecha de Nacimiento</th>
			<th>Carrera</th>
			<th>Experiencia</th>
		</tr>
		<tr>
			<td>${student.name}</td>	
			<td>${student.lastName}</td>	
			<td>${student.bDate}</td>	
			<td>${student.career}</td>	
			<td>${student.experience}</td>	
		</tr>	
	
	
	
	
	</table>
	<c:set value="${['nombre','apellido','fecha nacimiento','career','experiencia']}" var="pageTitle"/>
<c:set value="${0}" var="indice"/>
<c:out value="A continuacion se muestra la informacion de ${student.name}"/><br></b>
<c:forEach var = "i" items="${student.name}, ${student.lastName}, ${student.bDate}, ${student.career}, ${student.experience}">
    <c:out value = "Mostrando ${pageTitle[indice] } ${i}"/><p>
     <c:set value="${indice+1 }" var="indice"/>
    
    
</c:forEach>


</body>
</html>