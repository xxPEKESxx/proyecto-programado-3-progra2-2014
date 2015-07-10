<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Administrador de tablas</title>
		<link type="text/css" rel="stylesheet" href="estilos.css">	
	</head>
	
	<body>
		<% 
			String userid = null;
			if (session.getAttribute("userid") == null)
				response.sendRedirect("index.jsp");
			 else
				userid = (String) session.getAttribute("userid");
			
			String nombreUsuario = null;
			String sesionId = null;
			Cookie [] cookies = request.getCookies();
			if (cookies != null)
				for (Cookie cookie : cookies)
					if (cookie.getName().equals("userid"))
						nombreUsuario = cookie.getValue();
			
		%>
	
	<div id="contenido">
			<header>
				<p>Proyecto Programado 2 - Programacion 2
				<br>UCR - 2014</p>
			</header>
		
		<nav>
			
			<a href="estudiantes.jsp">Estudiantes</a>
			<a href="usuarios.jsp">Usuarios</a>
			<a href="Salir">Salir</a>
			
		</nav>
	
		<article>
			<p>Administracion de Estudintes/Usuarios</p>
		</article>

		<footer>
			<p>Rodolfo Sequeira Rodriguez | Alexander Canales Saenz</p>
		</footer>
			
	</div>
	</body>
</html>