<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>AGREGAR LIBROS</title>
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
</head>
<body>
<nav></nav>
	<section class="py-5 px-5">
	
			<div class="container" >
				<h1>Libros</h1>
				<form action="add" method="post" class="needs-validation" novalidate>
					<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro }"  required/>
					
				<div class=" form-group" >
					<label for="titulo" class="form-label">T�tulo</label>
					<input class="form-control"  type="text" id="titulo" name="titulo" value="${libro.titulo }" required />
				</div>
				
					<div class=" form-group" >
					<label for="editorial" class="form-label">Editorial</label>
					<input class="form-control"  type="text" id="editorial" name="editorial" value="${libro.editorial }"  required/>
					</div>
				
				<div class=" form-group" >
					<label for="editorial" class="form-label">N� Paginas</label>
					<input  class="form-control"  type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas }"  required/>
					</div>
					
				<div class=" form-group" >
					<label for="edicion" class="form-label">Edici�n</label>
					<input  class="form-control"  type="text" id="edicion" name="edicion" value="${libro.edicion }"  />
					</div>
					
				<div class=" form-group" >
					<label for="idioma" class="form-label">Idioma</label>
					<input   class="form-control"  type="text" id="idioma" name="idioma" value="${libro.idioma }"  required />
					</div>
				
				<div class=" form-group" >
					<label for="fechaPublicacion" class="form-label">Fecha-Publicaci�n</label>
					<input  class="form-control"  type="date" id="fechaPublicacion" name="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion,0,10) }"  required />
					</div>
					
				<div class=" form-group" >
					<label for="descripcion" class="form-label">Descripci�n</label>
					<input  class="form-control"  type="text" id="descripcion" name="descripcion" value="${libro.descripcion }"  />
					</div>
				
					<div class=" form-group" >
					<label for="tipoPasta" class="form-label">Tipo-Pasta</label>
					<input  class="form-control"  type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta }"  required/>
					</div>
				
					<div class=" form-group" >
					<label for="ISBN" class="form-label">ISBN</label>
					<input  class="form-control"  type="text" id="	ISBN" name="ISBN" value="${libro.ISBN }"  required />
					</div>
					
					<div class=" form-group" >
					<label for="numEjemplares" class="form-label">N� Ejemplares</label>
					<input  class="form-control" type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares }"  required/>
					</div>
				
						<div class=" form-group" >
					<label for="portada" class="form-label">Portada</label>
					<input  class="form-control"   type="text" id="portada" name="portada" value="${libro.portada }"  />
					</div>
				
						<div class=" form-group" >
					<label for="presentacion" class="form-label">Precentaci�n</label>
					<input  class="form-control"  type="text" id="presentacion" name="presentacion" value="${libro.presentacion }"  required/>
					</div>
					
					<div class=" form-group" >
					<label for="precio" class="form-label">Precio $</label>
					<input class=" form-control"  step="any" type="number" id="precio" name="precio" value="${libro.precio }"  required/>
					</div>
			
			<div class=" form-group" >
				<label for="idCategoria"  class="form-label">Categoria</label>
					<select class="form-select" id="idCategoria" name="idCategoria"  required> 
					<c:forEach var="item" items="${categorias}">
					<option value="${item.idCategoria}" ${item.idCategoria==libro.categoria.idCategoria ? 'selected' : ''}> ${item.categoria}</option>
					</c:forEach>
					</select>
					</div>
						
						<div class=" form-group" >
						<label for="idAutor"  class="form-label">Autor</label>
					<select class="form-select" id="idAutor" name="idAutor"  required>
					<c:forEach var="item" items="${autores}">
					<option value="${item.idAutor}" ${item.idAutor ==libro.autor.idAutor  ? 'selected' : '' }> ${item.nombre}.${item.apellido}</option>
					</c:forEach>
					</select>					
			</div>
							
				<button class=" btn btn-primary" type ="submit">Guardar</button>
				<button  class=" btn btn-primary"  onclick="window.location.href ='/recursosh-web/libros2/findAll';return false;">Eliminar</button>
			
				</form>
	
			</div>
	
	
	</section>
	<footer></footer>
	
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
 				
 				<script>
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	  'use strict'
 
	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')
 
	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }
 
	      form.classList.add('was-validated')
	    }, false)
	  })
	})()

</script>

</body>
</html>