package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Bean.Room;
import com.Bean.User;
import com.Connection.ConnectionDb;

public class Dao {
	public int insert(User user) {
		int insert = 0;
		try {
			Connection con = null;
			con = ConnectionDb.get_connection();
			PreparedStatement ps = con
					.prepareStatement("insert into User_Login values(?,?,?,?,?,?,(select sysdate() from dual),?,?)");
			ps.setLong(1, 0);
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getName());
			ps.setString(5, user.getAddress());
			ps.setLong(6, user.getPhoneNumber());
			ps.setString(7, user.getEmail());
			ps.setString(8, user.getUserroles());
			insert = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return insert;
	}

	public User checkLoginUser(User user) {

		try {
			Connection con = null;
			con = ConnectionDb.get_connection();
			PreparedStatement ps = con.prepareStatement("select * from User_Login where user_name=? and password=?");
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user.setUserId(rs.getInt("id"));
				user.setUsername(rs.getString("user_name"));
				user.setName(rs.getString("password"));
				user.setAddress(rs.getString("name"));
				user.setEmail(rs.getString("address"));
				user.setPhoneNumber(rs.getLong("phone_number"));
				user.setDateOfJoin(rs.getString("date_of_joining"));

			} else {
				user = null;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public ArrayList<Room> getRoomDetails() {
		ArrayList<Room> li = new ArrayList<>();
		Room room = null;
		try {
			Connection con = null;
			con = ConnectionDb.get_connection();
			PreparedStatement ps = con.prepareStatement("select * from room  where Room_status='Not_Book'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				room = new Room();
				room.setRoomid(rs.getInt("Room_Id"));
				room.setRoomname(rs.getString("Room_Name"));
				room.setState(rs.getString("State"));
				room.setCity(rs.getString("city"));
				room.setRoomimage(rs.getString("Room_image"));
				room.setSquarefit(rs.getInt("Square_fit"));
				room.setPrice(rs.getInt("price"));
				room.setRoomview(rs.getString("Room_view"));
				room.setCreatedby(rs.getString("CreatedBy"));
				room.setRoomstatus(rs.getString("Room_status"));
				li.add(room);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return li;
	}

	public Room GetSingleDetails(int Roomid) {
		Room room = null;
		ResultSet rs = null;
		PreparedStatement ps=null;
		Connection con = null;
		try {
			con = ConnectionDb.get_connection();
			ps= con.prepareStatement("select * from Room where Room_Id=?");
			ps.setInt(1, Roomid);
			rs = ps.executeQuery();
			if (rs.next()) {
				room = new Room();
				room.setRoomid(rs.getInt("Room_Id"));
				room.setRoomname(rs.getString("Room_Name"));
				room.setState(rs.getString("State"));
				room.setCity(rs.getString("city"));
				room.setRoomimage(rs.getString("Room_image"));
				room.setSquarefit(rs.getInt("Square_fit"));
				room.setPrice(rs.getInt("price"));
				room.setRoomview(rs.getString("Room_view"));
				room.setCreatedby(rs.getString("CreatedBy"));
				room.setRoomstatus(rs.getString("Room_status"));
				room.setDiscription(rs.getString("discription"));
			}
			return room;
			// con.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) {
				rs.close();
				rs=null;
				}
				if(ps!=null) {
					ps.close();
					ps=null;
					}
				if(con!=null) {
					con.close();
					con=null;
					}
				
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return room;
	}
	public int bookedRoom(int roomid,User user) {
		int status=0;
		Connection con = null;
		PreparedStatement ps=null;
		try {
			con = ConnectionDb.get_connection();
			con.setAutoCommit(false);
			ps = con.prepareStatement("insert into booked values(?,(select SYSDATE() from dual)?,?)");
			ps.setInt(1,0);
			ps.setInt(2, roomid);
			ps.setInt(3, user.getUserId());
			status=	ps.executeUpdate();
			if(status>0) {
			changeRoomStatus(roomid);	
			}
			con.commit();
			return status;
      	}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
}
	
	public void changeRoomStatus(int roomid) throws Exception {
		try {
			Connection con = null;
			con = ConnectionDb.get_connection();
			PreparedStatement ps = con.prepareStatement("update room set Room_status='Booked' where Room_id=?");
			ps.setInt(1, roomid);
			  ps.executeUpdate();
	}
		catch(Exception e) {
			e.printStackTrace();
			throw e;
		}
}

}
