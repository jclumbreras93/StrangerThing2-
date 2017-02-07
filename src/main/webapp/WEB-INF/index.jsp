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

	<sec:authorize access="isAnonymous()">
	<div class="jumbotron">
	<div class="container">
		<h1><spring:message code="views.index.welcomereg" /></h1>
		<p><spring:message code="views.index.welcomeex" /></p>
		<p>
			<a class="btn btn-primary btn-lg" data-toggle="modal" href='#modal-registro'><spring:message code="views.menu.register" /></a>
		</p>
	</div>
</div>
	
	</sec:authorize>
	
	<sec:authorize access="isAuthenticated()">
	<sec:authorize access="hasRole('ADMIN')">
	<h3>Esto solo lo ve el admin</h3>
	<a class="btn btn-primary btn-lg" data-toggle="modal" href='#modal-registro'><spring:message code="views.menu.register" /></a>
	</sec:authorize>

	<sec:authorize access="hasRole('USER')">
	<div class="jumbotron">
	<div class="container">
		<h1><spring:message code="views.index.welcome" /></h1>
		<p><spring:message code="views.index.welcomeex" /></p>
		<p>
			<a class="btn btn-primary btn-lg" href="<c:url value="/peliculas" />"><spring:message code="views.index.library" /></a>
		</p>
	</div>
</div>
	</sec:authorize>
	</sec:authorize>



	<div class="modal fade" id="modal-registro">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title text-center"><spring:message code="views.menu.register" /></h4>
				</div>
				<div class="modal-body">
				<form action="<c:url value="/login" />" method="POST" role="form">

				<div class="form-group">
					<label for=""><spring:message code="views.index.user" /></label>
					<input name="username" type="text" class="form-control" id="" placeholder="Username">
				</div>
				<div class="form-group">
					<label for=""><spring:message code="views.index.lastname" /></label>
					<input name="apellidoPer" type="text" class="form-control" id="" placeholder="Username">
				</div>
				
				<div class="form-group">
					<label for=""><spring:message code="views.index.mail" /></label>
					<input name="mailPer" type="email" class="form-control" id="" placeholder="Username">
				</div>
				
				<div class="form-group">
					<label for=""><spring:message code="views.index.pass" /></label>
					<input name="password" type="password" class="form-control" id="" placeholder="Username">
				</div>
				
								
				<input type="hidden" id="input" name="id" class="form-control" value="">
				<sec:authorize access="isAnonymous()">
				<input type="hidden" id="input" name="permisos" class="form-control" value="2">
				</sec:authorize>
				<sec:authorize access="hasRole('ADMIN')">
				<input type="hidden" id="input" name="permisos" class="form-control" value="1">
				</sec:authorize>
				<input type="hidden" name="_csrf" id="_csrf" class="form-control" value="${_csrf.token}">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="views.menu.close" /></button>
					<button type="submit" class="btn btn-primary"><spring:message code="views.menu.register" /></button>
				</div>
			</form>
			</div>
		</div>
	</div>

</body>
</html>