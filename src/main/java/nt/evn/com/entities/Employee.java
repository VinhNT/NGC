package nt.evn.com.entities;

// Generated Apr 18, 2015 2:54:07 PM by Hibernate Tools 3.6.0

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Employee generated by hbm2java
 */
@Entity
@Table(name = "employee", catalog = "evn_reward")
public class Employee implements java.io.Serializable {

    private static final long serialVersionUID = 3842499546941037068L;
    private Integer           empId;
    private String            dmntId;
    private String            empNme;
    private String            empRndr;
    private String            empAddr;
    private String            empTel;
    private String            empClpne;
    private String            empEml;

    public Employee() {}

    public Employee(String dmntId, String empNme, String empRndr) {
        this.dmntId = dmntId;
        this.empNme = empNme;
        this.empRndr = empRndr;
    }

    public Employee(String dmntId, String empNme, String empRndr, String empAddr, String empTel,
            String empClpne, String empEml) {
        this.dmntId = dmntId;
        this.empNme = empNme;
        this.empRndr = empRndr;
        this.empAddr = empAddr;
        this.empTel = empTel;
        this.empClpne = empClpne;
        this.empEml = empEml;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "emp_id", unique = true, nullable = false)
    public Integer getEmpId() {
        return this.empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    @Column(name = "dmnt_id", nullable = false, length = 15)
    public String getDmntId() {
        return this.dmntId;
    }

    public void setDmntId(String dmntId) {
        this.dmntId = dmntId;
    }

    @Column(name = "emp_nme", nullable = false, length = 200)
    public String getEmpNme() {
        return this.empNme;
    }

    public void setEmpNme(String empNme) {
        this.empNme = empNme;
    }

    @Column(name = "emp_rndr", nullable = false, length = 1)
    public String getEmpRndr() {
        return this.empRndr;
    }

    public void setEmpRndr(String empRndr) {
        this.empRndr = empRndr;
    }

    @Column(name = "emp_addr", length = 350)
    public String getEmpAddr() {
        return this.empAddr;
    }

    public void setEmpAddr(String empAddr) {
        this.empAddr = empAddr;
    }

    @Column(name = "emp_tel", length = 15)
    public String getEmpTel() {
        return this.empTel;
    }

    public void setEmpTel(String empTel) {
        this.empTel = empTel;
    }

    @Column(name = "emp_clpne", length = 15)
    public String getEmpClpne() {
        return this.empClpne;
    }

    public void setEmpClpne(String empClpne) {
        this.empClpne = empClpne;
    }

    @Column(name = "emp_eml", length = 150)
    public String getEmpEml() {
        return this.empEml;
    }

    public void setEmpEml(String empEml) {
        this.empEml = empEml;
    }

}
