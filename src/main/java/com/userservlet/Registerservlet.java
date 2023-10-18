package com.userservlet;

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
@WebServlet("/register")
public class Registerservlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("nm");
		String quali=req.getParameter("qf");
		String email=req.getParameter("em");
		String pass=req.getParameter("ps");
		
		User u=new User(name,email,pass,quali,"User");
		 UserDao dao=new UserDao(BDconnect.getconn());
		boolean f= dao.addUser(u);
		 HttpSession session=req.getSession();
			if(f)
			{
				session.setAttribute("succMsg", "Registrated SuccessFully.....");
				
				resp.sendRedirect("signup.jsp");
				
			}
			else 
			{
				session.setAttribute("succMsg","Oops! Wrong password and Email");
				resp.sendRedirect("signup.jsp");
			}
	}

	
}
