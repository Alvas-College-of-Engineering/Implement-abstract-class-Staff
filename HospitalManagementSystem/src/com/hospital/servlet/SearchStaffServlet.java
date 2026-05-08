package com.hospital.servlet;

import com.hospital.dao.HospitalDAO;
import com.hospital.model.Staff;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SearchStaffServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        if (id != null && !id.trim().isEmpty()) {
            Staff staff = HospitalDAO.findStaffById(id.trim());
            request.setAttribute("searchResult", staff);
            request.setAttribute("searchId", id.trim());
        }
        request.getRequestDispatcher("searchStaff.jsp").forward(request, response);
    }
}
