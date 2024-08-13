<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>	Autores</title>
</head>
<body>
 <h1>Autores</h1>
 
 		<button onclick="window.location.href ='/ismac-libreria-web/autores/findOne?&opcion=1';return false;">
 					Agregar
 					</button>
 	<table>
 		<thead>
 		<tr>
 				<th>idAutor</th>
 		 		<th>Nombre</th>
 				 <th>Apellido</th>
 		 		<th>Pais</th>
 		 		<th>Dirección</th>
 		 		<th>Telefono</th>
 				 <th>Correo</th>
 				 <th>Acciones</th>
 		 </tr>
 		 </thead>
 		<tbody>
 			<c:forEach var="item" items="${autores}">
 				<tr>
 					<td>${item.idAutor}</td>
 					<td>${item.nombre}</td>
 					<td>${item.apellido}</td>
 					<td>${item.pais}</td>
 					<td>${item.direccion}</td>
 					<td>${item.telefono}</td>
 					<td>${item.correo}</td>
 					<td>
 					<button onclick="window.location.href ='/ismac-libreria-web/autores/findOne?idAutor=${item.idAutor}&opcion=1';return false;">
 					Actualizar
 					</button>
 					
 					<button onclick="window.location.href ='/ismac-libreria-web/autores/findOne?idAutor=${item.idAutor}&opcion=2';return false;">
 					Eliminar
 					
 					</button>
 					
 					</td>
 				</tr>
 			</c:forEach>
 	
 		</tbody>
 
			 </table>
</body>
</html>