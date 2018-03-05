package com.workform.model;

import java.util.Date;

public class Record {
	private Integer id;
	private Integer workid;
	private String  workename;
	private Integer state;
	private Date    time;
	
	public Record() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getWorkid() {
		return workid;
	}
	public void setWorkid(Integer workid) {
		this.workid = workid;
	}
	public String getWorkename() {
		return workename;
	}
	public void setWorkename(String workename) {
		this.workename = workename;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
	
}
