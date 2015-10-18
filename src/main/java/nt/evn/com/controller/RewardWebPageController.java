package nt.evn.com.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nt.evn.com.entities.Department;
import nt.evn.com.entities.Employee;
import nt.evn.com.entities.RewardFile;
import nt.evn.com.model.RewardModel;
import nt.evn.com.service.DepartmentService;
import nt.evn.com.service.EmployeeService;
import nt.evn.com.service.RewardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class RewardWebPageController {

    @Autowired
    private DepartmentService departmentService;

    @Autowired
    private EmployeeService   employeeService;

    @Autowired
    private RewardService     rewardService;

    @RequestMapping(method = RequestMethod.GET)
    public String handleGet(ModelMap model) {
        List<Department> departments = departmentService.obtainAll();
        model.addAttribute("departments", departments);
        return "index";
    }

    @RequestMapping(value = "/department", method = RequestMethod.GET)
    public String departmentListing(ModelMap model) {
        List<Department> departments = departmentService.obtainAll();
        model.addAttribute("departments", departments);
        return "department-list";
    }

    @RequestMapping(value = "/employee-list", method = RequestMethod.GET)
    public String employeeListing(ModelMap model) {
        List<Employee> employees = employeeService.obtainAll();
        List<Department> departments = departmentService.obtainAll();
        model.addAttribute("departments", departments);
        model.addAttribute("employees", employees);
        return "employee-list";
    }

    @RequestMapping(value = "/employee", method = RequestMethod.GET)
    public ModelAndView employeeDetails(@RequestParam("id") Integer empId) {
        ModelAndView mv = new ModelAndView("employee-details");
        Employee employee = employeeService.obtailEmployeeDetails(empId);
        mv.addObject("employee", employee);
        return mv;
    }

    @RequestMapping(value = "ajax/employee/list", method = RequestMethod.GET,
            produces = "application/json")
    @ResponseBody
    public List<Employee> ajaxEmployeeListing() {
        return employeeService.obtainAll();
    }

    @RequestMapping(value = "ajax/employee/reward/list", method = RequestMethod.GET,
            produces = "application/json")
    @ResponseBody
    public List<RewardModel> ajaxEmployeeRewardListing(@RequestParam("id") Integer empId) {
        return rewardService.obtainEmployeeReward(empId);
    }

    @RequestMapping(value = "ajax/employee/reward/save", method = RequestMethod.POST, headers = "content-type=multipart/*")
    @ResponseBody
    public List<RewardModel> saveReward(@RequestParam("rwdFile") MultipartFile file, HttpServletRequest request) {
        String rwdDte = request.getParameter("rwdDte");
        String rwdVal = request.getParameter("rwdVal");
        String rwdDcrpt = request.getParameter("rwdDcrpt");
        String subjectRwdId = request.getParameter("subjectRwdId");
        String rwdId = request.getParameter("rwdId");
        String rwdFileId = request.getParameter("rwdFileId");
        return rewardService
                .saveEmployeeReward(file, rwdDte, rwdVal, rwdDcrpt, subjectRwdId, rwdId, rwdFileId);
    }

    @RequestMapping(value = "ajax/employee/addOrUpdate", method = RequestMethod.POST,
            produces = "application/json", consumes = "application/json",
            headers = "content-type=application/x-www-form-urlencoded")
    @ResponseBody
    public List<Employee> ajaxAddEmployee(@RequestBody Employee employee) {
        return employeeService.addOrUpdateEmployees(employee);
    }

    @RequestMapping(value = "ajax/employee/remove/{id}/**", produces = "application/json")
    @ResponseBody
    public List<Employee> removeEmployee(@PathVariable("id") Integer empId) {
        return employeeService.removeEmployees(empId);
    }

    @RequestMapping(value = "ajax/employee-reward/download/{rewardId}/**",
            produces = "application/json")
    @ResponseBody
    public void downloadRewardFile(@PathVariable("rewardId") Integer rewardId,
            HttpServletResponse response) {
        RewardFile rewardFile = rewardService.obtainRewardById(rewardId);
        try {
            response.setHeader("Content-Disposition",
                    "inline;filename=\"" + rewardFile.getRwdFileName() + "\"");
            OutputStream out = response.getOutputStream();
            out.write(rewardFile.getRwdFileData());
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
