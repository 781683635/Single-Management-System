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
	<jsp:include page="/common/head/head6.jsp"/>
	<!-- banner -->
	    <!-- 管理员开始 -->
    	<div class="clear edu-bgbv1">
	    	<div class="col-sm-6  pr-0">
	    		<div class="col-sm-8 col-sm-offset-4 stu-titv1">
	    			<img src="${pageContext.request.contextPath}/images/worker/stu_tit1.jpg" alt="">
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
						            	<p class="stu-pv1 col-black pb-10">礼仪</p>
						            	<p class="stu-pv2 col-black pb-10">中国电信集团三亚公司，员工礼仪培训。</p>
						            	<p class="stu-pv3 col-black pb-10">礼仪是在人际交往中，以一定的约定俗成的程序方式来表现的律己敬人的过程，涉及穿着、交往、沟通、情商等方面的内容。礼仪是我们在生活中不可缺少的一种能力。从个人修养的角度来看，礼仪可以说是一个人内在修养和素质的外在表现。从交际的角度来说，礼仪可以说是人际交往中适用的一种艺术、一种交际方式或交际方法,是人际交往中约定俗成的示人以尊重、友好的习惯做法。</p>
						            </div>
						        </div>
						        <div class="swiper-slide swiper-no-swiping">
						            <div class="bor-stuv1 pd-20">
						            	<div class="pos-a bg-h-blue col-white f-24 stu-periods pt-5 pb-5 pl-15 pr-15">
						            		25期
						            	</div>
						            	<p class="stu-pv1 col-black pb-10">认真</p>
						            	<p class="stu-pv2 col-black pb-10">电信员工积极肯干，责任心强，细心，独立又协同，有创新能力。</p>
						            	<p class="stu-pv3 col-black pb-10">员工生活上，艰苦，积极参加适当的体育煅炼以保持健康体魄，充足精力、有良好的日常生活习惯，喜欢听音乐，看书和旅行，团结、关心、帮助同学并与他们融洽沟通，适应性较强。</p>
						            </div>
						        </div>
						        <div class="swiper-slide swiper-no-swiping">
						            <div class="bor-stuv1 pd-20">
						            	<div class="pos-a bg-h-blue col-white f-24 stu-periods pt-5 pb-5 pl-15 pr-15">
						            		26期
						            	</div>
						            	<p class="stu-pv1 col-black pb-10">合作</p>
						            	<p class="stu-pv2 col-black pb-10">电信员工秉承着合作共赢的态度。</p>
						            	<p class="stu-pv3 col-black pb-10">30%的人永远不可能相信你。不要让你的同事为你干活，而让我们的同事为我们的目标干活，共同努力，团结在一个共同的目标下面，就要比团结在你一个企业家底下容易的多。所以首先要说服大家认同共同的理想，而不是让大家来为你干活</p>
						            </div>
						        </div>
						        <div class="swiper-slide swiper-no-swiping">
						            <div class="bor-stuv1 pd-20">
						            	<div class="pos-a bg-h-blue col-white f-24 stu-periods pt-5 pb-5 pl-15 pr-15">
						            		27期
						            	</div>
						            	<p class="stu-pv1 col-black pb-10">纪律</p>
						            	<p class="stu-pv2 col-black pb-10">中国电信员工维护集体利益并保证工作进行而要求成员必须遵守的规章</p>
						            	<p class="stu-pv3 col-black pb-10">纪律既然是维持人们一定关系的规则，那么就要求一定集体成员必须执行。那么，它就必然带有强制性。纪律是以行为的限制、以服从为前提的。无论是象征着统治阶级权力和意志的政治纪律，还是反映社会化大生产规律的各行各业的职业纪律；无论是维护社会正常秩序的规章制度，还是机关团体的各种公约章程，都具有强制性。</p>
						            </div>
						        </div>
						        <div class="swiper-slide swiper-no-swiping">
						            <div class="bor-stuv1 pd-20">
						            	<div class="pos-a bg-h-blue col-white f-24 stu-periods pt-5 pb-5 pl-15 pr-15">
						            		28期
						            	</div>
						            	<p class="stu-pv1 col-black pb-10">踏实</p>
						            	<p class="stu-pv2 col-black pb-10">电信员工切实，不浮躁、工作踏实，踏实肯干、服务第一线。</p>
						            	<p class="stu-pv3 col-black pb-10">踏实做人是一种境界，一种以退为进取储备奋发力量的竞争意识。不敢大言什么地低成海，人低成王，或许对取得成功有好处。不管名有多显、位有多高、钱有多丰，面对纷繁复杂的社会，也应该保持做人的踏实。</p>
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
					            <img src="${pageContext.request.contextPath}/images/worker/stu_v1.jpg" alt="">
					        </div>
					        <div class="swiper-slide">
					            <img src="${pageContext.request.contextPath}/images/worker/stu_v2.jpg" alt="">
					        </div>
					        <div class="swiper-slide">
					            <img src="${pageContext.request.contextPath}/images/worker/stu_v3.jpg" alt="">
					        </div>
					        <div class="swiper-slide">
					            <img src="${pageContext.request.contextPath}/images/worker/stu_v4.jpg" alt="">
					        </div>
					        <div class="swiper-slide">
					            <img src="${pageContext.request.contextPath}/images/worker/stu_v5.jpg" alt="">
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