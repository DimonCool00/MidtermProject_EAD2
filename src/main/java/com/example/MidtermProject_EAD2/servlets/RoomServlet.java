package com.example.MidtermProject_EAD2.servlets;

import com.example.MidtermProject_EAD2.database.Connect;
import com.example.MidtermProject_EAD2.models.Room;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Room> roomList = new ArrayList<>();
        Connection connection = Connect.getConnection();

        String userId = null;
        Cookie ck[] = request.getCookies();

        if (ck != null) {
            int index = 0;
            while (!ck[index].getName().equals("userId")) {
                index++;
            }
            userId = ck[index].getValue();
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Rooms12 ORDER BY id");


            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Room room = new Room();

                room.setRoomName(resultSet.getString("roomname"));
                room.setDescription(resultSet.getString("description"));
                room.setRoomPrice(resultSet.getString("price"));
                room.setPhoneNum(resultSet.getString("phone"));
                room.setRoomType(resultSet.getString("roomtype"));

                roomList.add(room);
            }

            request.setAttribute("RoomList", roomList);
            request.getRequestDispatcher("rooms.jsp").include(request, response);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
