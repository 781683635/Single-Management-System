package com.workform.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.workform.dao.CommDao;
import com.workform.model.Admin;
import com.workform.model.User;
import com.workform.model.Worker;
import com.workform.util.SessionUtil;
import com.workform.util.StringUtil;

@Controller
public class adminController {

	
	@Autowired
	CommDao commDao;
	
	/*登录时判断登录用户的类型*/
	@RequestMapping("/admin")
	public String admin(HttpServletRequest request){
		String userType = (String) request.getSession().getAttribute("userType");
		int type = Integer.parseInt(userType);
		if(type == 1){				
		return "redirect:/adminuser.do";
		}
		if(type == 2){
			return "redirect:/adminworker.do";				
		}
		if(type == 3){
			return "redirect:/adminadmin.do";				
		}
		return "login";
	}

	/*用户进入管理员页面*/
	@RequestMapping("/adminuser")
	public String adminuser(HttpServletRequest request){
		
			return "/webpage/admin/admincenter-user";
	}

	/*员工进入管理员页面*/
	@RequestMapping("/adminworker")
	public String adminworker(HttpServletRequest request){
		
			return "/webpage/admin/admincenter-user";
	}

	/*管理员进入管理员页面数据回显*/
	@RequestMapping("/adminadmin")
	public String adminadmin(HttpServletRequest request){
		
		Admin admins = (Admin) request.getSession().getAttribute("currentUser");
		Integer id = admins.getId();
		String sql = "select * from admin where id="+id;
		List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
		request.setAttribute("listMap", listMap); 
		return "/webpage/admin/admincenter-admin";
	}


	/*管理员进入自身信息修改页面数据回显*/
	@RequestMapping("/adminchangeinformation")
	public String adminchangeinformation(HttpServletRequest request){
			Admin admins = (Admin) request.getSession().getAttribute("currentUser");
			Integer id = admins.getId();
			String sql="select * from admin where id="+id;
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap);  
			return "/webpage/admin/adminchange-admin";

	}

	/*管理员修改完自身信息进行数据保存*/
	@RequestMapping("/adminsaveadmin")
	public String adminsaveadmin(HttpServletRequest request){
		Admin admins = (Admin) request.getSession().getAttribute("currentUser");
		Integer id = admins.getId();
		String roleName = request.getParameter("roleName");
		String adminMobile = request.getParameter("adminMobile");
		String sql = "UPDATE `admin` SET  role_name='"+roleName+"',admin_mobile='"+adminMobile+"'  WHERE id ="+id;
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "redirect:/admin.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	}

	/*添加新管理员*/
	@RequestMapping("/addadmin")
	public String addadmin(HttpServletRequest request){
			
			return "/webpage/admin/addadmin";
	
	}

	/*添加新管理员数据保存*/	
	@RequestMapping("/addadminsave")
	public String addadminsave(HttpServletRequest request){
		String name = request.getParameter("name");
		String adminPwd = request.getParameter("adminPwd");
		String roleName = request.getParameter("roleName");
		String adminMobile = request.getParameter("adminMobile");


		String sql = "insert INTO `admin` (name,admin_pwd,role_name,admin_mobile) VALUES('"+name+"','"+adminPwd+"','"+roleName+"','"+adminMobile+"')";
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "redirect:/admin.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	
	}

	/*添加新用户*/
	@RequestMapping("/adduser")
	public String adduser(HttpServletRequest request){
			return "/webpage/admin/adduser";
	
	}

	/*添加新用户数据保存*/	
	@RequestMapping("/addusersave")
	public String addusersave(HttpServletRequest request){
		String name = request.getParameter("name");
		String userPwd = request.getParameter("userPwd");
		String roleName = request.getParameter("roleName");
		String userMobile = request.getParameter("userMobile");
		String radio = request.getParameter("radio");
		String userEmail = request.getParameter("userEmail");
		String userAddress = request.getParameter("userAddress");
		Integer sex = Integer.parseInt(radio);

		String sql = "insert INTO `user` (name,user_pwd,role_name,user_mobile,user_sex,user_email,user_address) VALUES('"+name+"','"+userPwd+"','"+roleName+"','"+userMobile+"','"+sex+"','"+userEmail+"','"+userAddress+"')";
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "redirect:/admin.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	
	}

	/*添加新员工*/
	@RequestMapping("/addworker")
	public String addworker(HttpServletRequest request){
			return "/webpage/admin/addworker";
	}

	/*添加新员工数据保存*/	
	@RequestMapping("/addworkersave")
	public String addworkersave(HttpServletRequest request){
		String name = request.getParameter("name");
		String workerPwd = request.getParameter("workerPwd");
		String roleName = request.getParameter("roleName");
		String workerMobile = request.getParameter("workerMobile");
		String workerEmail = request.getParameter("workerEmail");
		String workAbout = request.getParameter("workAbout");

		String sql = "insert INTO `worker` (name,worker_pwd,role_name,worker_mobile,worker_email,worker_about) VALUES('"+name+"','"+workerPwd+"','"+roleName+"','"+workerMobile+"','"+workerEmail+"','"+workAbout+"')";
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "redirect:/admin.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	
	}
}
