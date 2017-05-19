<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clientes</title>
<jsp:include page="../../../importacoes.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		$('table').dataTable({
			"language" : {
				"lengthMenu" : "Mostrando _MENU_ registros por página",
				"zeroRecords" : "Nenhuma Ocorrência",
				"info" : "Mostrando Página _PAGE_ of _PAGES_",
				"infoEmpty" : "Sem regustros",
				"infoFiltered" : "(Filtrado de  _MAX_ total Registros)",
				"search" : "Buscar",
				"paginate" : {
					"first" : "Primeiro",
					"last" : "Último",
					"next" : "Próximo",
					"previous" : "Anterior"
				}
			}
		});
	})
</script>

</head>
<body>
	<div class="container">
		<h2>Listagem de clientes</h2>
		<table>
			<thead>
				<tr>
					<th>CPF</th>
					<th>Nome</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clientes}" var="cli">
					<tr>
						<td>${cli.cpf }</td>
						<td>${cli.nome }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<a class="btn btn-primary" href="cadastrar"> <span
			class="glyphicon glyphicon-plus"></span> Adicionar
		</a> 
	</div>

</body>

</html>