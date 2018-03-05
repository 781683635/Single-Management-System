package com.workform.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
public class repairController {

	@Autowired
	CommDao commDao;

	/*登录时判断登录用户的类型*/
	@RequestMapping("/repair")
	public String usercenter(User user,HttpServletRequest request){
		String userType = (String) request.getSession().getAttribute("userType");
		int type = Integer.parseInt(userType);
		if(type == 1){				
		return "redirect:/repairuser.do";
		}
		if(type == 2){
			return "redirect:/repairworker.do";				
		}
		if(type == 3){
			return "redirect:/repairadmin.do";				
		}
		return "login";
	}


	/*用户进入维修中心*/
	@RequestMapping("/repairuser")
	public String repairuser(User user,HttpServletRequest request){
			return "/webpage/repair/repair-user";
	}


	/*用户进行增加报修设备*/
	@RequestMapping("/repairusersubmit")
	public String usersaveuser(HttpServletRequest request){
		User users = (User) request.getSession().getAttribute("currentUser");
		Integer id = users.getId();
		String devicename = request.getParameter("deviceName");
		String about = request.getParameter("About");
		String sql = "INSERT INTO workorder(user_id,devicename,about,time) "+
							"VALUES("+id+",'"+devicename+"','"+about+"',now())";
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "redirect:/usercenteruser.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	}


	/*员工进入维修中心*/
	@RequestMapping("/repairworker")
	public String repairworker(HttpServletRequest request){
			String sql = "SELECT workorder.id, `user`.role_name, workorder.devicename, workorder.time, workorder.about " + 
						 "FROM workorder INNER JOIN `user` ON workorder.user_id = `user`.id WHERE workorder.worker_id is null;";
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap);
			return "/webpage/repair/repair-worker";
	}


	/*员工修改状态正在联系*/
	@RequestMapping("/repairworkercontact")
	public String repairworkercontact(HttpServletRequest request){
			Worker workers = (Worker) request.getSession().getAttribute("currentUser");
			Integer idw = workers.getId();
			String idr = request.getParameter("idr");
			String sql = "UPDATE `workorder` SET worker_id = '"+idw+"', state = '"+"正在联系"+"', time = "+"now()"+" where id = '"+idr+"'";
			int count = 0;
			count = commDao.update(sql);
			if(count>0){			
				return "redirect:/repair.do";
			}
			return "forward:/reg.do";//操作失败页面 （未写）
	}

	/*员工修改状态修复中*/
	@RequestMapping("/repairworkerrepairing")
	public String repairworkerrepairing(HttpServletRequest request){
			Worker workers = (Worker) request.getSession().getAttribute("currentUser");
			Integer idw = workers.getId();
			String idr = request.getParameter("idr");
			String sql = "UPDATE `workorder` SET worker_id = '"+idw+"', state = '"+"修复中"+"' , time = "+"now()"+" where id = '"+idr+"'";
			int count = 0;
			count = commDao.update(sql);
			if(count>0){			
				return "redirect:/repair.do";
			}
			return "forward:/reg.do";//操作失败页面 （未写）
	}

	/*员工修改状态已修复*/
	@RequestMapping("/repairworkerrepairend")
	public String repairworkerrepairend(HttpServletRequest request){
			Worker workers = (Worker) request.getSession().getAttribute("currentUser");
			Integer idw = workers.getId();
			String idr = request.getParameter("idr");
			String sql = "UPDATE `workorder` SET worker_id = '"+idw+"', state = '"+"已修复"+"' , time = "+"now()"+" where id = '"+idr+"'";
			int count = 0;
			count = commDao.update(sql);
			if(count>0){			
				return "redirect:/repair.do";
			}
			return "forward:/reg.do";//操作失败页面 （未写）
	}

	/*员工修改状态上报*/
	@RequestMapping("/repairworkerreport")
	public String repairworkerreport(HttpServletRequest request){
			Worker workers = (Worker) request.getSession().getAttribute("currentUser");
			Integer idw = workers.getId();
			String idr = request.getParameter("idr");
			String sql = "UPDATE `workorder` SET worker_id = '"+idw+"', state = '"+"已上报"+"' , time = "+"now()"+" where id = '"+idr+"'";
			int count = 0;
			count = commDao.update(sql);
			if(count>0){			
				return "redirect:/repair.do";
			}
			return "forward:/reg.do";//操作失败页面 （未写）
	}

	/*员工修改状态删除*/
	@RequestMapping("/repairworkerdel")
	public String repairworkerdel(HttpServletRequest request){
			String idr = request.getParameter("idr");
			String sql = "DELETE from workorder WHERE id = '"+idr+"'";

			int count = 0;
			count = commDao.delete(sql);
			if(count>0){			
				return "redirect:/repair.do";
			}
			return "forward:/reg.do";//操作失败页面 （未写）
	}



	/*管理员进入维修中心*/
	@RequestMapping("/repairadmin")
	public String repairadmin(User user,HttpServletRequest request){
			return "/webpage/repair/repair-worker";
	}

}
