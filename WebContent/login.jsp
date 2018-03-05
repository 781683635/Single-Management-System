<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>三亚电信员工工单管理系统-用户登录</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/sky-forms.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/main.js"></script>

<script type="text/javascript">
	function checkForm(){
		var userName=document.getElementById("user_name").value;
		var password=document.getElementById("user_pwd").value;
		if(userName==null || userName==""){
			document.getElementById("login_err").innerHTML="用户名不能为空";
			return false;
		}
		if(password==null || password==""){
			document.getElementById("login_err").innerHTML="密码不能为空";
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div class="wrap bg-primary ">
	<jsp:include page="/common/head/head.jsp"/>
		<div class="container pd-0" style="padding-top: 8%;"> 
            <div class="row clear mt-20 pt-20">
                <div class="col-md-8 col-sm-7 hidden-xs">
                     <img src="${pageContext.request.contextPath}/images/reg/loginbg2.jpg" alt="" class="">
                </div>
                <div class="col-md-4 col-sm-5 mt-20 mb-20">
                    <div class="bg-white pt-20 pb-20 mr-10 ml-10 shadow-rb">
                        <div class="pt-10">
                            <p class="pd-5 text-center f-18">登录</p>                           
                            <form id="submitForm" class="sky-form pt-20" method="post" name="loginform" action="${pageContext.request.contextPath}/loginui.do" onsubmit="return checkForm()">
                                <div class="pd-10 tabbar clear">
                                  <div class="col-sm-4 text-center f-14">
                                      <label class=" state-success"><input type="radio" checked="checked" name="radio" value="1">用户</label>
                                  </div>
                                  <div class="col-sm-4 text-center f-14">
                                      <label class=" state-success"><input type="radio" name="radio" value="2">员工</label>
                                  </div>
                                  <div class="col-sm-4 text-center f-14">
                                      <label class=" state-success"><input type="radio" name="radio" value="3">管理</label>
                                  </div>
                                </div>
                                <div class="ipt-form mb-5">
                                    <div class="lab-out-v2 ">
                                        <label class="ipt-label inline-block line-h-20">用户名:</label>
                                    </div>
                                    <div class="ipt-out-v2 mr-15">
                                        <input type="text" id="user_name" name="user_name" value="${user.name }"  class="ipt-text radius0" placeholder="用户名/手机号">
                                    </div>
                                </div>
                                <div class="ipt-form clear">
                                    <div class="lab-out-v2 ">
                                        <label class="ipt-label inline-block line-h-20"></label>
                                    </div>
                                    <div class="ipt-out-v2 ">
                                        <div id="login_tip">
											<span id="login_err" class="sty_txt2">${errorMsg}</span>
										</div>
                                    </div>
                                </div>
                                
                                <div class="ipt-form mb-15">
                                    <div class="lab-out-v2">
                                        <lable class="ipt-label inline-block line-h-20">密码:</lable>
                                    </div>
                                    <div class="ipt-out-v2 mr-15">
                                        <input type="password" id="user_pwd"  name="user_pwd"  class="ipt-text radius0" value="${user.user_pwd }" placeholder="密码">
                                    </div>
                                </div>
                                <div class="clear mb-10">
                                    <div class="mr-15 clear col-sm-11 col-offset-1">
                                         <button id="login_sub" type="submit" class="btn radius0 btn-primary btn-small full-w">登录</button>
                                    </div>
                                </div>
                                <p class="text-right f-12 mr-20 mb-10 clear">没有账户，<a class="col-red" href="${pageContext.request.contextPath}/reg.do">立即注册</a>&nbsp;一个新账户</p>
                            </form>
                        </div>
                    </div>   
                </div>
            </div>
        </div>

	</div>
<jsp:include page="/common/foot.jsp"/>
</body>
</html>