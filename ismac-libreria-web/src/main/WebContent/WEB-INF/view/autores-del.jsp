<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Del Autores</title>
</head>
<body>
 <h1>Eliminar Autores</h1>
 
 	<form action="del" method="get">
 	
 	<input type="hidden"  id="idAutor" name= "idAutor" value="${autor.idAutore}"/> 
	<strong>¿Desea Eliminar el Dato?</strong>
	<br>
	<button type="submit">Aceptar</button>
 
 	</form>
 
 		<button onclick="window.location.href ='/ismac-libreria-web/autores/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 </body>
</html>