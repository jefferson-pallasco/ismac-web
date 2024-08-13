<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Autores</title>
</head>
<body>
 <h1>Agregar Autores</h1>
 
 
 	<form action="add" method="post">
 	
 	<input type="hidden"  id="idAutor" name= "idAutor" value="${autor.idAutores}"/> 
 		Nombre
 	<input type="text"  id="nombre" name= "nombre" value="${autor.nombre}"/> 
 	<br/>
 		Apellido
 	<input type="text"  id="apellido" name= "apellido" value="${autor.apellido}"/> 
 	<br/>
 		Pais
 	<input type="text"  id="pais" name= "pais" value="${autor.pais}"/> 
 	<br/>
 		Direccion
 	<input type="text"  id="direccion" name= "direccion" value="${autor.direccion}"/>
 	<br/>
 		Telefono 
 	<input type="text"  id="telefono" name= "telefono" value="${autor.telefono}"/> 
 	<br/>
 		Correo
 	<input type="email"  id="correo" name= "correo" value="${autor.correo}"/> 
 	<br/>
 	
 	<button type="submit">Guardar</button>
 
 		<button onclick="window.location.href ='/ismac-libreria-web/autores/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 	</form>
 
 </body>
</html>  