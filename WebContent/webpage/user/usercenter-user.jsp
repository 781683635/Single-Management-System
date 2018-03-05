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
	<jsp:include page="/common/head/head5.jsp"/>
		<div class="container clear">
			<jsp:include page="/common/menu/menu-user1.jsp"/>
			<!-- 内容开始 -->
			<div class="col-sm-10">
				<!-- 第一栏 -->
				<div class="row clear bor-light mb-15">
					<div class="col-sm-3 pd-20">
						<div class="clear">
							<img class="pull-left full-wh use-img full-radius" src="${pageContext.request.contextPath}/images/user/14.jpg" alt="">
							<div class="pull-left pl-15">
								<p class="col-333 f-16 pt-5">${listMap[0].role_name } <span class="col-555 f-12"> 
							</div>
						</div>
					</div>
					<div class="col-sm-6 pd-20">
						<div class="col-sm-3 pr-10 text-right f-16 pt-10 pb-10">电话：</div>
						<div class="col-sm-9 pl-10 text-left f-16 pt-10 pb-10">${listMap[0].user_mobile }</div>
						<div class="col-sm-3 pr-10 text-right f-16 pt-10 pb-10">性别：</div>
						<div class="col-sm-9 pl-10 text-left f-16 pt-10 pb-10">
							<c:if test="${listMap[0].user_sex==1 }">女</c:if>
							<c:if test="${listMap[0].user_sex==0 }">男</c:if>
						</div>
						<div class="col-sm-3 pr-10 text-right f-16 pt-10 pb-10">地址：</div>
						<div class="col-sm-9 pl-10 text-left f-16 pt-10 pb-10">${listMap[0].user_address }</div>
						<div class="col-sm-3 pr-10 text-right f-16 pt-10 pb-10">Email：</div>
						<div class="col-sm-9 pl-10 text-left f-16 pt-10 pb-10">${listMap[0].user_email }</div>

					</div>

				</div>
				<!-- 第二栏 -->
				<div class="row clear bor-light mb-15">
					<div class="col-lg-9 col-md-9 col-sm-8 pd-20">
						<div>
						    <p class="clear line-h-25">
						    	<strong class="f-14 col-666 pull-left">我的报修设备</strong> 
						    	<button class="pull-right btn btn-primary btn-tiny" type="button" onclick="javascript:window.location='${pageContext.request.contextPath }/repair.do'">添加</button>
						    </p>
						    <div class="pt-20 clear mt-10">
			<table class="hade bor-b-ccc col-12">
				<tbody class="col-12"> 
					<tr class="text-center gradient-gray">
			        	<th class="text-center col-2 pd-10 bor-ccc">
			             	设备名称
			            </th>
			            <th class="col-2 bor-ccc pl-0 pr-0">
			            	故障描述
			            </th>
			            <th class="col-2 bor-ccc pl-0 pr-0">
			            	维修人
			            </th>
			            <th class="col-2 bor-ccc">
			            	维修时间
			            </th>
			            <th class="col-2 bor-ccc pl-0 pr-0">
			            	状态
			            </th>
			        </tr>
			         <c:forEach var="list" items="${list}">
			             <tr class="text-center passValue" >
			                 <td class="text-center pd-10 bor-ccc" >
								${list.devicename }
			                 </td>
			                 <td class="bor-ccc" >
								${list.about }
			                 </td>
			                 <td class="bor-ccc" >
								${list.role_name }
			                 </td>
			                 <td class="bor-ccc" >
								${list.time }
			                 </td>
			                 <td class="bor-ccc" >
			                 	${list.state }
			                 </td>
			             </tr>	
			         </c:forEach>	
			     </tbody>
			 </table>
									    </div>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-4 pd-20 bor-light bor-t-none bor-r-none bor-b-none">
									<p class="pd-10 f-14 f-w text-center">热门信息推荐</p>
									<!-- 会员推荐轮播 -->
									<div class="pos-r">
									<div class="swiper-container full-wh overflow-h swiper1">
									    <div class="swiper-wrapper">
									        <div class="swiper-slide"><a><img class="img240-135" src="${pageContext.request.contextPath}/images/user/6.jpg"></a></div>
									        <div class="swiper-slide"><a><img class="img240-135" src="${pageContext.request.contextPath}/images/user/7.jpg"></a></div>
									        <div class="swiper-slide"><a><img class="img240-135" src="${pageContext.request.contextPath}/images/user/8.jpg"></a></div>
									        <div class="swiper-slide"><a><img class="img240-135" src="${pageContext.request.contextPath}/images/user/9.jpg"></a></div>
									    </div>
								    
									</div>
									<div class="swiper-button-prev swi-prev1" ></div>
									<div class="swiper-button-next swi-next1" ></div>
									</div>	
								</div>
							</div>
							<!-- 第三栏 -->
						</div>
					<!-- 内容结束 -->
					</div>
			</div>
	<jsp:include page="/common/foot.jsp"/>
	

  	




    <script>
		var mySwiper1 = new Swiper('.swiper1', {
		    loop: true,
		    autoplay : 5000,
		    nextButton: '.swi-prev1',
    		prevButton: '.swi-next1',
			autoplayDisableOnInteraction : false,
	})
		var mySwiper2 = new Swiper('.swiper2', {
		loop: true,
		autoplay : 6000,
		autoplayDisableOnInteraction : false,
        pagination: '.swiper-pagination',
        slidesPerView: 5,
        paginationClickable: true,
        spaceBetween: 30
	});
	</script>
</body>
</body>
</html>