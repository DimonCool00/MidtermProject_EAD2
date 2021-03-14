package com.example.MidtermProject_EAD2.servlets;

import com.example.MidtermProject_EAD2.database.Connect;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistrationServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String fullName = request.getParameter("username");
        String password = request.getParameter("password");
        String passwordrep = request.getParameter("passwordrep");
        String email = request.getParameter("email");
        String phone = request.getParameter("phonenumber");
        Connection connection = Connect.getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Customers( name, password, email, reppassword, phone)  VALUES (?,?,?,?,?)");
            preparedStatement.setString(1, fullName);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, passwordrep);
            preparedStatement.setString(5, phone);
            preparedStatement.executeUpdate();


            request.getRequestDispatcher("login.jsp").include(request, response);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
