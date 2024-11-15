package org.imannuel.simpleformapp.model;

import java.util.List;

public class Department {
    private Integer departmentId;
    private String departmentName;
    private List<Student> students;

    public Department() {
    }

    public Department(Integer departmentId, String departmentName, List<Student> students) {
        this.departmentId = departmentId;
        this.departmentName = departmentName;
        this.students = students;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }
}
