package com.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "EMPLOYEE")
public class Employee {

	int eid;
	String job,dept;
	double salary;
	EmployeePersonalInfo epinfo;
	
	@Id
	@GenericGenerator(name = "inc",strategy = "increment")
	@GeneratedValue(generator = "inc")
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	@Column(name="JOB")
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	@Column(name="DEPT")
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	@Column(name="SALARY")
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	
	@OneToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@JoinColumn(name="EPID")
	public EmployeePersonalInfo getEpinfo() {
		return epinfo;
	}
	public void setEpinfo(EmployeePersonalInfo epinfo) {
		this.epinfo = epinfo;
	}
	
	
}
