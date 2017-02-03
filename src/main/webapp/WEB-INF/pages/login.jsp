<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container-fluid">
	<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
		<form action='<c:url value="/autenticar"/>' method="POST" class="form-horizontal" role="form">
				<div class="form-group">
					<legend>Login</legend>
				</div>
		<c:if test="${not empty Mensaje}">
		${Mensaje}
		</c:if>
			<div class="form-group">
				<label class="sr-only" for="">Usuario</label>
				<input type="text" class="form-control" id="" name="username" placeholder="Input field">
			</div>

			<div class="form-group">
				<label class="sr-only" for="">password</label>
				<input type="password" name="password" class="form-control" id="" placeholder="Input field">
			</div>
				
		
<input type="hidden" name="_csrf" id="_csrf" class="form-control" value="${_csrf.token}">
				<div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</div>
		</form>


	</div>
</div>
</body>
</html>