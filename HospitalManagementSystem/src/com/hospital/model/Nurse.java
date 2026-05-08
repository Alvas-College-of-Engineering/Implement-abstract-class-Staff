package com.hospital.model;

public class Nurse extends Staff {
    private String shift;
    private int experience;

    public Nurse(String id, String name, int age, String department, double salary, String shift, int experience) {
        super(id, name, age, department, salary);
        this.shift = shift;
        this.experience = experience;
    }

    public String getShift() {
        return shift;
    }

    public int getExperience() {
        return experience;
    }

    @Override
    public String displayDetails() {
        return String.format("Nurse [ID=%s, Name=%s, Age=%d, Department=%s, Salary=%.2f, Shift=%s, Experience=%d years]",
                getId(), getName(), getAge(), getDepartment(), getSalary(), shift, experience);
    }
}
