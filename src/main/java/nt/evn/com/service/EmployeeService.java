package nt.evn.com.service;

import java.util.List;

import nt.evn.com.entities.Employee;

public interface EmployeeService {
    List<Employee> obtainAll();

    List<Employee> addOrUpdateEmployees(Employee employee);

    List<Employee> removeEmployees(Integer empId);

    Employee obtailEmployeeDetails(Integer empId);
}
