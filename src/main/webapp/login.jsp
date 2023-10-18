  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@ include file="Allcomponent/allcss.jsp"%>

</head>
<body>
	<%@ include file="Allcomponent/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">

				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa-solid fa-user-plus fa-2x"></i>
							<h5>Login Page</h5>
						</div>
						 <c:if test="${not empty succMsg}">
						<h5 class="text-danger text-center" > ${succMsg}</h5>
						<c:remove var="succMsg"/>
						</c:if> 

						<form action="login" method="post">


							<div class="form-group">

								<label>Email address</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="em">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="ps">
							</div>

							<button type="submit" class="btn btn-primary badge-pill btn-block">
								Login
							</button>
						</form>
					</div>

				</div>
			</div>

		</div>
	</div>


</body>
</html>