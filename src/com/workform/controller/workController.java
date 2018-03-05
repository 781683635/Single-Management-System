package com.workform.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.workform.dao.CommDao;
import com.workform.model.Admin;
import com.workform.model.User;
import com.workform.model.Worker;
import com.workform.util.SessionUtil;
import com.workform.util.StringUtil;

@Controller
public class workController {

	@Autowired
	CommDao commDao;
	
	/*登录时判断登录用户的类型*/
	@RequestMapping("/workcenter")
	public String usercenter(User user,HttpServletRequest request){
		String userType = (String) request.getSession().getAttribute("userType");
		int type = Integer.parseInt(userType);
		if(type == 1){				
		return "redirect:/workercenteruser.do";
		}
		if(type == 2){
			return "redirect:/workercenterwork.do";				
		}
		if(type == 3){
			return "redirect:/workercenteradmin.do";				
		}
		return "login";
	}


	/*用户进入员工中心*/
	@RequestMapping("/workercenteruser")
	public String workercenteruser(HttpServletRequest request){
		
			return "/webpage/worker/workercenter-user";
	}

	/*员工进入员工中心数据回显*/
	@RequestMapping("/workercenterwork")
	public String workercenterwork(HttpServletRequest request){
			Worker workers = (Worker) request.getSession().getAttribute("currentUser");
			Integer id = workers.getId();
			String sql = "select * from worker where id="+id;
			String sql2 = "SELECT wo.id,wo.devicename, wo.about, wo.time, wo.state, u.role_name FROM workorder AS wo INNER JOIN worker AS w ON wo.worker_id = w.id INNER JOIN `user` AS u ON wo.user_id = u.id WHERE w.id ="+id;
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap); 
			List<Map<String, Object>> list =commDao.queryForList(sql2, -1);
			request.setAttribute("list", list);
			return "/webpage/worker/workercenter-work";
		}
	
	/*员工操作设备修复中*/
	@RequestMapping("/workercenterworking")
	public String workercenterworking(HttpServletRequest request,HttpServletResponse response,@RequestParam(required=false) String id){ 
		String sql = "UPDATE workorder SET state='修复中' WHERE id ="+id;
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "forward:/workercenterwork.do";
		}
			return "/webpage/worker/workercenter-work";
		}
	/*员工操作设备已修复*/
	@RequestMapping("/workercenterworkend")
	public String workercenterworkingend(HttpServletRequest request,HttpServletResponse response,@RequestParam(required=false) String id){
		String sql = "UPDATE workorder SET state='已完成' WHERE id ="+id;
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "forward:/workercenterwork.do";
		}
		return "/webpage/worker/workercenter-work";
	}
	
	/*员工删除设备*/
	@RequestMapping("/workercenterworkdel")
	public String workercenterworkingdel(HttpServletRequest request,HttpServletResponse response,@RequestParam(required=false) String id){
		String sql = "DELETE from workorder WHERE workorder.id="+id;
		int count = 0;
		count = commDao.delete(sql);
		if(count>0){			
			return "forward:/workercenterwork.do";
		}
		return "/login";
	}
	
	/*管理员进入员工中心数据列表遍历*/
	@RequestMapping("/workercenteradmin")
	public String workercenteradmin(HttpServletRequest request){
			String sql="select * from worker";
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap);  
			return "/webpage/worker/workercenter-admin";
		}
	
	/*管理员进入员工中心查询用户名*/
	@RequestMapping("/workerqueryadmin")
	public String workerqueryadmin(HttpServletRequest request){
			String name = request.getParameter("roleName");
			String sql=null;
			if(name!=null && name!=""){
			sql="select * from worker where role_name='"+name+"'";
			}else{
			sql="select * from worker";	
			}
			List<Map<String, Object>> listMap = commDao.queryForList(sql, 0);
			request.setAttribute("listMap", listMap); 
			return "/webpage/worker/workercenter-admin";
		}

	/*管理员进入员工修改页面数据回显*/
	@RequestMapping("/workerchangeadmin")
	public String workerchangeadmin(HttpServletRequest request){
			Integer id = Integer.parseInt(request.getParameter("id"));
			String sql="select * from worker where id="+id;
			List<Map<String, Object>> listMap = commDao.queryForList(sql, 0);
			request.setAttribute("listMap", listMap);  
			return "/webpage/worker/workerchange-admin";
		}


	/*员工中心管理员进入删除员工数据*/
	@RequestMapping("/workerdeladmin")
	public String workerdeladmin(HttpServletRequest request){
		Integer id = Integer.parseInt(request.getParameter("id"));
		String sql="DELETE FROM worker WHERE id = "+id;
		int count = 0;
		count = commDao.delete(sql); 
		if(count>0){			
			return "forward:/workcenter.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	}


	/*员工进入修改员工信息*/
	@RequestMapping("/workerchangework")
	public String workerchangework(HttpServletRequest request){
			Worker workers = (Worker) request.getSession().getAttribute("currentUser");
			Integer id = workers.getId();
			String sql="select * from worker where id="+id;
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap);  
			return "/webpage/worker/workerchange-work";
	}
	
	/*员工或者管理员进入修改界面修改完数据进行数据保存*/
	@RequestMapping("/workersaveworker")
	public String workersaveworker(HttpServletRequest request){
		String id = request.getParameter("workerId");
		String roleName = request.getParameter("roleName");
		String workerMobile = request.getParameter("workerMobile");
		String workerEmail = request.getParameter("workerEmail");
		String workAbout = request.getParameter("workAbout");
		String sql = "UPDATE `worker` SET role_name='"+roleName+"',worker_mobile='"+workerMobile+"',worker_email='"+workerEmail+"',worker_about='"+workAbout+"' "
				+ " WHERE id ="+id;
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "redirect:/workcenter.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	}





	
}
