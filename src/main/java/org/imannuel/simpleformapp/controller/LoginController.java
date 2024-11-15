package org.imannuel.simpleformapp.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.imannuel.simpleformapp.dao.AuthDao;
import org.imannuel.simpleformapp.model.Student;

import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private AuthDao authDao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        authDao = new AuthDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("./login.jsp");
        requestDispatcher.include(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        String password = req.getParameter("password");

        try {
            Student student = authDao.login(userId, password);

            if (student != null) {
                HttpSession session = req.getSession();
                session.setAttribute("student", student);
                resp.sendRedirect("/home");
            } else {
                String message = "Invalid credentials, Please try again.";
                req.setAttribute("message", message);
                RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
                dispatcher.forward(req, resp);
            }
        } catch (Exception e) {
            throw new ServletException("Error during login", e);
        }
    }
}
