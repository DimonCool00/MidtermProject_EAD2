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

public class DeleteRoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long id = Long.valueOf(request.getParameter("id"));
        Connection connection = Connect.getConnection();
        String custId = null;
        Cookie ck[] = request.getCookies();

        if(ck != null){
            int  i = 0;
            while (!ck[i].getName().equals("custId")) {
                i++;
            }
            custId = ck[i].getValue();
        }

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM Roomes12 WHERE id=? ");

            preparedStatement.setLong(1, id);

            preparedStatement.executeUpdate();


            request.getRequestDispatcher("rooms.jsp").include(request,response);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
