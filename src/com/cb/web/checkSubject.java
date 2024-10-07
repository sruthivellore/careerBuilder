package com.cb.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cb.dao.UserDAO;

@WebServlet("/checkSubject")
public class checkSubject extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TreeMap<Integer, Integer> map = new TreeMap(Collections.reverseOrder());
		int i = 0;
		
		if(request.getParameterValues("ch1") != null){
			map.put(Integer.parseInt(request.getParameter("pin1")), 101);			
			i++;
		}
		
		if(request.getParameterValues("ch2") != null){
			map.put(Integer.parseInt(request.getParameter("pin2")), 102);			
			i++;
		}	
		if(request.getParameterValues("ch3") != null){
			map.put(Integer.parseInt(request.getParameter("pin4")), 104);			
			i++;
		}	
		if(request.getParameterValues("ch4") != null){
			map.put(Integer.parseInt(request.getParameter("pin5")), 105);			
			i++;
		}
		if(request.getParameterValues("ch5") != null){
			map.put(Integer.parseInt(request.getParameter("pin6")), 106);			
			i++;
		}
		if(request.getParameterValues("ch6") != null){
			map.put(Integer.parseInt(request.getParameter("pin3")), 103);			
			i++;
		}
		if(request.getParameterValues("ch7") != null){
			map.put(Integer.parseInt(request.getParameter("pin7")), 107);			
			i++;
		}
		
		ArrayList<ArrayList<String>> branches = new ArrayList<ArrayList<String>>();
		ArrayList<ArrayList<String>> institutes = new ArrayList<ArrayList<String>>();
		ArrayList<ArrayList<String>> subs = new ArrayList<ArrayList<String>>();
		ArrayList<ArrayList<String>> links = new ArrayList<ArrayList<String>>();
		
		ArrayList<String> subList = new ArrayList<>();
		
		UserDAO userdao = new UserDAO();
		PrintWriter out = response.getWriter();
		
		Set set = map.entrySet();
		Iterator iter = set.iterator();
		while(iter.hasNext()) {
            Map.Entry me = (Map.Entry)iter.next();
            subList.add(userdao.retrieveSub(Integer.parseInt(me.getValue().toString())));
            branches.add(userdao.retrieveBranch((userdao.retrieveSub(Integer.parseInt(me.getValue().toString())))));
            institutes.add(userdao.retrieveInstitute((userdao.retrieveSub(Integer.parseInt(me.getValue().toString())))));
            subs.add(userdao.getSubs((userdao.retrieveSub(Integer.parseInt(me.getValue().toString())))));
            links.add(userdao.getLinks((userdao.retrieveSub(Integer.parseInt(me.getValue().toString())))));
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Result.jsp");
		request.setAttribute("branches", branches);
		request.setAttribute("subList", subList);
		request.setAttribute("subs", subs);
		request.setAttribute("links", links);
		request.setAttribute("institutes", institutes);
		dispatcher.include(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}
