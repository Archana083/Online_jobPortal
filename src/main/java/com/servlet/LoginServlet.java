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
@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("em");
		String pass=req.getParameter("ps");
		
		
		User u=new User();
		
		HttpSession session=req.getSession();
		if("archana@gmail.com".equals(email) && "123".equals(pass))
		{
			session.setAttribute("User", u);
			u.setRole("admin");
			resp.sendRedirect("admin.jsp");
			
		}
		else 
		{
			UserDao dao=new UserDao(BDconnect.getconn());
			User user=dao.login(email, pass);
			
			if(user!=null)
			{
				session.setAttribute("User",user);
				resp.sendRedirect("home.jsp");
			}
			else 
			{session.setAttribute("succMsg","Oops! Wrong password and Email");
			resp.sendRedirect("login.jsp");
				
			}
			
			
		}
	}

	
}
