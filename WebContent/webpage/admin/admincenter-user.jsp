<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理中心</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">


<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/comm/admin.js"></script>

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
<div class="wrap " style="min-height: 80% !important">
	<jsp:include page="/common/head/head7.jsp"/>
	<!-- banner -->
	    <!-- 管理员开始 -->
    	<div class="clear edu-bgbv1">
	    	<div class="col-sm-6  pr-0">
	    		<div class="col-sm-8 col-sm-offset-4 stu-titv1">
	    			<img src="${pageContext.request.contextPath}/images/admin/stu_tit1.jpg" alt="">
	    		</div>
	    		<div class="col-sm-8 col-sm-offset-4 pd-0 ">
	    			<!-- swiper2开始 -->
						<div class="swiper-containerv2 overflow-h">
						    <div class="swiper-wrapper">
						        <div class="swiper-slide swiper-no-swiping">
						            <div class="bor-stuv1 pd-20 pos-r">
						            	<div class="pos-a bg-h-blue col-white f-24 stu-periods pt-5 pb-5 pl-15 pr-15">
						            		24期
						            	</div>
						            	<p class="stu-pv1 col-black pb-10">杨杰</p>
						            	<p class="stu-pv2 col-black pb-10">中国电信集团公司董事、总经理、党组成员</p>
						            	<p class="stu-pv3 col-black pb-10">杨先生在中国电信行业拥有30年之经营及管理经验，是教授级高工，法国雷恩商学院工商管理博士（DBA）。杨先生曾任山西省电信公司总经理，中国电信北方电信事业部总经理，中国电信集团公司副总经理及中国电信股份有限公司执行副总裁等职务，现兼任中国电信股份有限公司执行董事、总裁兼首席运营官。</p>
						            </div>
						        </div>
						        <div class="swiper-slide swiper-no-swiping">
						            <div class="bor-stuv1 pd-20">
						            	<div class="pos-a bg-h-blue col-white f-24 stu-periods pt-5 pb-5 pl-15 pr-15">
						            		25期
						            	</div>
						            	<p class="stu-pv1 col-black pb-10">张继平</p>
						            	<p class="stu-pv2 col-black pb-10">中国电信集团公司副总经理、党组成员</p>
						            	<p class="stu-pv3 col-black pb-10">张先生在中国电信行业拥有32年之网络经营管理经验，是教授级高工，香港理工大学工商管理专业博士。张先生曾任中国邮电部电信总局副局长 、辽宁省邮电管理局电信技术中心主任，现兼任中国电信股份有限公司执行董事兼执行副总裁。</p>
						            </div>
						        </div>
						        <div class="swiper-slide swiper-no-swiping">
						            <div class="bor-stuv1 pd-20">
						            	<div class="pos-a bg-h-blue col-white f-24 stu-periods pt-5 pb-5 pl-15 pr-15">
						            		26期
						            	</div>
						            	<p class="stu-pv1 col-black pb-10">杨小伟</p>
						            	<p class="stu-pv2 col-black pb-10">中国电信集团公司副总经理、党组成员</p>
						            	<p class="stu-pv3 col-black pb-10">杨小伟先生具有超过30年的电信行业从业经验，是高级工程师，重庆大学管理工程系计算机技术专业硕士研究生。杨先生曾任重庆市通信管理局局长、联通集团重庆分公司总经理及广东分公司总经理、联通集团副总裁、联通集团董事及中国联通股份有限公司执行董事兼副总裁。杨先生亦曾担任中国联通有限公司董事及副总裁和联通华盛通信技术有限公司董事长，现兼任中国电信股份有限公司执行董事兼执行副总裁。</p>
						            </div>
						        </div>
						        <div class="swiper-slide swiper-no-swiping">
						            <div class="bor-stuv1 pd-20">
						            	<div class="pos-a bg-h-blue col-white f-24 stu-periods pt-5 pb-5 pl-15 pr-15">
						            		27期
						            	</div>
						            	<p class="stu-pv1 col-black pb-10">孙康敏</p>
						            	<p class="stu-pv2 col-black pb-10">中国电信集团公司副总经理、党组成员</p>
						            	<p class="stu-pv3 col-black pb-10">孙先生在中国电信行业拥有30年之经营管理经验，是高级工程师，香港大学与复旦大学合作举办工商管理学硕士。孙先生曾任四川省信息产业厅厅长，四川省通信管理局局长，四川省电信有限公司董事长、总经理等职务，现兼任中国电信股份有限公司执行董事兼执行副总裁。</p>
						            </div>
						        </div>
						        <div class="swiper-slide swiper-no-swiping">
						            <div class="bor-stuv1 pd-20">
						            	<div class="pos-a bg-h-blue col-white f-24 stu-periods pt-5 pb-5 pl-15 pr-15">
						            		28期
						            	</div>
						            	<p class="stu-pv1 col-black pb-10">柯瑞文</p>
						            	<p class="stu-pv2 col-black pb-10">中国电信集团公司副总经理、党组成员、工会主席</p>
						            	<p class="stu-pv3 col-black pb-10">作柯先生在中国电信行业拥有28年的经营管理经验，是高级工程师，法国雷恩商学院工商管理博士。柯先生曾任江西省邮电管理局副局长、党组成员，江西省电信公司副总经理、党组成员，中国电信集团公司市场部经理，江西省电信公司总经理、党组书记，中国电信集团公司人力资源部主任，现兼任中国电信股份有限公司执行董事兼执行副总裁。</p>
						            </div>
						        </div>
						        
						    </div>
						</div>
						<div class="swiper-paginationv2 text-center"></div>

	    			<!-- swiper2结束 -->
	    		</div>
	    	</div>
	    	<div class="col-sm-6 pd-0">
	    		<!-- swiper3开始 -->
					<div class="swiper-containerv3 overflow-h">
					    <div class="swiper-wrapper">
					    	<!-- 图片格式为950*750 -->
					        <div class="swiper-slide">
					            <img src="${pageContext.request.contextPath}/images/admin/stu_v1.jpg" alt="">
					        </div>
					        <div class="swiper-slide">
					            <img src="${pageContext.request.contextPath}/images/admin/stu_v2.jpg" alt="">
					        </div>
					        <div class="swiper-slide">
					            <img src="${pageContext.request.contextPath}/images/admin/stu_v3.jpg" alt="">
					        </div>
					        <div class="swiper-slide">
					            <img src="${pageContext.request.contextPath}/images/admin/stu_v4.jpg" alt="">
					        </div>
					        <div class="swiper-slide">
					            <img src="${pageContext.request.contextPath}/images/admin/stu_v5.jpg" alt="">
					        </div>
					    </div>
					</div>

    			<!-- swiper3结束 -->
	    		
	    	</div>
    	</div>
	<!-- 管理员结束 -->

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