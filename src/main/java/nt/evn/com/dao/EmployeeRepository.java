package nt.evn.com.dao;

import nt.evn.com.entities.Employee;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface EmployeeRepository extends CrudRepository<Employee, String> {
    void deleteByEmpId(Integer empId);

    Employee findByEmpId(Integer empId);
}
