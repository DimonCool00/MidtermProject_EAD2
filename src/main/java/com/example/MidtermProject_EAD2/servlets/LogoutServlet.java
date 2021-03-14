package com.example.MidtermProject_EAD2.servlets;

import javax.servlet.http.*;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;

public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(false);
        // session.setAttribute("user", null);
        session.removeAttribute("userr");
        session.getMaxInactiveInterval();
        request.getRequestDispatcher("index.jsp").include(request,response);
    }
}
