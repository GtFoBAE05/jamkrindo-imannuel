package org.imannuel.simpleformapp.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.imannuel.simpleformapp.dao.DepartmentDao;
import org.imannuel.simpleformapp.model.Department;

import java.io.IOException;
import java.util.List;

@WebServlet("/")
public class HomeController extends HttpServlet {
    private DepartmentDao departmentDao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        departmentDao = new DepartmentDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("student") == null) {
            resp.sendRedirect("login");
            return;
        }

        Object student = session.getAttribute("student");
        req.setAttribute("student", student);

        List<Department> departments = departmentDao.getAllDepartment();
        req.setAttribute("listGrades", departments);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/home.jsp");
        dispatcher.forward(req, resp);
    }
}
