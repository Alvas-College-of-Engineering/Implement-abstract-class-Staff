# Hospital Management System

A Java web application for managing hospital staff using JSP, Servlets, and core OOP concepts.

## Project Structure

- `src/` - Java source files
  - `com.hospital.model` - `Staff`, `Doctor`, `Nurse`
  - `com.hospital.dao` - `HospitalDAO`
  - `com.hospital.servlet` - `AddDoctorServlet`, `AddNurseServlet`, `DisplayStaffServlet`, `SearchStaffServlet`
- `WebContent/` - JSP UI pages
- `WEB-INF/web.xml` - servlet mappings
- `CSS/style.css` - custom styling
- `pom.xml` - Maven configuration for `war` packaging

## How to Run

### In Eclipse
1. Import the project as an existing Maven project or a Dynamic Web Project.
2. Add Apache Tomcat 9/10 as the target runtime.
3. Deploy the project to Tomcat.
4. Open `http://localhost:8080/HospitalManagementSystem/`.

### Using Maven
- Build: `mvn clean package`
- Deploy the generated `target/HospitalManagementSystem.war` to Tomcat.

## Features

- Abstract `Staff` class with `displayDetails()`.
- Concrete `Doctor` and `Nurse` subclasses.
- Runtime polymorphism via `List<Staff>`.
- Add and view staff records in-memory.
- Search staff by ID.
