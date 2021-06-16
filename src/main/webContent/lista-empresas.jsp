<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>

	<c:if test="${not empty empresa}">
		Empresa ${ empresa }, Cadastrada com sucesso!
	</c:if>
	<c:if test="${empty empresa}">
		N�o foi poss�vel cadastrar empresa!
	</c:if>

	<br />
	Lista de empresas:
	<br />

	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${ empresa.nome} - <fmt:formatDate value="${empresa.data}" pattern="dd/MM/yyyy" /></li>
			<a href="/gerenciador/mostra-empresa?id=${empresa.id}">editar</a>		
			<a href="/gerenciador/remove-empresa?id=${empresa.id}">remover</a>			
		</c:forEach>
	</ul>

</body>
</html>