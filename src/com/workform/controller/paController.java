package com.workform.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.workform.dao.CommDao;
import com.workform.model.Admin;
import com.workform.model.User;
import com.workform.model.Worker;
import com.workform.util.StringUtil;

@Controller
public class paController {

	@Autowired
	CommDao commDao;
	
	@RequestMapping(value="/loginui")
	public String login(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String type=request.getParameter("radio");
		String userName=request.getParameter("user_name");
		String pwd=request.getParameter("user_pwd");
		String sql=null;
		Admin admin=null;
		Worker worker=null;
		User user=null;
		HttpSession session=request.getSession();
		session.setAttribute("userType", type);
		if("1".equals(type)){
			sql="SELECT u.* FROM `user` AS u where u.name='"+userName+"' and u.user_pwd='"+pwd+"'";
			user=(User) commDao.queryForEntity(sql, User.class, 0);
			if(user.getId()==null){
				String msg="用户名或密码错误!";
				request.setAttribute("errorMsg", msg);
				return "forward:/login.do";
			}else{
				
				session.setAttribute("currentUser", user);
				return "redirect:/main.do";
			}
		}else if("2".equals(type)){
			sql="SELECT w.* FROM worker AS w where w.name='"+userName+"' and w.worker_pwd='"+pwd+"'";
			worker=(Worker) commDao.queryForEntity(sql, Worker.class, 0);
			if(worker.getId()==null){
				String msg="用户名或密码错误!";
				request.setAttribute("errorMsg", msg);
				return "forward:/login.do";
			}else{
				
				session.setAttribute("currentUser", worker);
				return "redirect:/main.do";
			}
			
		}else{
			sql="SELECT a.* FROM admin AS a where a.name='"+userName+"' and a.admin_pwd='"+pwd+"'";
			admin=(Admin) commDao.queryForEntity(sql, Admin.class, 0);
			if(admin.getId()==null){
				String msg="用户名或密码错误!";
				request.setAttribute("errorMsg", msg);
				return "forward:/login.do";
			}else{
				
				session.setAttribute("currentUser", admin);
				return "redirect:/main.do";
			}
		}
	
	
	}
	
	@RequestMapping("/loginout")
	public String logout(HttpSession session){
			session.invalidate();
			return "/login";
		}
	
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request){
		
		return "login";
	}
	
	@RequestMapping("/reg")
	public String reg(User user,HttpServletRequest request){ 
			return "/webpage/reg/reg";
		}
	
	@RequestMapping("/reg2")
	public String reg2(HttpServletRequest request){
		String name = request.getParameter("userName");
		String userRegMobile = request.getParameter("userRegMobile");
		String userPwd = request.getParameter("userPwd");
		String sql = "INSERT INTO `user`(name,user_pwd,user_mobile) VALUES('"+name+"','"+userPwd+"','"+userRegMobile+"')";
		int count = 0;
		count = commDao.update(sql);
		if(count>0){			
			return "forward:/login.do";
		}
		return "forward:/reg.do";
	}
	
	
	
	@RequestMapping(value = "imgCode")
	@ResponseBody
	public String imgCode(HttpServletRequest request,HttpServletResponse response){
		String bl = "false";
		//接收图形验证码
		String strImgCode = request.getParameter("imgCode");
		//获取随机的图形验证码
		String strRandeCode = (String) request.getSession().getAttribute("randCode");
		//比较输入的验证码和产生的验证码
		if(!StringUtil.isNull(strRandeCode) && strImgCode.equals(strRandeCode)){
			bl = "true";
		}
		return bl;	
	}
	@RequestMapping(value="/nameCheck")
	@ResponseBody
	public String nameCheck(HttpServletRequest request,HttpServletResponse response){
		String bl = "true";
		int count = 0;
		String name = request.getParameter("userName");
		String sql = "SELECT count(*) FROM user u WHERE name='"+name+"'";
		count = commDao.queryForCount(sql, 0);
		if(count>0){
			bl="false";
		}
		return bl;
	}
}


