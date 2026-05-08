<%@ page contentType="text/html;charset=UTF-8" import="com.hospital.model.Staff" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Staff</title>
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
                <li class="nav-item"><a class="nav-link" href="displayStaff">View Staff</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-body">
            <h2 class="card-title mb-4">Search Staff Member</h2>
            <form action="<%= request.getContextPath() %>/searchStaff" method="get">
                <div class="row g-3 align-items-end">
                    <div class="col-md-8">
                        <label class="form-label">Enter Staff ID</label>
                        <input type="text" name="id" class="form-control" value="<%= request.getAttribute("searchId") != null ? request.getAttribute("searchId") : "" %>" required>
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-primary w-100" type="submit">Search</button>
                    </div>
                </div>
            </form>
            <div class="mt-4">
                <%
                    Staff staff = (Staff) request.getAttribute("searchResult");
                    if (staff != null) {
                %>
                <div class="alert alert-success">
                    <h5>Staff found:</h5>
                    <p><strong>ID:</strong> <%= staff.getId() %></p>
                    <p><strong>Name:</strong> <%= staff.getName() %></p>
                    <p><strong>Role:</strong> <%= staff.getClass().getSimpleName() %></p>
                    <p><strong>Details:</strong> <%= staff.displayDetails() %></p>
                </div>
                <% } else if (request.getParameter("id") != null) { %>
                <div class="alert alert-warning">No staff member found with the provided ID.</div>
                <% } %>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
