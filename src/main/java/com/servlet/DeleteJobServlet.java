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
@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		JobDao dao=new JobDao(BDconnect.getconn());
		boolean f=dao.deleteJob(id);
		HttpSession session=req.getSession();

		
		if(f)
		{
			session.setAttribute("succMsg",  "Job Deleted Successfully...");
			resp.sendRedirect("Add_job.jsp");
		}
		else 
		{
			session.setAttribute("succMsg",  "Oops! Something Wrong On Server...");
		}
	}

	
}
