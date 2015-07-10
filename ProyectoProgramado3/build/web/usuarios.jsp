<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Administradr de Usuarios</title>
		<link type="text/css" rel="stylesheet" href="estilos.css">
	</head>
	<body>
		<%
			if(session.getAttribute("userid") == null)
			    response.sendRedirect("index.jsp");
			
			String nombreUsuario = null;
			Cookie[] cookies = request.getCookies();
			if(cookies !=null)
				for(Cookie cookie : cookies)
				    if(cookie.getName().equals("userid")) 
				    	nombreUsuario = cookie.getValue();
			
		%>
				
		<div id="contenido">
			<header>
				<p>Proyecto Programado 2 - Programacion 2
				<br>UCR - 2014</p>
			</header>
		
		<nav>
			
			<a href="estudiantes.jsp">Estudiantes</a>
			<a href="usuarios.jsp">Reporte</a>
			<a href="Salir">Salir</a>
		</nav>
	
		<article>
			<form method="post" action="ControlUsuarios">
				<table border="1">
					<tr>
						<td><b>idUsuario:</b></td>
						<td><input type="text" name="idusuario" value=""></td>
					</tr>
					<tr>
						<td><b>userID:</b></td>
						<td><input type="text" name="userid" value=""></td>
					</tr>
					<tr>
						<td><b>Password:</b></td>
						<td><input type="password" name="password" value=""></td>
					</tr>
					<tr>
						<td><b>Nombre:</b></td>
						<td><input type="text" name="nombre" value=""></td>
					</tr>
					<tr>
						<td><b>1re Apellido:</b></td>
						<td><input type="text" name="apellido1" value=""></td>
					</tr>
					<tr>
						<td><b>2do Apellido:</b></td>
						<td><input type="text" name="apellido2" value=""></td>
					</tr>
					<tr>
						<td><b>E-mail:</b></td>
						<td><input type="text" name="email" value=""></td>
					</tr>
					<tr>
						<td><b>Admin</b></td>
						<td><input type="checkbox" name="admin" value="ON"></td>
					</tr>
					<tr>
						<td><input type="submit" name="insertar" value="Ingresar"></td>
						<td><input type="submit" name="modificar" value="Modificar"></td>
					</tr>
					<tr>
						<td><input type="submit" name="eliminar" value="Eliminar"></td>
						<td><input type="submit" name="buscar" value="Buscar"></td>
					</tr>
					<tr>
						<td><input type="reset" value="Limpiar"></td>
					</tr>
				</table>
			</form>
		</article>

		<footer>
			<p>Rodolfo Sequeira Rodriguez | Alexander Canales Saenz</p>
			</footer>
			
	</div>
		
	</body>
</html>