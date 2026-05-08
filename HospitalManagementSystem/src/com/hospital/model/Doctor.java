package com.hospital.model;

public class Doctor extends Staff {
    private String specialization;
    private String degree;

    public Doctor(String id, String name, int age, String department, double salary, String specialization, String degree) {
        super(id, name, age, department, salary);
        this.specialization = specialization;
        this.degree = degree;
    }

    public String getSpecialization() {
        return specialization;
    }

    public String getDegree() {
        return degree;
    }

    @Override
    public String displayDetails() {
        return String.format("Doctor [ID=%s, Name=%s, Age=%d, Department=%s, Salary=%.2f, Specialization=%s, Degree=%s]",
                getId(), getName(), getAge(), getDepartment(), getSalary(), specialization, degree);
    }
}
