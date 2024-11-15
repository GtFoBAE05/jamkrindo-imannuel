package org.imannuel.simpleformapp.dao;

import org.imannuel.simpleformapp.model.Student;

import java.util.Optional;

public class AuthDao {
    public Student login(String userId, String password){
        Optional<Student> student = DummyDatabase.students.stream()
                .filter(s -> s.getStudentId().equals(userId) && s.getPassword().equals(password))
                .findFirst();

        return student.orElse(null);
    }
}
