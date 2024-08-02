<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Borrar Categorias</title>
</head>
<body>
 <h1>Eliminar Categorias</h1>
 
 	<form action="del" method="get">
 	
 	<input type="hidden"  id="idCategoria" name= "idCategoria" value="${categoria.idCategorias}"/> 
	<strong>¿Desea Eliminar el Dato?</strong>
	<br>
	<button type="submit">Aceptar</button>
 
 	</form>
 
 		<button onclick="window.location.href ='/ismac-libreria-web/categorias/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 </body>
</html>