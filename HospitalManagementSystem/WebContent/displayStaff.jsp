<%@ page contentType="text/html;charset=UTF-8" import="java.util.List,com.hospital.model.Staff,com.hospital.dao.HospitalDAO" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Staff</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Hospital Management System</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="addDoctor.jsp">Add Doctor</a></li>
                <li class="nav-item"><a class="nav-link" href="addNurse.jsp">Add Nurse</a></li>
                <li class="nav-item"><a class="nav-link" href="searchStaff">Search Staff</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-body">
            <h2 class="card-title mb-4">All Staff Members</h2>
            <%
                List<Staff> staffList = (List<Staff>) request.getAttribute("staffList");
                if (staffList == null) {
                    staffList = HospitalDAO.getAllStaff();
                }
            %>
            <%
                if (staffList == null || staffList.isEmpty()) {
            %>
            <div class="alert alert-info">No staff records found yet.</div>
            <%
                }
            %>
            <table class="table table-bordered align-middle">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Department</th>
                        <th>Salary</th>
                        <th>Role</th>
                        <th>Details</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    if (staffList != null && !staffList.isEmpty()) {
                        for (Staff staff : staffList) {
                            String role = staff.getClass().getSimpleName();
                %>
                    <tr>
                        <td><%= staff.getId() %></td>
                        <td><%= staff.getName() %></td>
                        <td><%= staff.getAge() %></td>
                        <td><%= staff.getDepartment() %></td>
                        <td><%= String.format("%.2f", staff.getSalary()) %></td>
                        <td><%= role %></td>
                        <td><%= staff.displayDetails() %></td>
                    </tr>
                <%  }
                    } else {
                %>
                    <tr>
                        <td colspan="7" class="text-center">No staff entries available.</td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
