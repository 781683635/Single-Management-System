<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/global.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/user/userchange.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/mining.js"></script>
<%
	if(session.getAttribute("currentUser")==null){
		response.sendRedirect(request.getContextPath()+"/login.jsp");
		return;
	}

	String mainPage=(String)request.getAttribute("mainPage");
	if(mainPage==null || mainPage.equals("")){
		mainPage="/common/default.jsp";
	}
%>
</head>
<body>
<div class="wrap ">
	<jsp:include page="/common/head/head5.jsp"/>
		<div class="container clear">
			<!-- 内容开始 -->
			<div class="col-sm-12">
				<div class="row">
					<h3 class="f-14 gradient-gray clear">
						<span class="pull-left pd-10 line-h-20 f-18">用户信息修改</span>
					</h3>
				</div>
				<div>
					<form id="news_addForm" method="post" class="sky-form userchange-form" action="${pageContext.request.contextPath }/usersaveworker.do">		
						<!-- 账号 -->	      
						<div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">*&nbsp;</em>账号:</label>
							</div>
							<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
								<div class="clear">
								<input type="text" name="name" value="${listMap[0].name}" class="ipt-text radius0" >
								</div>
							</div>
						</div>
						<!-- 密码 -->
						<div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">*&nbsp;</em>密码:</label>
							</div>
							<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
								<div class="clear">
									<input type="password" name="userPwd" value="${listMap[0].user_pwd}" class="ipt-text radius0" >
								</div>
							</div>
						</div> 
						<!-- 真实姓名 -->
						<div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">&nbsp;</em>真实姓名:</label>
							</div>
							<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
								<div class="clear">
									<input type="text" name="roleName" value="${listMap[0].role_name}" class="ipt-text radius0" >
								</div>
							</div>
						</div>
						<!-- 手机 -->
						<div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">&nbsp;</em>手机:</label>
							</div>
							<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
								<div class="clear">
									<input type="text" name="userMobile" value="${listMap[0].user_mobile}"
									class="ipt-text radius0">
								</div>
							</div>
						</div>
						<!-- 性别 -->
						<div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">&nbsp;</em>性别:</label>
							</div>
							<div class="col-xs-3 col-sm-3 pl-0 pr-5">
								<div class="row pt-5 tabbar clear">
									<c:if test="${listMap[0].user_sex==0 }">
				                        <div class="col-xs-6 text-center">
				                            <label class="radio state-success"><input type="radio" checked="checked" name="radio" value="0" >男</label>
				                        </div>
				                        <div class="col-xs-6 text-center">
				                              <label class="radio state-success"><input type="radio" name="radio" value="1">女</label>
				                        </div>
									</c:if>
									<c:if test="${listMap[0].user_sex==1 }">
				                        <div class="col-xs-6 text-center">
				                            <label class="radio state-success"><input type="radio" name="radio" value="0">男</label>
				                        </div>
				                        <div class="col-xs-6 text-center">
				                              <label class="radio state-success"><input type="radio" checked="checked"  name="radio" value="1">女</label>
				                        </div>
									</c:if>
									<c:if test="${listMap[0].user_sex==null }">
				                        <div class="col-xs-6 text-center">
				                            <label class="radio state-success"><input type="radio" checked="checked" name="radio" value="0">男</label>
				                        </div>
				                        <div class="col-xs-6 text-center">
				                              <label class="radio state-success"><input type="radio" name="radio" value="1">女</label>
				                        </div>
									</c:if>
		                        </div>
							</div>
						</div>
						<!-- 邮箱 -->
						<div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">&nbsp;</em>邮箱: </label>
							</div>
							<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
								<div class="clear">
									<input type="text" name="userEmail" value="${listMap[0].user_email}" class="ipt-text radius0">
								</div>
							</div>
						</div>
						<!-- 地址 -->
						<div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">&nbsp;</em>地址:</label>
							</div>
							<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
								<div class="clear">
									<input type="text" name="userAddress" value="${listMap[0].user_address}" class="ipt-text radius0">
								</div>
							</div>
						</div>
						<!-- 个人简介 -->
						<!-- <div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">&nbsp;</em>个人简介:</label>
							</div>
							<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
								<div class="clear">
									<textarea class="textarea textarea-numberbar radius0" name="rl.vdesc" cols="30" rows="10"></textarea>
								</div>
							</div>
						</div> -->
						<input type="hidden" name="userId" id="userId" value="${listMap[0].id }" >
						<button id="optres" type="button" class="btn radius0 btn-primary btn-normal pull-right ml-20" onclick="javascript:history.back()">返回</button>
						<button id="optres" type="submit" class="btn radius0 btn-primary btn-normal pull-right "  >修改</button>
					</form>
				</div>
			</div>
			<!-- 内容结束 -->
		</div>
</div>
	<jsp:include page="/common/foot.jsp"/>
	


</body>
</body>
</html>