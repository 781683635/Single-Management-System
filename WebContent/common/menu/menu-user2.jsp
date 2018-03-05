<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<!-- 侧边栏菜单 -->
			<div class="col-md-2">
					<div class="con-side">
						<ul id="fold1" class="fold">
							<li class="item mb-10">
								<h4 class="gradient-gray f-14">
									<i class="icon-user f-16"></i>
									<span class="f-14 line-h-20 ml-5" >用户</span>
									<b>+</b>
								</h4>
								<div class="info">
									<ul>
										<li >
											<a class="inline-block full-w f-14 " href="${pageContext.request.contextPath}/usercenter.do" >基本资料</a>
										</li>
										<li class="tit-current">
											<a class="inline-block full-w f-14 " href="${pageContext.request.contextPath}/userchangeinformation.do">修改信息</a>
										</li>
									</ul>
								</div>
							</li>
									  
						  
						</ul>

					</div>
			</div>
		<!-- 侧边栏菜单end -->
