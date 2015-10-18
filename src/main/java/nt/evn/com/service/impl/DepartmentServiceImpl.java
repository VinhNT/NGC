package nt.evn.com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nt.evn.com.dao.DepartmentRepository;
import nt.evn.com.entities.Department;
import nt.evn.com.service.DepartmentService;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    DepartmentRepository departmentRepository;

    @Override
    public List<Department> obtainAll() {
        return (List<Department>) departmentRepository.findAll();
    }

}
