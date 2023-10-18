
<%@page import="java.util.ArrayList"%>
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
<title>User: View Job</title>
<%@include file="Allcomponent/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">

<c:if test="${empty User }">
<c:redirect url="login.jsp"/>
</c:if>
	<%@include file="Allcomponent/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Job</h5>
				
			<%
			String loc=request.getParameter("loc");
			String cat=request.getParameter("cat");
			String msg="";
			
				JobDao dao=new JobDao(BDconnect.getconn());
				List<Jobs> list=null;
				if("lo".equals(loc) && "ca".equals(cat))
				{
				list = new ArrayList<Jobs>();
				msg = "Job Not Available";
				}
				else if("lo".equals(loc) || "ca".equals(cat))
				{
					list = dao.getJobsOrLocANDCat(loc, cat);
				}
				else 
				{
					list = dao.getJobsAndLocANDCat(loc, cat);

				}
				if(list.isEmpty())
				{
					
				%>
				
					<h4 class="text-center text-danger">Job Not Available</h4>
					
					<%
				}
				if(list!= null)
				{
					for(Jobs j:list)
					{%>
						
					
					
					<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fa-solid fa-clipboard fa-2x"></i>
						</div>
						
					
					<h6><%=j.getTitle() %></h6>
					<p><%=j.getDescription()%></p>
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
						
					</div>
					<h6>Publish Date:<%=j.getPdata().toString() %>  </h6>
					<div class="text-center">
						<a href="one_view.jsp?id=<%=j.getId() %>" class="btn btn-sm bg-success text-white">View</a>
                        
                         
					</div>
				</div>
						
								
				
						
				
						
						
						
						
				</div>
				<%
				}
				}
					else{%>
					<h4 class="text-center text-danger"><%=msg %></h4>
						
						<%}
				%>
			</div>
		</div>
		</div>
	

</body>
</html>