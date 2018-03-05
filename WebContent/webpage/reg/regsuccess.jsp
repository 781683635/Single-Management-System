<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>重置密码成功</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">


<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/main.js"></script>

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
	<jsp:include page="/common/head/head.jsp"/>
	<!-- banner -->
	    <!-- Swiper -->
	    <div class="swiper-containerv1 pos-r">
	        <div class="swiper-wrapper">
	            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/images/main/banner1.jpg" alt=""></div>
	            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/images/main/banner2.jpg" alt=""></div>
	            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/images/main/banner3.jpg" alt=""></div>
	            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/images/main/banner4.jpg" alt=""></div>
	            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/images/main/banner5.jpg" alt=""></div>
	        </div>
	        <!-- Add Pagination -->
	        <div class="swiper-paginationv1 text-center pos-a"></div>
		    <div class="mba-ban-tit pos-a full-w">
		    	<div class="container">
		    		<div class="col-sm-2 pt-20 mt-20">
		    			<img src="${pageContext.request.contextPath}/images/main/news_tit.png" alt="">
		    		</div>
		    		<div class="col-sm-6 mt-20">
		    			<div class="col-sm-6">
		    				<img class="pro-img-2" src="${pageContext.request.contextPath}/images/main/banner_tit1.jpg" alt="">
		    				<p class="f-20 f-w line-h-25 col-333 cur-d ban-tit-pv1">
		    					海南电信高标准完成博鳌亚洲论坛年会通信保障
		    				</p>
		    				<p class="clear">
		    					<span class="pull-left f-30 col-h-blue cur-d ban-tit-spv2">30</span>
		    					<span class="pull-right f-16 col-h-blue cur-p ban-tit-spv1">更多</span>
		    				</p>
		    				<p>
		    					<span class="f-16 col-h-blue cur-d ban-tit-spv1">MAR</span>
		    				</p>
		    			</div>
		    			<div class="col-sm-6">
		    				<img class="pro-img-2" src="${pageContext.request.contextPath}/images/main/banner_tit2.jpg" alt="">
		    				<p class="f-20 f-w line-h-25 col-333 cur-d ban-tit-pv1">
		    					精心组织准备重点维护保障,电信服务人员现场服务。
		    				</p>
		    				<p class="clear">
		    					<span class="pull-left f-30 col-h-blue cur-d ban-tit-spv2">29</span>
		    					<span class="pull-right f-16 col-h-blue cur-p ban-tit-spv1">更多</span>
		    				</p>
		    				<p>
		    					<span class="f-16 col-h-blue cur-d ban-tit-spv1">MAR</span>
		    				</p>
		    			</div>
		    			<div class="col-sm-12 clear text-center mt-10">
		    				<div class="f-26 pull-left pos-r col-lg-offset-3 col-md-offset-1 cur-p bor-emba btn-ban-tit">
		    					<i class="col-white dis-n pos-a ban-tit-iv2">>></i>
		    					<i class="pos-r ban-tit-iv1 col-h-blue">查看更多</i>
		    				</div>
		    			</div>
		    		</div>
		    		<div class="col-sm-4 mt-20">
		    			<div class="clear pb-10">
		    				<div class="pull-left col-sm-4">
		    					<p class="ban-tit-pv2 col-h-blue cur-d">22</p>
		    					<p class="ban-tit-pv3 col-h-blue text-center cur-d">2017-03</p>
		    				</div>
		    				<div class="pull-left col-sm-8 pt-10">
		    					<p class="f-16 col-666 cur-d text-line-2 newline">
		    						海南电信高标准完成博鳌亚洲论坛年会通信保障.
		    					</p>
		    					<p class="f-13 col-333 cur-d text-line-4 newline line-h-15 pt-10">
		    						中国电信海南公司认真落实“博鳌亚洲论坛2017年年会通信保障方案”...<span class="col-h-blue cur-p">更多</span>
		    					</p>
		    				</div>
		    			</div>
		    			<div class="clear pb-10">
		    				<div class="pull-left col-sm-4">
		    					<p class="ban-tit-pv2 col-h-blue cur-d">18</p>
		    					<p class="ban-tit-pv3 col-h-blue text-center cur-d">2017-02</p>
		    				</div>
		    				<div class="pull-left col-sm-8 pt-10">
		    					<p class="f-16 col-666 cur-d text-line-2 newline">
		    						精心组织准备重点维护保障
		    					</p>
		    					<p class="f-13 col-333 cur-d text-line-4 newline line-h-15 pt-10">
		    						年会期间，来自多个国家和地区的与会代表及新闻媒体云集海南省琼海市滨海小镇博鳌...<span class="col-h-blue cur-p">更多</span>
		    					</p>
		    				</div>
		    			</div>
		    			<div class="clear pb-10">
		    				<div class="pull-left col-sm-4">
		    					<p class="ban-tit-pv2 col-h-blue cur-d">25</p>
		    					<p class="ban-tit-pv3 col-h-blue text-center cur-d">2017-02</p>
		    				</div>
		    				<div class="pull-left col-sm-8 pt-10">
		    					<p class="f-16 col-666 cur-d text-line-2 newline">
		    						光网wifi双千兆 现场通信畅通无阻
		    					</p>
		    					<p class="f-13 col-333 cur-d text-line-4 newline line-h-15 pt-10">
		    						海南电信不断总结经验，持续提高网络能力和服务水平，2016年底还率先在海南启动了千兆光宽带服务...<span class="col-h-blue cur-p">更多</span>
		    					</p>
		    				</div>
		    			</div>

		    		</div>
		    	</div>
		    </div>
	    </div>


</div>
	<jsp:include page="/common/foot.jsp"/>
	

  	




    <script>
		var swiper = new Swiper('.swiper-containerv1', {
		    pagination: '.swiper-paginationv1',
		    paginationClickable: true,
		    autoplay : 10000,
		    speed:600,
		    loop : true,
		});

    </script>
</body>
</body>
</html>