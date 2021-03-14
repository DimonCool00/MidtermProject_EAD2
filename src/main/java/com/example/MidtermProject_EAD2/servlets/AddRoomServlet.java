package com.example.MidtermProject_EAD2.servlets;

import com.example.MidtermProject_EAD2.database.Connect;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddRoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String custId = null;
        String name = request.getParameter("roomname");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String phone = request.getParameter("authornumber");
        String roomtype = request.getParameter("roomtype");
        Connection connection = Connect.getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Rooms12(roomname, description, price , phone , roomtype)  VALUES(?,?,?,?,?)");

            preparedStatement.setString(1, name);
            preparedStatement.setString(2, description);
            preparedStatement.setString(3, price);
            preparedStatement.setString(4, phone);
            preparedStatement.setString(5, roomtype);

            preparedStatement.executeUpdate();

            String message;

            message = "The Room has been  added";


            request.setAttribute("message", message);
            request.getRequestDispatcher("addroom.jsp").include(request, response);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
