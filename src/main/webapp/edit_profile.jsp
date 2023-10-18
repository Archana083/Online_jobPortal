<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="Allcomponent/allcss.jsp"%>

</head>
<body>

<%@ include file="Allcomponent/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-4">

			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa-solid fa-user-plus fa-2x"></i>
							<h5>Edit Profile</h5>
						</div>
						<c:if test="${not empty succMsg }">
						<h5 class="text-center text-success"> ${succMsg}</h5>
						<c:remove var="succMsg"/>
						</c:if>
						
						<form action="update_profile" method="post">
							<div class="form-group">
                                 <input type="hidden" name="id" value="${User.id }">
                                 
								<label>Enter Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="nm" value="${User.name}">

							</div>
							<div class="form-group">

								<label>Enter Qualification</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="qf" value="${User.qualification}">

							</div>

							<div class="form-group">

								<label>Email address</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="em" value="${User.email}">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="ps" value="${User.password}">
							</div>

							<button type="submit" class="btn btn-primary btn-block">
							Update
							</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>