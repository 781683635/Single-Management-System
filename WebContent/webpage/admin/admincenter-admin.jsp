<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工中心</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/worker.css">


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
	<jsp:include page="/common/head/head7.jsp"/>
		<div class="container clear">
			<jsp:include page="/common/menu/menu-admin1.jsp"/>
			<!-- 内容开始 -->
			<div class="col-sm-10">
				<!-- 第一栏 -->
				<div class="row clear bor-light mb-15">
					<div class="col-sm-3 pd-20">
						<div class="clear">
							<img class="pull-left full-wh use-img full-radius" src="${pageContext.request.contextPath}/images/admin/1.jpg" alt="">
							<div class="pull-left pl-15">
								<p class="col-333 f-16 pt-5">${listMap[0].role_name }<span class="col-555 f-12"> 
							</div>
						</div>
					</div>
					<div class="col-sm-6 pd-20">
						<div class="col-sm-3 text-right f-16 pb-10 pt-5">电话：</div>
						<div class="col-sm-9 text-left f-16 pb-10 pt-5">${listMap[0].admin_mobile }</div>
					</div>
				</div>
			</div>
			<!-- 内容结束 -->
		</div>

</div>
	<jsp:include page="/common/foot.jsp"/>

</body>
</body>
</html>