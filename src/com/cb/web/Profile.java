package com.cb.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cb.dao.UserDAO;
import com.cb.dto.User;

@WebServlet("/Profile")
public class Profile extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
		String fullName = request.getParameter("fullName");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String bio = request.getParameter("bio");
		
		System.out.println(userId);
		System.out.println(fullName);
		System.out.println(userName);
		System.out.println(email);
		System.out.println(password);
		System.out.println(bio);
		
		UserDAO udao = new UserDAO();
		int x = udao.editEntry(userId, fullName, userName, email, password);
		UserDAO userdao = new UserDAO();
		User user = userdao.checkUser(email, password);
		HttpSession session = request.getSession();
		session.setAttribute("loggedUserName", user.getUserName());
		session.setAttribute("loggedUserId", user.getUserId());
		session.setAttribute("loggedUserFname", user.getFullName());
		session.setAttribute("loggedUserEmail", user.getEmail());
		session.setAttribute("loggedUserPassword", user.getPassword());
		session.setAttribute("bio", bio);
		
		
		if(x != 0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Profile.jsp");
			dispatcher.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
