
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
<%@include file="Allcomponent/allcss.jsp"%>
<style>
.back-img {
	background: url("Allcomponent/img/admin.webp");
	width: 100%;
	height: 90vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
<c:if test="${User.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

	<%@include file="Allcomponent/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">Welcome Admin</h1>
		</div>
	</div>
	<%@include file="Allcomponent/footer.jsp"%>

</body>
</html>