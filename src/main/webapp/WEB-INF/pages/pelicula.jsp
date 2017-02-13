<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Peliculas</h3>
	
	<div class="row">
		<div class="col-md-6">
			<table class="table">
				<thead>
					<tr>
						<th>Caratula</th>
						<th>Nombre</th>
						<th>Genero</th>
						<th>Editar</th>
						<th>Eliminar</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${peliculas}" var="pelicula">
						<tr data-id="${pelicula.idPel}">
							<td><img src="${pelicula.caratula}" alt="${pelicula.caratula}" class="pull-left" style="max-height: 50px; max-width: 50px'"></td>
							<td><a href='<c:url value="/peliculas/${pelicula.idPel}" />'> ${pelicula.nombrePel}</a></td>
							<td><c:forEach items="${pelicula.generos}" var="gen">
				-${gen.nombreGen}
				</c:forEach></td>
							<td>
								<button type="button" class="btn btn-warning btn-editar-pizza">Editar</button>
							</td>
							<td>
								<button type="button" class="btn btn-danger btn-borrar-pizza">Deletar</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
	<sec:authorize access="hasRole('ADMIN')">
	<a class="btn btn-primary" data-toggle="modal" href='#modal-id'>Añadir Pelicula</a>
<div class="modal fade" id="modal-id">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Modal title</h4>
			</div>
			<div class="modal-body">
				


<form action="<c:url value="/peliculas" />" method="POST" role="form">
		<legend>Form title</legend>

<div class="form-group">
			<label for="">Nombre</label>
			<input type="text" name="nombrePel" class="form-control" id="" placeholder="Nombre">
		</div>

<div class="form-group">
			<label for="">caratula</label>
			<input type="text" name="caratula" class="form-control" id="" placeholder="Caratula">
		</div>

<div class="form-group">
			<label for="">Trailer</label>
			<input type="text" name="trailer" class="form-control" id="" placeholder="Trailer">
		</div>

<div class="form-group">
			<label for="">Descripcion</label>
			<textarea name="descripcionPel" id="inputDescripcionPel" class="form-control" rows="3" ></textarea>
		</div>

<div class="form-group">
			<label for="">Genero</label>
			<select name="generos" id="inputGeneros" class="form-control" >
				<c:forEach items="${generos}" var="genero">
				
				<option value="${genero.idGen}">${genero.nombreGen}</option>
		</c:forEach>
			</select>
		</div>
<input type="hidden" id="input" name="id" class="form-control" value="">
<input type="hidden" name="_csrf" id="_csrf" class="form-control" value="${_csrf.token}">
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Save changes</button>
			</div>
	</form>
		</div>
	</div>
</div>
	</sec:authorize>
</body>
</html>