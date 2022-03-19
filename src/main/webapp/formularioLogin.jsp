<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div class="p-5 bg-primary text-white text-center">
		<h1>Mi primer servlet</h1>
		<p>Rutas y Formularios</p>
	</div>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Dinamic Web Project</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="/AADesafioControlDeAccesoFactura">Home</a></li>

					<li class="nav-item"><a class="nav-link active" href="login">Login</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container mt-5">
		<c:if test="${msjError != null }">
			<div class="alert alert-danger" role="alert">
				<c:out value="${msjError}"></c:out>
			</div>
		</c:if>
		<h1>Formulario de Ingreso</h1>
		<form action="procesarLogin" method="post">
			<label for="login" class="form-label">Login:</label>
			 <input
				type="text" class="form-control" id="login" name="login"
				placeholder="Ingresar login"><br> <label
				for="password" class="form-label">Password:</label> <input
				type="password" class="form-control" id="password" name="password"
				placeholder="Ingresar password"> <br>
			<button type="submit" class="btn btn-primary mb-3">Ingresar</button>
		</form>

	</div>
	<div class="mt-5 p-4 bg-dark text-white text-center">
		<p>Full Stack Java G6</p>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>

