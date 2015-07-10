<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Administracion de estudiantes</title>
		<link type="text/css" rel="stylesheet" href="estilos.css">
		<script type="text/javascript">
			function soloNumeros(evento){
				var caracter = (evento.which) ? evento.which : evento.keyCode;
				if (caracter >  31 && (caracter < 48 || caracter > 57))
					return false;
				
				return true;
			};
		</script>
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
			<a href="usuarios.jsp">Usuarios</a>
			<a href="Salir">Salir</a>
			
		</nav>
	
		<article>
			<form name="adminEstudiantes" method="post" action="ControlEstudiantes">
				<table border="1">
					<tr>
						<td><b>Carnet:</b></td>
						<td><input type="text" name="carnet" value=""></td>
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
						<td><b>Direccion:</b></td>
						<td><input type="text" name="direccion" value=""></td>
					</tr>
					<tr>
						<td><b>Edad:</b></td>
						<td><input type="text" name="edad" value="0" onkeypress="return soloNumeros(event)"></td>
					</tr>
					<tr>
						<td><input type="submit" name="insertar" value="Insertar"></td>
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