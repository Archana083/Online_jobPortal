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
@WebServlet("/Edit_job")
public class UpdateJobServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String title=req.getParameter("title");
		String location=req.getParameter("location");
		String category=req.getParameter("category");
		String status=req.getParameter("status");
		String description=req.getParameter("desc");
		
		Jobs j=new Jobs();
		j.setCategory(category);
		j.setDescription(description);
		j.setId(id);
		j.setLocation(location);
		j.setStatus(status);
		j.setTitle(title);
		
		JobDao dao=new JobDao(BDconnect.getconn());
		boolean f=dao.updateJob(j);
		HttpSession session=req.getSession();
		if(f)
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
