package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.Room;
import com.Bean.User;
import com.Dao.Dao;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user=null;
		try {
		String	User_name=request.getParameter("name");
		String	User_password=request.getParameter("password");
		 user=new User();
		user.setUsername(User_name);
		user.setPassword(User_password);
		Dao dao=new Dao();
		user=dao.checkLoginUser(user);
		if(user!=null) {
		   HttpSession session= request.getSession();
		  ArrayList<Room> room= dao.getRoomDetails();
		   session.setAttribute("User",user);
		   request.setAttribute("room", room);
		   request.getRequestDispatcher("Home.jsp").forward(request, response);
		}
		
		else {
			request.setAttribute("error", "usename password not match");
			 request.getRequestDispatcher("Login.jsp").include(request, response);;
		}
	} catch (Exception e) {
		e.printStackTrace();
	} 
	}
}
