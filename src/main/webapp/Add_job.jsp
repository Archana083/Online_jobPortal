<%@page import="org.apache.taglibs.standard.tag.common.xml.IfTag"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job</title>
<%@include file="Allcomponent/allcss.jsp"%>
</head>
<body style="background-color:#f0f1f2;">
<c:if test="${User.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

	<%@include file="Allcomponent/navbar.jsp"%>
	<div class="container">

		<div class="col-md-10 offset-md-1 mt-5">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fa-solid fa-user-group fa-3x"></i>
											<h5>Add Job</h5>
											<c:if test="${not empty succMsg }">
											<h5 class="text-center text-success">${succMsg}</h5>
											<c:remove var="succMsg"/>
											</c:if>
						</div>
						<form action="Add_job" method="post">
							<div class="form-group">
								<label>Enter Title</label> <input type="text"
									class="form-control" name="title" required>

							</div>
							<div class="form-row">

								<div class="form-group col-md-4">
									<label>Location</label> <select name="location"
										class="custom-select" id="exampleFormControlSelect1">
										<option>Choose.....</option>
										<option value="Odisha">Odisha</option>
										<option value="Jharkhand">Jharkhand</option>
										<option value="Gujrat">Gujrat</option>
										<option value="Bhubaneshwar">Bhubaneshwar</option>
										<option value="Delhi">Delhi</option>
										<option value="Banglore">Banglore</option>
										<option value="Chennai">Chennai</option>
										<option value="Hydrabad">Hydrabad</option>
										<option value="Mumbai">Mumbai</option>
										<option value="Gurugram">Gurugram</option>
									</select>
								</div>

								<div class="form-group col-md-4">
									<label>Category</label> <select name="category"
										class="custom-select" id="exampleFormControlSelect1">
										<option>Choose.....</option>
										<option value="IT">IT</option>
										<option value="Developer">Developer</option>
										<option value="Banking">Banking</option>
										<option value="Engineer">Engineer</option>
										<option value="Teacher">Teacher</option>

									</select>
								</div>

								<div class="form-group col-md-4">
									<label>Status</label> <select name="status"
										class="form-control">

										<option class="Active" value="Active">Active</option>
										<option class="Inactive" value="Inactive">Inactive</option>

									</select>
								</div>
								<div class="form-group col-md-4">
									<label>Enter Description</label>
									<textarea rows="6" cols="10" name="desc" class="form-control"></textarea>
								</div>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	

</body>
</html>