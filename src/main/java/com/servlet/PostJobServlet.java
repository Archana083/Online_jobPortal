package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.JobDao;
import com.DB.BDconnect;
import com.entity.Jobs;
@WebServlet("/Add_job")
public class PostJobServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String title=req.getParameter("title");
		String status=req.getParameter("status");
		String description=req.getParameter("desc");
		String location=req.getParameter("location");
		String category=req.getParameter("category");
		
		Jobs j=new Jobs();
		j.setCategory(category);
		j.setDescription(description);
		j.setLocation(location);
		j.setTitle(title);
		j.setStatus(status);
		JobDao dao=new JobDao(BDconnect.getconn());
		boolean b=dao.addJob(j);
		HttpSession session=req.getSession();
		if(b)
		{
			session.setAttribute("succMsg",  "Job Posted Successfully...");
			resp.sendRedirect("Add_job.jsp");
		}
		else 
		{
			session.setAttribute("succMsg",  "Oops! Something Wrong On Server...");
		}
				
	}

	
}
