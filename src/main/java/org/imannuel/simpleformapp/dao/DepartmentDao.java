package org.imannuel.simpleformapp.dao;

import org.imannuel.simpleformapp.model.Department;

import java.util.List;

public class DepartmentDao {
    public List<Department> getAllDepartment(){
        return DummyDatabase.departments;
    }
}
