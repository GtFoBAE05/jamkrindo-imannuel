package org.imannuel.simpleformapp.model;

public class Student {
    private String studentId;
    private String studentName;
    private String password;
    private Grade grade;

    public Student() {
    }

    public Student(String studentId, String studentName, String password, Grade grade) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.password = password;
        this.grade = grade;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }
}
