<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --> 
<!DOCTYPE html>
<html>
<body>
<head>
<meta charset="ISO-8859-1">
<title>Add Categorias</title>
</head>
<body>
 <h1>Agregar Categorias</h1>
 
 
 	<form action="add" method="post">
 	
 	<input type="hidden"  id="idCategoria" name= "idCategoria" value="${categoria.idCategorias}"/>  <br/>
 	
 		Categoria
 	<input type="text"  id="categoria" name= "categoria" value="${categoria.categoria}"/> <br/>
 	
 	 Descripcion
 	<input type="text"  id="descripcion" name= "descripcion" value="${categoria.descripcion}"/> <br/>
 	
 
 	
 	<button type="submit">Guardar</button>
 
 		<button onclick="window.location.href ='/ismac-libreria-web/categorias/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 	</form>
 
 </body>
</html>  
