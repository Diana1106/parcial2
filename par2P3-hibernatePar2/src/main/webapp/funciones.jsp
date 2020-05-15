<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
h1{ color: white; }
h2{color: green;}
h6{color: #781e7e;}
p,li,input,blockquote { color: #ABABAB}
p,li,input,blockquote{font-size: 350%}
table,th,td{color: #6c757d;
border: 2px double white;}
</style>
<%

HttpSession s = (HttpSession) request.getSession();
String usuario = (String)s.getAttribute("usuario");
if(usuario==null){
response.sendRedirect("index.jsp");
}
%>
<body>

<form   align="center" action="ServeletConsulta" method="get">
<table align="center">
	<thead>
		
	</thead>
	<%
	String idBus= request.getParameter("idBus");
	String nombre= request.getParameter("No");
	String apellido= request.getParameter("A");
	
	if(idBus==null){
		idBus="";
		nombre=" ";
		apellido=" ";
		
		
	}
	%>
	<tbody>
		<tr>
			<td>
				<div>
				<p>id</p><input type="text" name="Id" id="idcarga" value="<%=idBus%>">
				</div>
				<div>
				<p>nombre</p><input type="text" name="Nombre"id="Nocarga" value="<%=nombre%>">
				</div>
				<div>
				<p>apellido</p><input type="text" name="Apellido"id="Acarga" value="<%=apellido%>">
				</div>
				<br>
				<br>
			</td>
		</tr> 
	</tbody>
</table>

<input  type ="submit" class="btn btn-secondary" value="Guardar Nuevo Registro" name="btn">	
<input  type ="submit" class="btn btn-success" value="Guardar Actualizar"name="btn">	
<a href="gestionar.jsp" class="btn btn-dark">Volver</a>
</form>
</body>
</html>