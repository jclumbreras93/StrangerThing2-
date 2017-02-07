<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title><sitemesh:write property='title' /></title>
<sitemesh:write property='head' />
<!-- Latest compiled and minified CSS & JS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<script src="//code.jquery.com/jquery.js"></script>
<script
	src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="navbar navbar-default">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Title</a>
			<ul class="nav navbar-nav">
				<li class="active"><a href='<c:url value="/" />'><spring:message code="views.menu.home" /></a></li>
				<li><a href="<c:url value="/peliculas" />"><spring:message code="views.menu.movies"/></a></li>
				
				<sec:authorize access="hasRole('ADMIN')">
				<li><a href="<c:url value="/admin" />">Admin</a></li>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
				<li><a href="<c:url value="/login" />"><spring:message code="views.menu.login" /></a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				<li>	
				<form action="<c:url value="/salir" />" class="navbar-form " method="POST">
				<input type="hidden" name="_csrf" id="_csrf" value="${_csrf.token}">
				<button type="submit" class="btn btn-link "><spring:message code="views.menu.exit" /></button>
				</form>
				<li>
				</sec:authorize>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
			  
        <li>
	        <a href="?lang=es_ES">
	        	<img alt="spanish" src="https://lipis.github.io/flag-icon-css/flags/4x3/es.svg" height="12px">
	        </a>
        </li>
         <li>
	        <a href="?lang=pt">
	        	<img alt="portuguese" src="https://lipis.github.io/flag-icon-css/flags/4x3/pt.svg" height="12px">
	        </a>
        </li>
        <li>
	        <a href="?lang=en_US">
	        	<img alt="English" src="https://lipis.github.io/flag-icon-css/flags/4x3/gb.svg" height="12px">
	        </a>
        </li>
			</ul>
		</div>
	</div>
	<div>
		<sitemesh:write property='body' />
		<spring:url value="/js/ingredientes.js" var="mainJs" />
		<script src="${mainJs}"></script>

	</div>
</body>
</html>