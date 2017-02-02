<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
 <head>
 <title><sitemesh:write property='title'/></title>
 <sitemesh:write property='head'/>
<!-- Latest compiled and minified CSS & JS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<script src="//code.jquery.com/jquery.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#ingredientes').DataTable( {
        "language": {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json"
        }
    } );

$(".nav li a").on('click', function() {
	console.log("Hola");
	$(this).parent().addClass("active");
})

} );



</script> 

 </head>
 
 <body>
<div class="navbar navbar-default">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Title</a>
		<ul class="nav navbar-nav">
			<li class="active">
				<a href='<c:url value="/" />'>Home</a>
			</li>
			<li>
				<a href="<c:url value="/pizza" />">pizza</a>
			</li>
			<li>
				<a href="<c:url value="/ingredientes" />">Ingredientes</a>
			</li>
			<li>
				<a href="<c:url value="/login" />">Login</a>
			</li>
		</ul>
	</div>
</div>

<div>
 <sitemesh:write property='body'/>
 	<spring:url value="/js/ingredientes.js" var="mainJs" />
     <script src="${mainJs}"></script>

</div>
 </body>
</html>