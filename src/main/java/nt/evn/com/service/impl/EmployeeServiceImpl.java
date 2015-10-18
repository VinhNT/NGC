package nt.evn.com.service.impl;

import java.util.List;

import nt.evn.com.dao.DepartmentRepository;
import nt.evn.com.dao.EmployeeRepository;
import nt.evn.com.dao.RewardRepository;
import nt.evn.com.entities.Employee;
import nt.evn.com.service.EmployeeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepository   employeeRepository;

    @Autowired
    private RewardRepository     employeeRewardRepository;

    @Autowired
    private DepartmentRepository departmentRepository;

    @Override
    public List<Employee> obtainAll() {
        return (List<Employee>) employeeRepository.findAll();
    }

    @Override
    public List<Employee> addOrUpdateEmployees(Employee employee) {
        if (employee.getEmpId() != null) {
            employeeRepository.save(employee);
        } else {
            Employee oldEmployee = employeeRepository.findByEmpId(employee.getEmpId());
            if (oldEmployee != null) {
                oldEmployee.setDmntId(employee.getDmntId());
                oldEmployee.setEmpAddr(employee.getEmpAddr());
                oldEmployee.setEmpClpne(employee.getEmpClpne());
                oldEmployee.setEmpEml(employee.getEmpEml());
                oldEmployee.setEmpNme(employee.getEmpNme());
                oldEmployee.setEmpRndr(employee.getEmpRndr());
                oldEmployee.setEmpTel(employee.getEmpTel());
                employeeRepository.save(oldEmployee);
            } else {
                employeeRepository.save(employee);
            }
        }
        return (List<Employee>) employeeRepository.findAll();
    }

    @Override
    public List<Employee> removeEmployees(Integer employeeId) {
        employeeRepository.deleteByEmpId(employeeId);
        return (List<Employee>) employeeRepository.findAll();
    }

    @Override
    public Employee obtailEmployeeDetails(Integer empId) {
        return employeeRepository.findByEmpId(empId);
    }

}
