package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.User;
import com.Dao.Dao;

@WebServlet("/Controller")
public class Controller extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String	Username=request.getParameter("username");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String address=request.getParameter("Address");
		long phonenumber=Long.parseLong(request.getParameter("phone"));
		String email=request.getParameter("mail");
		String Roles=request.getParameter("roles");
		
		User bean=new User();
		bean.setUsername(Username);
		bean.setPassword(password);
		bean.setName(name);
		bean.setAddress(address);
		bean.setPhoneNumber(phonenumber);
		bean.setEmail(email);
		bean.setUserroles(Roles);
		
		Dao dao=new Dao();
		int ins=dao.insert(bean);
		if(ins>0) {
			request.getRequestDispatcher("Login.jsp").forward(request,response);
		}
	}
}
