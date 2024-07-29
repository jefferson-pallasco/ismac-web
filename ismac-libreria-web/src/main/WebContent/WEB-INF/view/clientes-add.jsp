<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Clientes</title>
</head>
<body>
 <h1>Agregar Clientes</h1>
 
 
 	<form action="add" method="post">
 	
 	<input type="hidden"  id="idCliente" name= "idCliente" value="${cliente.idClientes}"/> 
 	<br>
 		cedula
 	<input type="hidden"  id="cedula" name= "cedula" value="${cliente.cedula}"/> 
 	<br>
 		Nombre
 	<input type="hidden"  id="nombre" name= "nombre" value="${cliente.nombre}"/> 
 	<br>
 		Apellido
 	<input type="hidden"  id="apellido" name= "apellido" value="${cliente.apellido}"/> 
 	<br>
 		Direccion
 	<input type="hidden"  id="direccion" name= "direccion" value="${cliente.direccion}"/>
 	<br>
 		Telefono 
 	<input type="hidden"  id="telefono" name= "telefono" value="${cliente.telefono}"/> 
 	<br>
 		Correo
 	<input type="email"  id="correo" name= "correo" value="${cliente.correo}"/> 
 	<br>
 	
 	<button type="submit">Guardar</button>
 
 		<button onclick="window.location.href ='/ismac-libreria-web/clientes/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 	</form>
 
 </body>
</html>