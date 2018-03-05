<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设备报修</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/global.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/mining.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/user/repair.js"></script>
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
	<jsp:include page="/common/head/head3.jsp"/>
	    <div class="container clear">	
	    	<!-- 内容开始 -->
			<div class="col-sm-12">
				<div class="row">
					<h3 class="f-14 gradient-gray clear">
						<span class="pull-left pd-10 line-h-20 f-18">用户故障报修</span>
					</h3>
				</div>
				<div>
					<form id="news_addForm" method="post" class="sky-form userchange-form" action="${pageContext.request.contextPath }/repairusersubmit.do">		
						<!-- 故障设备 -->	      
						<div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">*&nbsp;</em>故障设备:</label>
							</div>
							<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
								<div class="clear">
								<input type="text" name="deviceName" value="" class="ipt-text radius0" >
								</div>
							</div>
						</div>
						<!-- 简介 -->
						<div class="f-13 mb-15 mt-15 clear">
							<div class="col-xs-3 col-sm-2 col-md-1 text-right pull-left pd-0 line-h-20">
								<label class="ipt-label inline-block"><em class="col-red">&nbsp;</em>简介:</label>
							</div>
							<div class="col-xs-9 col-sm-10 col-md-11 pl-0 pr-5">
								<div class="clear">
									<textarea class="textarea textarea-numberbar radius0" name="About" cols="30" rows="10"></textarea>
								</div>
							</div>
						</div>
						<button id="optres" type="submit" class="btn radius0 btn-primary btn-normal pull-right ">报修</button>
					</form>
				</div>
			</div>
			<!-- 内容结束 -->
		</div>

</div>
	<jsp:include page="/common/foot.jsp"/>
	
2
</body>
</body>
</html>