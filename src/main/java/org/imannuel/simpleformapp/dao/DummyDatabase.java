package org.imannuel.simpleformapp.dao;

import org.imannuel.simpleformapp.model.Department;
import org.imannuel.simpleformapp.model.Grade;
import org.imannuel.simpleformapp.model.Student;

import java.util.List;

public class DummyDatabase {
    public static List<Student> students = List.of(
            new Student("S1", "Student 1", "password", new Grade(35)),
            new Student("S2", "Student 2", "password", new Grade(70)),
            new Student("S3", "Student 3", "password", new Grade(60)),
            new Student("S4", "Student 4", "password", new Grade(90)),
            new Student("S5", "Student 5", "password", new Grade(30)),
            new Student("S6", "Student 6", "password", new Grade(32)),
            new Student("S7", "Student 7", "password", new Grade(70)),
            new Student("S8", "Student 8", "password", new Grade(20))
    );

    public static List<Department> departments = List.of(
            new Department(1, "Department 1", List.of(
                    students.get(0), students.get(1), students.get(2), students.get(3)
            )), new Department(2, "Department 2", List.of(
                    students.get(4)
            )), new Department(3, "Department 3", List.of(
                    students.get(5), students.get(6), students.get(7)
            ))
    );
}
