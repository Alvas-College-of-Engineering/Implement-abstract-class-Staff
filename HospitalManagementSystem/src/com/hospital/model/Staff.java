package com.hospital.model;

public abstract class Staff {
    private String id;
    private String name;
    private int age;
    private String department;
    private double salary;

    public Staff(String id, String name, int age, String department, double salary) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.department = department;
        this.salary = salary;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getDepartment() {
        return department;
    }

    public double getSalary() {
        return salary;
    }

    public abstract String displayDetails();
}
