<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="row">
	<h2 class="text-center">${pelicula.nombrePel}</h2>
		<div class="col-md-3">
			<img src="${pelicula.caratula}" alt="${pelicula.caratula}" class="pull-left" style="max-height: 180px">
		</div>
		<div class="col-md-6">
			<p class="text-center">${pelicula.descripcionPel}</p>
		</div>
		<div class="col-md-3">
			<h3>Generos</h3>
			<ul>
			<c:forEach items="${pelicula.generos}" var="gen">
				<li>${gen.nombreGen}</li>
			</c:forEach>
			</ul>
		</div>
		</div>
		<hr>
		<div class="row">
		<div class="col-md-6">
		<iframe width="420" height="315" src="${pelicula.trailer}"></iframe>
		</div>
</div>
</div>
</body>
</html>