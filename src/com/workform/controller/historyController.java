package com.workform.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.workform.dao.CommDao;
import com.workform.model.Admin;
import com.workform.model.PageBean;
import com.workform.model.User;
import com.workform.model.Worker;
import com.workform.util.PageUtil;
import com.workform.util.SessionUtil;
import com.workform.util.StringUtil;

@Controller
public class historyController {

	@Autowired
	CommDao commDao;

	/*登录时判断登录用户的类型*/
	@RequestMapping("/history")
	public String history(User user,HttpServletRequest request){
		String userType = (String) request.getSession().getAttribute("userType");
		int type = Integer.parseInt(userType);
		if(type == 1){				
		return "redirect:/historyuser.do";
		}
		if(type == 2){
			return "redirect:/historywork.do";				
		}
		if(type == 3){
			return "redirect:/historyadmin.do";				
		}
		return "login";
	}

	/*用户进入历史查询的时候数据回显*/
	@RequestMapping("/historyuser")
	public String historyuser(User user,HttpServletRequest request){
			
			User users = (User) request.getSession().getAttribute("currentUser");
			Integer id = users.getId();
			String sql = "SELECT workorder.devicename, worker.role_name,record.time,record.state,record.about FROM record INNER JOIN workorder ON record.workorderid = workorder.id INNER JOIN worker ON workorder.worker_id = worker.id INNER JOIN `user` ON workorder.user_id = `user`.id WHERE `user`.id = "+id+"";
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap);
			return "/webpage/history/history-user";
		}

	/*员工进入历史查询的时候数据回显*/
	@RequestMapping("/historywork")
	public String historywork(User user,HttpServletRequest request){

			String page=request.getParameter("page");
		    if(StringUtil.isEmpty(page)){
			    page="1";
		    }
		    PageBean pageBean=new PageBean(Integer.parseInt(page),3);
		    int total=0;

			Worker workers = (Worker) request.getSession().getAttribute("currentUser");
			Integer id = workers.getId();
			String sql = "SELECT u.role_name, wo.devicename, r.state, r.time, r.about FROM record AS r INNER JOIN workorder AS wo ON r.workorderid = wo.id INNER JOIN worker AS w ON wo.worker_id = w.id INNER JOIN `user` AS u ON wo.user_id = u.id WHERE w.id= "+id+" limit "+pageBean.getStart()+","+pageBean.getPageSize()+"";
			String sql2 ="SELECT count(*) FROM record AS r INNER JOIN workorder AS wo ON r.workorderid = wo.id INNER JOIN worker AS w ON wo.worker_id = w.id INNER JOIN `user` AS u ON wo.user_id = u.id WHERE w.id= "+id+" ";

			total=commDao.queryForCount(sql2, 0);

			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);

			String pageCode=PageUtil.genPagination(request.getContextPath()+"/webpage/history/history-worker", total, Integer.parseInt(page), 3);


			request.setAttribute("pageCode", pageCode);
			request.setAttribute("listMap", listMap);
			return "/webpage/history/history-worker";
		}


	/*管理员进入历史查询的时候数据回显*/
	@RequestMapping("/historyadmin")
	public String historyadmin(User user,HttpServletRequest request){
			Admin admins = (Admin) request.getSession().getAttribute("currentUser");
			Integer id = admins.getId();
			String sql = "SELECT wo.devicename, u.role_name AS username, u.user_mobile, w.role_name AS workername, w.worker_mobile, r.state, r.time, r.id, r.about FROM record AS r INNER JOIN workorder AS wo ON r.workorderid = wo.id INNER JOIN worker AS w ON wo.worker_id = w.id INNER JOIN `user` AS u ON wo.user_id = u.id";
			List<Map<String, Object>> listMap = commDao.queryForList(sql, -1);
			request.setAttribute("listMap", listMap);
			return "/webpage/history/history-admin";
		}


	/*管理员删除历史数据*/
	@RequestMapping("/historydeladmin")
	public String historydeladmin(HttpServletRequest request){
		Integer id = Integer.parseInt(request.getParameter("id"));
		String sql="DELETE FROM record WHERE id = "+id;
		int count = 0;
		count = commDao.delete(sql); 
		if(count>0){			
			return "forward:/history.do";
		}
		return "forward:/reg.do";//操作失败页面 （未写）
	}

}
