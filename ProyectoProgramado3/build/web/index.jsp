<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Ingreso al sistema</title>
		<script type="text/javascript" src='zepto.min.js'></script>
		<link type="text/css" rel="stylesheet" href="estilos.css">
	</head>
	
	<body>
		<%
			if(session.getAttribute("userid") != null)
			    response.sendRedirect("admin.jsp");
			
			String nombreUsuario = null;
			Cookie[] cookies = request.getCookies();
			if(cookies !=null)
				for(Cookie cookie : cookies)
				    if(cookie.getName().equals("userid")) 
				    	nombreUsuario = cookie.getValue();
			
		%>
		
		<form name="login" method="post" action="Login">
        
            <table id='login'>
                <tr>
                    <td><b>UserID:</b></td>
                    <td><input type="text" name="userid" value=""></td>
                </tr>
                <tr>
                    <td><b>PassWord:</b></td>
                    <td><input type="password" name="password" value=""></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Ingresar"></td>
                    <td><input type="reset" value="Limpiar"></td>
                    
                </tr>
            </table>
        </form>
	</body>
</html>