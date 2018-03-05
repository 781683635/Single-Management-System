package com.workform.model;

public class Worker {
	private Integer id;
	private String  name;	
	private String  worker_pwd;
	private String  role_name;
	private String  worker_mobile; 
	private String  worker_email;
	private String  worker_about;
	private String  worker_img;
	private String type="2";
	public Worker() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWorker_pwd() {
		return worker_pwd;
	}
	public void setWorker_pwd(String worker_pwd) {
		this.worker_pwd = worker_pwd;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getWorker_mobile() {
		return worker_mobile;
	}
	public void setWorker_mobile(String worker_mobile) {
		this.worker_mobile = worker_mobile;
	}
	public String getWorker_email() {
		return worker_email;
	}
	public void setWorker_email(String worker_email) {
		this.worker_email = worker_email;
	}
	public String getWorker_about() {
		return worker_about;
	}
	public void setWorker_about(String worker_about) {
		this.worker_about = worker_about;
	}
	public String getWorker_img() {
		return worker_img;
	}
	public void setWorker_img(String worker_img) {
		this.worker_img = worker_img;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
