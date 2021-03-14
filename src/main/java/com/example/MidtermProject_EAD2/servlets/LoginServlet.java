package com.example.MidtermProject_EAD2.servlets;

import com.example.MidtermProject_EAD2.database.Connect;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String userName = null;
        String userPassword = null;
        Long userId = null;
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter out=response.getWriter();
        Connection connection = Connect.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Customers WHERE name=? and password=?");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();


            while (resultSet.next()) {

                userId = resultSet.getLong("id");
                userName = resultSet.getString("name");
                userPassword = resultSet.getString("password");


            }


            if (name.equals(userName) && password.equals(userPassword)) {
                Cookie ck = new Cookie("userId", String.valueOf(userId));
                ck.setMaxAge(60 * 30);
                response.addCookie(ck);

                request.getRequestDispatcher("succeslog.jsp").include(request, response);
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
                requestDispatcher.include(request, response);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        /*if(username.equals("Dmitry"))
        {
            RequestDispatcher req = request.getRequestDispatcher("login.jsp");
            req.include(request, response);
        }
        else
        {
            /*RequestDispatcher req = request.getRequestDispatcher("succeslog.jsp");
            req.forward(request, response);
            out.print("You are successfully logged in!");
            out.print("<br>Welcome, "+ username);
            Cookie ck=new Cookie("username",username);
            response.addCookie(ck);
            HttpSession session = request.getSession();
            session.setAttribute("user", "Dmitry");
            session.setMaxInactiveInterval(30*60);
            Cookie userName = new Cookie("Dmitry", username);
            userName.setMaxAge(30*60);
            response.addCookie(userName);
            response.sendRedirect("succeslog.jsp");
        }*/
    }
}
