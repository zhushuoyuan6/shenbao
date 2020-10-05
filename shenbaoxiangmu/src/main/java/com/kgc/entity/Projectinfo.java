package com.kgc.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Projectinfo {
    private Integer id;

    private String projectname;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startdate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enddate;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProjectname() {
        return projectname;
    }

    public void setProjectname(String projectname) {
        this.projectname = projectname == null ? null : projectname.trim();
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}