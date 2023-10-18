
<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.BDconnect"%>
<%@page import="com.DAO.JobDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Job</title>
<%@include file="Allcomponent/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">

<c:if test="${User.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
	<%@include file="Allcomponent/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Job</h5>
				
			<%	JobDao dao=new JobDao(BDconnect.getconn());
				List<Jobs> list=dao.getJob();
				for(Jobs j:list)
				{%>
					
							<div class="card mt-2 p-4">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fa-solid fa-clipboard fa-2x"></i>
						</div>
						
					</div>
					<h6><%=j.getTitle() %></h6>
					<p><%=j.getDescription() %></p>
					<br>
					<div class="form-row">
						<div class="form-group col-md-4">
							<input type="text" class="form-control form-control-sm"
								value="<%=j.getLocation() %>" readonly>
						</div>
						<div class="form-group col-md-4">
							<input type="text" class="form-control form-control-sm"
								value="<%=j.getCategory() %>" readonly>
						</div>
						<div class="form-group col-md-4">
							<input type="text" class="form-control form-control-sm"
								value="<%=j.getStatus() %>" readonly>
								
						</div>
					</div>
					<h6>Publish Date:<%=j.getPdata().toString() %>  </h6>
					<div class="text-center">
						<a href="Edit.jsp?id=<%=j.getId()%>" class="btn btn-sm bg-success text-white">Edit</a>
                        <a href="delete?id=<%=j.getId() %>" class="btn btn-sm bg-danger text-white">Delete</a>
                         
					</div>
				</div>
						
								
				<%}
				%>
						
				
						
						
						
						
				</div>
			</div>
		</div>
	

</body>
</html>