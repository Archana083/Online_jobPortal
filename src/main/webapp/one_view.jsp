    
    
    <%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.BDconnect"%>
<%@page import="com.DAO.JobDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>One View Page</title>
<%@include file="Allcomponent/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="Allcomponent/navbar.jsp"%>

<c:if test="${empty User }">
<c:redirect url="login.jsp"/>
</c:if>
     <div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">Job</h5>

				
				
				
				 <%	int id=Integer.parseInt(request.getParameter("id"));							
				 JobDao dao=new JobDao(BDconnect.getconn());
				Jobs j=dao.getJobById(id);
			%> 
					<div class="card mt-5 p-4">
					<div class="card-body ps-5">
						<div class="text-center text-primary">
							<i class="fa-solid fa-clipboard fa-2x"></i>
						</div>

					</div>
					<h6><%=j.getTitle() %></h6>
					<%if(j.getDescription().length()>0 && j.getDescription().length()<120)
					{  %>
					
					<p><%=j.getDescription() %></p>
					<%}else 
					{%>
					<p><%=j.getDescription().substring(0, 120) %>...</p>
					<%} %>
					<br>
					<div class="form-row">

						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Location:<%=j.getLocation() %>" readonly>
						</div>
						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Category:<%=j.getCategory() %>" readonly>

						</div>
					</div>
					<h6>Publish Date:<%=j.getPdata().toString() %></h6>

					
				</div>
					
				

				



			</div>

		</div>
	</div>



</body>
</html>