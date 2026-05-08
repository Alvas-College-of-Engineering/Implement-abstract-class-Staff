package com.hospital.servlet;

import com.hospital.dao.HospitalDAO;
import com.hospital.model.Nurse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddNurseServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String department = request.getParameter("department");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String shift = request.getParameter("shift");
        int experience = Integer.parseInt(request.getParameter("experience"));

        Nurse nurse = new Nurse(id, name, age, department, salary, shift, experience);
        HospitalDAO.addStaff(nurse);

        response.sendRedirect(request.getContextPath() + "/displayStaff");
    }
}
