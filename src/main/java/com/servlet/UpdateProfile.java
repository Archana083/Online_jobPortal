package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDao;
import com.DB.BDconnect;
import com.entity.User;
@WebServlet("/update_profile")
public class UpdateProfile extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		String name=req.getParameter("nm");
		String quali=req.getParameter("qf");
		String email=req.getParameter("em");
		String pass=req.getParameter("ps");
		
		UserDao dao=new UserDao(BDconnect.getconn());
		User u=new User();
		u.setEmail(email);
		u.setId(id);
		u.setName(name);
		u.setPassword(pass);
		u.setQualification(quali);
		
		boolean f=dao.updateuser(u);
		HttpSession session=req.getSession();
				
				
		if(f)
		{
			session.setAttribute("succMsg",  "Profile Updated...");
			resp.sendRedirect("home.jsp");
		}
		else 
		{
			session.setAttribute("succMsg",  "Oops! Something Wrong On Server...");
			resp.sendRedirect("home.jsp");
		}
	}

	
}
