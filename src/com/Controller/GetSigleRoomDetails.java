package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Room;
import com.Bean.User;
import com.Dao.Dao;

@WebServlet("/GetSigleRoomDetails")
public class GetSigleRoomDetails extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int Roomid=Integer.parseInt(request.getParameter("Roomid"));
		Dao dao=new Dao();
	Room room=dao.GetSingleDetails(Roomid);
	if(room!=null) {
		request.setAttribute("room", room);
		request.getRequestDispatcher("property-single.jsp").forward(request,response);
	}
	
	}
}
