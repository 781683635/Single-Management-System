<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>维修中心-员工</title>
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
	<jsp:include page="/common/head/head3.jsp"/>
	<div class="container clear">
					<div class="col-sm-12">
				<div class="row">
					<h3 class="f-14 gradient-gray clear">
						<span class="pull-left pd-10 line-h-20 f-18">用户报修未处理</span>
					</h3>
				</div>
				<br/>
				<!-- 历史列表 -->
				<div class="clear mb-10 ">
					<table cellspacing="0" class="bor-primary full-w text-center newline line-h-20 ">
						<caption class="f-16 mb-10">用户报修未处理记录</caption>
						<thead class="bg-l-blue">
							<tr class="">
								<th class="col-1">设备ID</th>
								<th class="col-2">报修人</th>
								<th class="col-1">设备名</th>
								<th class="col-1">报修时间</th>
								<th class="col-3">描述</th>
								<th class="col-1">操作</th>
							</tr>
						</thead>
						<tbody class="text-center line-h-20" id="tradelist">
							<c:forEach var="listMap" items="${listMap }" varStatus="vs">
								<tr class="<c:if test='${vs.index%2==1 }'> bg-l-green </c:if> <c:if test='${vs.index%2!=1 }'>bg-white</c:if>">
									<td class="pd-5" name="repairId" id="repairId">${listMap.id }</td>
									<td class="pd-5">${listMap.role_name }</td>
									<td class="pd-5">${listMap.devicename }</td>
									<td class="pd-5">${listMap.time }</td>
									<td class="pd-5">${listMap.about }</td>
									<td class="pl-10 pr-10">
										<div class="sel-ck search text-center" id="layer">
											<div class="bg-primary">
												<span class="inline-block icon-edit text-center f-16 col-white"></span>
												<i class="icon-caret-down f-20 col-white"></i>
											</div>
											<ul class="opt opt-ck">
												<li class="pd-5 text-center hov-primary cur-p bor-b-l" type="button" onclick="javascript:window.location='${pageContext.request.contextPath }/repairworkercontact.do?idr=${listMap.id}'">正在联系</li>
												<li class="pd-5 text-center hov-primary cur-p bor-b-l type="button" onclick="javascript:window.location='${pageContext.request.contextPath }/repairworkerrepairing.do?idr=${listMap.id}'" >修复中</li>
												<li class="pd-5 text-center hov-primary cur-p bor-b-l type="button" onclick="javascript:window.location='${pageContext.request.contextPath }/repairworkerrepairend.do?idr=${listMap.id}'" >已修复</li>
												<li class="pd-5 text-center hov-primary cur-p bor-b-l type="button" onclick="javascript:window.location='${pageContext.request.contextPath }/repairworkerreport.do?idr=${listMap.id}'" >已上报</li>
												<li class="pd-5 text-center hov-primary cur-p bor-b-l type="button" onclick="javascript:window.location='${pageContext.request.contextPath }/repairworkerdel.do?idr=${listMap.id}'" >删除</li>
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