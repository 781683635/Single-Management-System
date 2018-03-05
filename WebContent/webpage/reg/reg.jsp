<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>三亚电信员工工单管理系统-用户注册</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/sky-forms.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/global.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/ckImgCode.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/reg/regui.js"></script>
</head>
<body>
	<div class="wrap bg-primary ">
	<jsp:include page="/common/head/head.jsp"/>
		<div class="container pd-0" style="padding-top: 8%;"">
		<div class="row clear mt-20 pt-20">
			<div class="col-md-8 col-sm-6 hidden-xs">
				<img src="${pageContext.request.contextPath}/images/reg/loginbg2.jpg" alt="" class="">
			</div>
			<div class="col-md-4 col-sm-6 mb-20">
				<div class="bg-white pt-20 pb-20 ml-10 mr-10 shadow-rb">
					<div class="pt-10">
						<p class="text-center f-18 pt-10">注册</p>
						<form action="${pageContext.request.contextPath }/reg2.do"
							class="sky-form pt-20 f-12" method="post" id="regForm">
							<div class="mb-10">
								<div class="lab-out ">
									<label class="ipt-label inline-block line-h-20" for="userName">用户名:</label>
								</div>
								<div class="ipt-out mr-15">
									<input type="text" class="ipt-text" placeholder="您的用户名"
										id="userName" name="userName">
								</div>
							</div>
							<div class="mb-10">
								<div class="lab-out">
									<label class="ipt-label inline-block line-h-20"
										for="userRegMobile">手机号:</label>
								</div>
								<div class="ipt-out mr-15">
									<input type="text" id="userRegMobile" name="userRegMobile" class="ipt-text" placeholder="您的手机号">
								</div>
							</div>
							<div class="mb-10">
								<div class="lab-out ">
									<label class="ipt-label inline-block line-h-20" for="userPwd">密码:</label>
								</div>
								<div class="ipt-out mr-15">
									<input type="password" class="ipt-text" id="userPwd"
										name="userPwd" placeholder="建议使用6-20个字母、数字">
								</div>
							</div>
							<div class="mb-10">
								<div class="lab-out ">
									<label class="ipt-label inline-block line-h-20" for="userPwd2">确认密码:</label>
								</div>
								<div class="ipt-out mr-15">
									<input type="password" class="ipt-text" id="userPwd2"
										name="userPwd2" placeholder="确认密码">
								</div>
							</div>
							<div class="mb-10">
								<div class="lab-out ">
									<label class="ipt-label inline-block line-h-20" for="imgCode">图形验证码:</label>
								</div>
								<div class="ipt-out mr-15">
									<input type="text" class="ipt-text" id="imgCode"
										name="imgCode" maxlength="4" placeholder="请输入图形验证码">
									<img id="randCode"
										src="${pageContext.request.contextPath }/randcode"
										onclick="updateCode('randCode');" class="idcode"
										title="看不清，换一张">
								</div>
							</div>
							<div class="mb-10 clear">
								<div class="mr-15 clear col-sm-11 col-offset-1">
									<button id="reg" type="submit" class="btn radius0 btn-primary btn-small full-w">注册提交</button>
								</div>
							</div>
							<p class="mr-20 mb-10 pr-20 clear text-right">
								已有账户，请<a class="col-primary" href="${pageContext.request.contextPath}/login.do">登录</a>
							</p>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

	</div>
<jsp:include page="/common/foot.jsp"/>
</body>
</body>
</html>