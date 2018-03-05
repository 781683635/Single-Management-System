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
	<jsp:include page="/common/head/head6.jsp"/>
		<div class="container clear">
			<jsp:include page="/common/menu/menu-worker2.jsp"/>
			<!-- 内容开始 -->
			<div class="col-sm-10">
				<form id="news_addForm" method="post" class="sky-form userchange-form" action="${pageContext.request.contextPath }/workersaveworker.do">
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
								<input type="text" name="workerMobile" value="${listMap[0].worker_mobile}"
								class="ipt-text radius0">
							</div>
						</div>
					</div>
					<!-- 邮箱 -->
					<div class="f-13 mb-15 mt-15 clear">
						<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
							<label class="ipt-label inline-block"><em class="col-red">&nbsp;</em>邮箱:</label>
						</div>
						<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
							<div class="clear">
								<input type="text" name="workerEmail" value="${listMap[0].worker_email}"
								class="ipt-text radius0">
							</div>
						</div>
					</div>
					<!-- 职务 -->
					<div class="f-13 mb-15 mt-15 clear">
						<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
							<label class="ipt-label inline-block"><em class="col-red">&nbsp;</em>职务:</label>
						</div>
						<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
							<div class="clear">
								<input type="text" name="workAbout" value="${listMap[0].worker_about}"
								class="ipt-text radius0">
							</div>
						</div>
					</div>

					<input type="hidden" name="workerId" id="workerId" value="${listMap[0].id }" >

					<button id="optres" type="button" class="btn radius0 btn-primary btn-normal pull-right ml-20" onclick="javascript:history.back()">返回</button>
					<button id="optres" type="submit" class="btn radius0 btn-primary btn-normal pull-right " >修改</button>
				</form>
			</div>
		<!-- 内容结束 -->
		</div>
</div>
	<jsp:include page="/common/foot.jsp"/>
	


</body>
</body>
</html>