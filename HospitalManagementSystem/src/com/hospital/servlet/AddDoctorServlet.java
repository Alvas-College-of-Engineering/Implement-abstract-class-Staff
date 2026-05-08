package com.hospital.servlet;

import com.hospital.dao.HospitalDAO;
import com.hospital.model.Doctor;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddDoctorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String department = request.getParameter("department");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String specialization = request.getParameter("specialization");
        String degree = request.getParameter("degree");

        Doctor doctor = new Doctor(id, name, age, department, salary, specialization, degree);
        HospitalDAO.addStaff(doctor);

        response.sendRedirect(request.getContextPath() + "/displayStaff");
    }
}
