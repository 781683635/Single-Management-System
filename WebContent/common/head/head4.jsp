<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
	function logout(){
		if(confirm('您确定要退出系统吗?')){
			window.location.href="${pageContext.request.contextPath}/loginout.do";
		}
	}
</script>
<header class="clear " id="header">
	<div class="container clear">
		<div class="clear">
			<div class="nav-topbar pull-right pt-5">
				<ul class="clear">
					<li class="col-555 cur-p">欢迎：</li>
					<li class="col-555">&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a class="col-red" href="#">${ currentUser.role_name}</a></li>
					<li class="col-555 cur-p">进入本系统！</li>
					<li class="col-555">&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li class="col-555 cur-p"><a href="javascript:logout()">退出</a></li>
				</ul>
			</div>
		</div>
		<div class="row clear hidden-xs">
			<div class="col-sm-1 pd-0 mt-10 text-right mr-20">
				<a href="${pageContext.request.contextPath}/main.do">
					<img class="logo cur-p" src="${pageContext.request.contextPath}/images/main/logo.png" alt="亚太金融小镇" title="亚太金融小镇" >
				</a>
			</div>
				<div class="col-sm-10 mt-15 overflow-h ml-20 pl-1">
					<div class="nav clear bor-ccc bor-t-none bor-b-none bor-r-none">
						<div class="col-sm-2 pl-0 pr-0 pt-5 cur-p poa-r overflow-h ml--5 ">
							<div class="nav-triangle-v1"></div>
							<div class="nav-triangle-v3"></div>
							<div class=" t-none pt-20 town-hovbg" >
								<a href="${pageContext.request.contextPath}/main.do">
									<h3 class="f-16 pl-20 col-black">电信之家</h3>
									<p class="mt-5 line-h-15 f-11 pl-5 text-line-2 let-spa-1">三亚电信员工温暖的家,一个交流互相帮助的中心</p>
								</a>
							</div>
						</div>
						<div class="col-sm-2 pl-0 pr-0 pt-5 cur-p poa-r overflow-h ml-1">
							<div class="nav-list">
								<div class="nav-triangle-v2"></div>
								<div class="nav-triangle-v8"></div>
								<div class="t-none pt-20 fund-hovbg">
									<a href="${pageContext.request.contextPath}/repair.do">
										<h3 class="f-16 col-black pl-20">故障中心</h3>
										<p class="mt-5 line-h-15 f-11 pl-5 text-line-2 let-spa-1">管理故障中心，线路设备的报修及后续问题处理</p>
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-2 pl-0 pr-0 pt-5 cur-p poa-r overflow-h ml-1">
							<div class="nav-list2">
								<div class="nav-triangle-v1"></div>
								<div class="nav-triangle-v5"></div>						
								<div class="t-none pt-20 educ-hovbg" style="background:  -webkit-linear-gradient(top, #2F90BA 0%,#297DA1 60%,#257192 80%, #48849E 100%);
  background:  -o-linear-gradient(bottom, #2F90BA 0%,#297DA1 60%,#257192 80%, #48849E 100%);
  background:  -moz-linear-gradient(bottom, #2F90BA 0%,#297DA1 60%,#257192 80%, #48849E 100%);
  background:  linear-gradient(to bottom, #2F90BA 0%,#297DA1 60%,#257192 80%, #48849E 100%)">
									<a href="${pageContext.request.contextPath}/history.do">
										<h3 class="f-16 pl-20 col-white">历史查询</h3>
										<p class="mt-5 line-h-15 f-11 pl-5 text-line-2 let-spa-1 col-white">查询所有的历史和记录，打印报表等</p>
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-2 pl-0 pr-0 pt-5 cur-p poa-r overflow-h ml-1">
							<div class="nav-list">
								<div class="nav-triangle-v2"></div>
								<div class="nav-triangle-v6"></div>
								<div class="t-none pt-20 research-hovbg">
									<a href="${pageContext.request.contextPath}/usercenter.do">
										<h3 class="f-16 col-black pl-20">用户中心</h3>
										<p class="mt-5 line-h-15 f-11 pl-5 text-line-2 let-spa-1">用户自己的主页，包括账号的设置和修改功能</p>
									</a>
								</div>
							</div>
						</div>


						<div class="col-sm-2 pl-0 pr-0 pt-5 cur-p poa-r overflow-h ml-1">
							<div class="nav-list2">
								<div class="nav-triangle-v1"></div>
								<div class="nav-triangle-v7"></div>
								<div class="t-none pt-20 serve-hovbg">
									<a href="${pageContext.request.contextPath}/workcenter.do">
										<h3 class="f-16 col-black pl-20">员工中心</h3>
										<p class="mt-5 line-h-15 f-11 pl-5 text-line-2 let-spa-1">员工的主页，员工个人信息的完善</p>
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-2 pl-0 pr-0 pt-5 cur-p poa-r overflow-h ml-1">
							<div class="nav-list">
								<div class="nav-triangle-v2"></div>
								<div class="nav-triangle-v4"></div>
								<div class="t-none pt-20 news-hovbg">
									<a href="${pageContext.request.contextPath}/admin.do">
										<h3 class="f-16 col-black pl-20">管理中心</h3>
										<p class="mt-5 line-h-15 f-11 pl-5 text-line-2 let-spa-1">管理员的中心，管理所有功能</p>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
</header>
<div class="gra-pri"></div>