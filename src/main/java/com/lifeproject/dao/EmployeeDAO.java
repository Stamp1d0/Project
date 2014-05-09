package com.lifeproject.dao;

import java.util.List;
import com.lifeproject.entity.EmployeeEntity;

public interface EmployeeDAO 
{
    public void addEmployee(EmployeeEntity employee);
    public List<EmployeeEntity> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
}