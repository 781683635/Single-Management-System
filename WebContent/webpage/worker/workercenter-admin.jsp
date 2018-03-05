<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户中心</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/ctrl/font/css/font-awesome.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/swiper.min.js"></script>
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
			<!-- 内容开始 -->
			<div class="col-sm-12">
				<div class="row">
					<h3 class="f-14 gradient-gray clear">
						<span class="pull-left pd-10 line-h-20 f-18">员工管理</span>
					</h3>
				</div>
				<br/>
				<!-- 操作用户 -->
				<form action="${pageContext.request.contextPath }/workerqueryadmin.do" method="post">
					<div class="clear row f-12 pb-10 mb-10 bor-b-2">
						<div class="col-sm-4">
						</div>
						<div class="col-sm-4">
							<div class="search">
								<div class="search-con">
									<input id="roleName" name="roleName" type="text" class="ipt-text size-small" placeholder="请输入您所查询的员工姓名" value="">
									<button class="sea-btn-v2 btn btn-small gradient-primary" type="submit">查询</button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<br/>
				<!-- 用户列表 -->
				<div class="clear mb-10 ">
					<table cellspacing="0" class="bor-primary full-w text-center newline line-h-20 ">
						<caption class="f-16 mb-10">员工·列表</caption>
						<thead class="bg-l-blue">
							<tr class="">
								<th class="col-1">用户ID</th>
								<th class="col-1">用户名</th>
								<th class="col-2">真实姓名</th>
								<th class="col-2">电话</th>
								<th class="col-2">邮箱</th>
								<th class="col-2">职务</th>
								<th class="col-1">操作</th>
							</tr>
						</thead>
						<tbody class="text-center line-h-20" id="tradelist">
							<c:forEach var="list" items="${listMap }" varStatus="vs">
								<tr class="<c:if test='${vs.index%2==1 }'> bg-l-green </c:if> <c:if test='${vs.index%2!=1 }'>bg-white</c:if> " resId="${list.id }" resImg="${list.img }">
									<td class="">${list.id }</td>
									<td class="">${list.name }</td>
									<td class="pd-5">${list.role_name }</td>
									<td class="pd-5">${list.worker_mobile }</td>
									<td class="pd-5">${list.worker_email }</td>
									<td class="pd-5">${list.worker_about }</td>
									<td class="pl-10 pr-10">
										<div class="sel-ck search text-center" id="layer">
											<div class="bg-primary">
												<span class="inline-block icon-edit text-center f-16 col-white"></span>
												<i class="icon-caret-down f-20 col-white"></i>
											</div>
											<ul class="opt opt-ck">
												<li class="pd-5 text-center hov-primary cur-p bor-b-l" onclick="javascript:window.location='${pageContext.request.contextPath }/workerchangeadmin.do?id=${list.id}'">修改</li>
												<li class="pd-5 text-center hov-primary cur-p bor-b-l" onclick="javascript:window.location='${pageContext.request.contextPath }/workerdeladmin.do?id=${list.id}'">删除</li>
											</ul>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="pageHtml"></div>
				</div>
			</div>
		</div>
	</div>
		<jsp:include page="/common/foot.jsp"/>
</body>
</body>
</html>