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

public class UserController {

	@Autowired
	CommDao commDao;
	
	/*登录时判断登录用户的类型*/
	@RequestMapping("/usercenter")
	public String usercenter(User user,HttpServletRequest request){
		String userType = (String) request.getSession().getAttribute("userType");
		int type = Integer.parseInt(userType);
		if(type == 1){				
		return "redirect:/usercenteruser.do";
		}
		if(type == 2){
			return "redirect:/usercenterworker.do";				
		}
		if(type == 3){
			return "redirect:/usercenterworker.do";				
		}
		return "login";
	}
	
	
	/*用户中心用户进入数据回显*/
	@RequestMapping("/usercenteruser")
	public String usercenteruser(User user,HttpServletRequest request){
			User users = (User) request.getSession().getAttribute("currentUser");
			Integer id = users.getId();
			String sql = "select * from user where id="+id;
			String sql2 = "SELECT wo.devicename,wo.about,w.role_name,wo.time,wo.state FROM workorder AS wo LEFT JOIN worker AS w ON wo.worker_id = w.id"+
					" LEFT JOIN `user` AS u ON wo.user_id = u.id WHERE u.id ="+id;
			List<Map<String, Object>> list =commDao.queryForList(sql2, -1);
			request.setAttribute("list", list);
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap); 
			return "/webpage/user/usercenter-user";
		}

		
	/*用户进入信息修改页面数据回显*/
	@RequestMapping("/userchangeinformation")
	public String userchangeinformation(User user,HttpServletRequest request){
			
			User users = (User) request.getSession().getAttribute("currentUser");
			Integer id = users.getId();
			String sql="select * from user where id="+id;
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap);  
			return "/webpage/user/userchange-user";

		}

	/*用户进入修改界面修改完数据进行数据保存*/
	@RequestMapping("/usersaveuser")
	public String usersaveuser(HttpServletRequest request){
		String id = request.getParameter("userId");
		String name = request.getParameter("name");
		String userPwd = request.getParameter("userPwd");
		String roleName = request.getParameter("roleName");
		String userMobile = request.getParameter("userMobile");
		String radio = request.getParameter("radio");
		String userEmail = request.getParameter("userEmail");
		String userAddress = request.getParameter("userAddress");
		Integer sex = Integer.parseInt(radio);
		String sql = "UPDATE `user` SET name = '"+name+"',user_pwd='"+userPwd+"',role_name='"+roleName+"',user_mobile='"+userMobile+"',user_sex="+sex+",user_email='"+userEmail+"',user_address='"+userAddress+"' "
				+ " WHERE id ="+id;
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "redirect:/usercenteruser.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	}


	/*用户中心员工进入数据列表遍历*/
	@RequestMapping("/usercenterworker")
	public String usercenterworker(HttpServletRequest request){
			String sql="select * from user";
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap);  
			return "/webpage/user/usercenter-worker";
		}


	/*用户中心员工进入查询用户名*/
	@RequestMapping("/userqueryworker")
	public String userqueryworker(HttpServletRequest request){
			String name = request.getParameter("roleName");
			String sql=null;
			if(name!=null && name!=""){
			sql="select * from user where role_name='"+name+"'";
			}else{
			sql="select * from user";	
			}
			List<Map<String, Object>> listMap = commDao.queryForList(sql, 0);
			request.setAttribute("listMap", listMap); 
			return "/webpage/user/usercenter-worker";
		}
	
	/*用户中心修改界面员工进入数据回显*/
	@RequestMapping("/userchangeworker")
	public String userchangeworker(HttpServletRequest request){
			Integer id = Integer.parseInt(request.getParameter("id"));
			String sql="select * from user where id="+id;
			List<Map<String, Object>> listMap = commDao.queryForList(sql, 0);
			request.setAttribute("listMap", listMap);  
			return "/webpage/user/userchange-worker";
		}
	
	
	/*用户中心修改界面员工进入修改完数据进行数据保存*/
	@RequestMapping("/usersaveworker")
	public String usersaveworker(HttpServletRequest request){
		String id = request.getParameter("userId");
		String name = request.getParameter("name");
		String userPwd = request.getParameter("userPwd");
		String roleName = request.getParameter("roleName");
		String userMobile = request.getParameter("userMobile");
		String radio = request.getParameter("radio");
		String userEmail = request.getParameter("userEmail");
		String userAddress = request.getParameter("userAddress");
		Integer sex = Integer.parseInt(radio);
		String sql = "UPDATE `user` SET name = '"+name+"',user_pwd='"+userPwd+"',role_name='"+roleName+"',user_mobile='"+userMobile+"',user_sex="+sex+",user_email='"+userEmail+"',user_address='"+userAddress+"' "
				+ " WHERE id ="+id;
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "forward:/usercenterworker.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	}
	
	/*用户中心员工进入删除用户数据*/
	@RequestMapping("/userdelworker")
	public String userdelworker(HttpServletRequest request){
		Integer id = Integer.parseInt(request.getParameter("id"));
		String sql="DELETE FROM user WHERE id = "+id;
		int count = 0;
		count = commDao.delete(sql); 
		if(count>0){			
			return "forward:/usercenter.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	}
}
