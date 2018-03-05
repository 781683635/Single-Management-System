<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<!-- 侧边栏菜单 -->
			<div class="col-md-2">
					<div class="con-side">
						<ul id="fold1" class="fold">
							<li class="item mb-10">
								<h4 class="gradient-gray f-14">
									<i class="icon-user f-16"></i>
									<span class="f-14 line-h-20 ml-5" >管理员</span>
									<b>+</b>
								</h4>
								<div class="info">
									<ul>
										<li>
											<a class="inline-block full-w f-14 " href="${pageContext.request.contextPath}/admin.do" >基本资料</a>
										</li>
										<li >
											<a class="inline-block full-w f-14 " href="${pageContext.request.contextPath}/adminchangeinformation.do">修改个人信息</a>
										</li>
										<li class="tit-current">
											<a class="inline-block full-w f-14 " href="${pageContext.request.contextPath}/addadmin.do">添加新管理</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="item mb-10">
								<h4 class="gradient-gray f-14">
									<i class="icon-user f-16"></i>
									<span class="f-14 line-h-20 ml-5" >用户管理</span>
									<b>+</b>
								</h4>
								<div class="info">
									<ul>
										<li >
											<a class="inline-block full-w f-14 " href="${pageContext.request.contextPath}/adduser.do">添加新用户</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="item mb-10">
								<h4 class="gradient-gray f-14">
									<i class="icon-user f-16"></i>
									<span class="f-14 line-h-20 ml-5" >员工管理</span>
									<b>+</b>
								</h4>
								<div class="info">
									<ul>
										<li >
											<a class="inline-block full-w f-14 " href="${pageContext.request.contextPath}/addworker.do">添加新员工</a>
										</li>
									</ul>
								</div>
							</li>	  
						  
						</ul>

					</div>
			</div>
		<!-- 侧边栏菜单end -->
