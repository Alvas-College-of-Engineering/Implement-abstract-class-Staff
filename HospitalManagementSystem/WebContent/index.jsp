<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Hospital Management System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="addDoctor.jsp">Add Doctor</a></li>
                <li class="nav-item"><a class="nav-link" href="addNurse.jsp">Add Nurse</a></li>
                <li class="nav-item"><a class="nav-link" href="displayStaff">View Staff</a></li>
                <li class="nav-item"><a class="nav-link" href="searchStaff">Search Staff</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-lg-8 mx-auto">
            <div class="card p-4">
                <h1 class="mb-3">Hospital Staff Management</h1>
                <p class="lead">Manage doctors and nurses using a Java-based web application with JSP, Servlets, and object-oriented principles.</p>
                <div class="row text-center mt-4">
                    <div class="col-md-4 mb-3">
                        <div class="p-4 bg-light rounded shadow-sm">
                            <h5>Add Doctor</h5>
                            <p>Register new doctors and their specialties.</p>
                            <a href="addDoctor.jsp" class="btn btn-primary btn-sm">Go</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="p-4 bg-light rounded shadow-sm">
                            <h5>Add Nurse</h5>
                            <p>Register nurses with shift and experience data.</p>
                            <a href="addNurse.jsp" class="btn btn-primary btn-sm">Go</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="p-4 bg-light rounded shadow-sm">
                            <h5>View Staff</h5>
                            <p>Browse all registered hospital staff records.</p>
                            <a href="displayStaff" class="btn btn-primary btn-sm">Go</a>
                        </div>
                    </div>
                </div>
                <p class="mt-4">Use the navigation links to add staff, view the current roster, or search by staff ID.</p>
            </div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container">&copy; 2026 Hospital Management System</div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
