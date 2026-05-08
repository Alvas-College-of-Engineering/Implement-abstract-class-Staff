package com.hospital.dao;

import com.hospital.model.Staff;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class HospitalDAO {
    private static final List<Staff> staffList = new ArrayList<>();

    public static void addStaff(Staff staff) {
        staffList.add(staff);
    }

    public static List<Staff> getAllStaff() {
        return Collections.unmodifiableList(staffList);
    }

    public static Staff findStaffById(String id) {
        for (Staff staff : staffList) {
            if (staff.getId().equalsIgnoreCase(id)) {
                return staff;
            }
        }
        return null;
    }
}
