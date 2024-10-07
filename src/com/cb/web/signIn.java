package com.cb.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cb.dao.UserDAO;
import com.cb.dto.User;

@WebServlet("/signIn")
public class signIn extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email1");
		String password = request.getParameter("password1");
		
		PrintWriter out = response.getWriter();
		
		
		
		UserDAO userdao = new UserDAO();
		User user = userdao.checkUser(email, password);
		
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loggedUserName", user.getUserName());
			session.setAttribute("loggedUserId", user.getUserId());
			session.setAttribute("loggedUserFname", user.getFullName());
			session.setAttribute("loggedUserEmail", user.getEmail());
			session.setAttribute("loggedUserPassword", user.getPassword());
			RequestDispatcher dispatcher = request.getRequestDispatcher("two.jsp");
			request.setAttribute("user", user);
		    dispatcher.forward(request, response);
		}
		
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("InvalidUser.jsp");
			dispatcher.include(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
