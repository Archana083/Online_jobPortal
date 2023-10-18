
<%@page import="com.DB.BDconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<%@ include file="Allcomponent/allcss.jsp"%>
<style>
.back-img {
	background: url("Allcomponent/img/image2.jpg");
	width: 100%;
	height: 86vh;
	backround-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@ include file="Allcomponent/navbar.jsp"%>
	<%-- <%Connection conn=BDconnect.getconn();
	out.print(conn);
	%> --%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">
				<i class="fa-solid fa-book"></i>Online Job Portal
			</h1>
		</div>
	</div>
	<%@ include file="Allcomponent/footer.jsp"%>

</body>
</html>