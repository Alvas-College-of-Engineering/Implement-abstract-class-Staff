<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Nurse</title>
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
                <li class="nav-item"><a class="nav-link" href="displayStaff">View Staff</a></li>
                <li class="nav-item"><a class="nav-link" href="searchStaff">Search Staff</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-body">
            <h2 class="card-title mb-4">Add Nurse</h2>
            <form action="<%= request.getContextPath() %>/addNurse" method="post">
                <div class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label">Nurse ID</label>
                        <input type="text" name="id" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" required>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Age</label>
                        <input type="number" name="age" class="form-control" min="18" required>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Department</label>
                        <input type="text" name="department" class="form-control" required>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Salary</label>
                        <input type="number" step="0.01" name="salary" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Shift</label>
                        <select name="shift" class="form-select" required>
                            <option value="">Choose shift</option>
                            <option value="Morning">Morning</option>
                            <option value="Evening">Evening</option>
                            <option value="Night">Night</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Experience (years)</label>
                        <input type="number" name="experience" class="form-control" min="0" required>
                    </div>
                </div>
                <div class="mt-4">
                    <button type="submit" class="btn btn-success">Save Nurse</button>
                    <a href="index.jsp" class="btn btn-secondary ms-2">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
