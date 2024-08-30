<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Del Clientes</title>
</head>
<body>
 <h1>Eliminar Clientes</h1>
 
 	<form action="del" method="get">
 	
 	<input type="hidden"  id="idCliente" name= "idCliente" value="${cliente.idCliente}"/> 
	<strong>¿Desea Eliminar el Dato?</strong>
	<br>
	<button type="submit">Aceptar</button>
 
 	</form>
 
 		<button onclick="window.location.href ='/ismac-libreria-web/clientes/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 </body>
</html>