package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.User;
import com.Dao.Dao;

/**
 * 
 * Servlet implementation class BookedRoom
 */
@WebServlet("/BookedRoom")
public class BookedRoom extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			HttpSession session = request.getSession(false);
			User user = (User) session.getAttribute("User");
			System.out.println(user);
			String roomId = request.getParameter("roomid");
			int roomid = Integer.parseInt(roomId.trim());
			Dao doa = new Dao();
			int status = doa.bookedRoom(roomid, user);
			if (status > 0) {
				System.out.println("Successfully Booked");
				
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
