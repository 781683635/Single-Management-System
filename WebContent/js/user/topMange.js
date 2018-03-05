var path = "",pageNum = 1, pageSize = 2, totalCount = 0, pageCount = 1, cardType = 1;

$().ready(function() {
	path=$("base").attr("href");
	initPage();
	var str = $("input[name='catCentre']").val();
	$("input[name='catCentre']").next().find("span").html($("input[name='catCentre']").parent().find(".opt li[value='"+str+"']").html());
	var st = $("input[name='bkCentre']").val();
	$("input[name='bkCentre']").next().find("span").html($("input[name='bkCentre']").parent().find(".opt li[value='"+st+"']").html());
});

function changeCb(cat,bk){
	$("#pageNum").val("1");
	$("#pageForm").submit();
}

function updRes(id,top){
	var ids = "";
	var trid = $("input:checkbox:checked");
	for ( var i = 0; i < trid.length; i++) {
		ids += trid[i].parentNode.id;
		if (i < (trid.length - 1))
			ids += ",";
	}
	
	if (ids == null || ids == "") {
		var messages = "至少选择以下的一条数据！";
		layer.open({
			title : "提示",
			content : messages,
			btn : [ "确定" ],
			yes : function(ly) {
				$("input[name='chebox']").focus();
				layer.close(ly);
			}
		});
	} else {
		updRes(ids, "delete", cardType);
	}
	$.ajax({
		url : path + "zTop.do",
		type : "post",
		dataType : "json",
		async : false,
		data : form,
		success : function(aj) {
			
		}
	});
}
 /*function catBkTop(){
	 var catCentre = $("input[name='catCentre']").val();
		var bk =  $("input[name='bkCentre']").val();
		if(isNull(catCentre)||isNull(bk)){
			var messages = "请选择首页和楼层！";
			layer.open({
				title : "提示",
				content : messages,
				btn : [ "确定" ],
				yes : function(ly) {
					layer.close(ly);
				}
			});
			return false;
		}
		$("#selCb input[name='rt.cat']").val(catCentre);
		$("#selCb input[name='rt.bk']").val(bk);
		$("#selCb input[name='rt.res_id']").val();
		var form = $("#selCb").serialize();
		xfm(form);
 }
 
 function xfm(form){
		$.ajax({
			url : path + "xfm.do",
			type : "post",
			dataType : "json",
			async : false,
			data : form,
			success : function(aj) {
				console.log(aj);
				var data = aj.obj;
				if(data.length>0){
					layer.open({
						title:"提示",
						content:"保存成功!",
						btn:["确定"],
						yes:function(){
							window.location.reload();
						}
					})
				}else{
					layer.open({
						title:"提示",
						content:"添加失败!",
						btn:["确定"],
						yes:function(){
							window.location.reload();
						}
					})
				}
			},
			error:function(data){
				if(data.responseText == "tosignin"){
					layer.open({
						title:"提示",
						content:"抱歉，请先登录!",
						btn:["确定"],
						yes:function(){
							window.location.href = path+"/loginui.do";
						}
					})
				}
			}
		})
		
	}*/