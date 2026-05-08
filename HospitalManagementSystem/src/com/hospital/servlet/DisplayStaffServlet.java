package com.hospital.servlet;

import com.hospital.dao.HospitalDAO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DisplayStaffServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("staffList", HospitalDAO.getAllStaff());
        request.getRequestDispatcher("displayStaff.jsp").forward(request, response);
    }
}
