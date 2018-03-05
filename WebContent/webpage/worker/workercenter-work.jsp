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
	<jsp:include page="/common/head/head6.jsp"/>
		<div class="container clear">
			<jsp:include page="/common/menu/menu-worker1.jsp"/>
			<!-- 内容开始 -->
			<div class="col-sm-10">
				<!-- 第一栏 -->
				<div class="row clear bor-light mb-15">
					<div class="col-sm-3 pd-20">
						<div class="clear">
							<img class="pull-left full-wh use-img full-radius" src="${pageContext.request.contextPath}/images/worker/1.jpg" alt="">
							<div class="pull-left pl-15">
								<p class="col-333 f-16 pt-5">${listMap[0].role_name }<span class="col-555 f-12"> 
							</div>
						</div>
					</div>
					<div class="col-sm-6 pd-20">
						<div class="col-sm-3 pr-10 text-right f-16 pt-10 pb-10">电话：</div>
						<div class="col-sm-9 pl-10 text-left f-16 pt-10 pb-10">${listMap[0].worker_mobile }</div>
						<div class="col-sm-3 pr-10 text-right f-16 pt-10 pb-10">Email：</div>
						<div class="col-sm-9 pl-10 text-left f-16 pt-10 pb-10">${listMap[0].worker_email }</div>
						<div class="col-sm-3 pr-10 text-right f-16 pt-10 pb-10">职务：</div>
						<div class="col-sm-9 pl-10 text-left f-16 pt-10 pb-10">${listMap[0].worker_about }</div>

					</div>
					
				</div>
				<!-- 第二栏 -->
				<div class="row clear bor-light mb-15">
					<div class="col-sm-12 pd-20">
						<div>
						    <p class="clear">
						    	<strong class="f-14 col-666 pull-left">我的工作内容</strong> 
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
								            	报修人
								            </th>
								            <th class="col-2 bor-ccc">
								            	维修时间
								            </th>
								            <th class="col-2 bor-ccc pl-0 pr-0">
								            	状态
								            </th>
								            <th class="col-2 bor-ccc pl-0 pr-0">
								            	操作
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
								                 <td class="bor-ccc" >
								                 	<button class="btn-primary" type="button" onclick="javascript:window.location='${pageContext.request.contextPath }/workercenterworkend.do?id=${list.id}'">已修复</button>
								                 	<button class="btn-primary" type="button" onclick="javascript:window.location='${pageContext.request.contextPath }/workercenterworking.do?id=${list.id}'" >修复中</button>
								                 	<button class="btn-primary" type="button" onclick="javascript:window.location='${pageContext.request.contextPath }/workercenterworkdel.do?id=${list.id}'">删除</button> 
							                 	
								                 </td>
								             </tr>	
								         </c:forEach>	
								     </tbody>
								 </table>
							</div>
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