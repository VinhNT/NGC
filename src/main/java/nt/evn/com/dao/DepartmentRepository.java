package nt.evn.com.dao;

import java.util.List;

import nt.evn.com.entities.Department;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface DepartmentRepository extends CrudRepository<Department, String> {
    List<Department> findByDmntId(String dmntId);
}
