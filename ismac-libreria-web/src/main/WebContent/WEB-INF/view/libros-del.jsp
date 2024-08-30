<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %> --> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ELIMINAR AUTORES</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>

<style>
    body {
        background-image: url('${pageContext.request.contextPath}/resources/img/fondo.jpg'); /* Ajusta la ruta a tu imagen */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
        margin: 0;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.8); /* Fondo blanco semi-transparente para el contenido */
        padding: 20px;
        border-radius: 10px;
    }
</style>
</head>
<body>

<nav></nav>
<section class="py-100 px-100">
    <div class="container">
        <i class="fa-solid fa-user-minus"></i>
        	

        <form action="del" method="get">
            <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}"/> 
            <strong>¿Desea Eliminar el Autor?</strong>
            <br>
            <button class="btn btn-primary mt-3" type="submit"> 
            <i class="fa-solid fa-square-check"></i>
            </button>
<button class="btn btn-primary mt-3" onclick="window.location.href ='/ismac-libreria-web/libros2/findAll';return false;">
                <i class="fa-solid fa-circle-xmark"></i>
            </button>
        </form>
    </div>
</section>
<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

</body>
</html>
