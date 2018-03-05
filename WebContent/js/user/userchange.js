var path = "";
$().ready(function() {
	path = $("base").attr("href");
	var validator = $("#news_addForm").validate({
		rules : {
			"rl.name" : {
				required : true,
				minlength : 3
			},
			"rl.pwd" : {
				required : true,
				minlength : 6
			},
			"rl.zName" : {
				required : true,
				minlength : 3
			},
			"rl.moblie" : {
				required : true,
				minlength : 11
				
			},
			"rl.vdesc":{
				required : true,
				minlength :8
			}
			
			
		},
		messages : {
			"rl.name" : {
				required : "用户名不能为空！",
				minlength :"用户名最小为3！" 
			},
			"rl.pwd" : {
				required : "密码不能为空！",
				minlength : "密码最小值为6！"
			},
			"rl.zName" : {
				required : "真实姓名不能为空！",
				minlength : "真实姓名最小值为3！"
			},
			"rl.moblie" : {
				required : "手机号不能为空！",
				minlength : "手机号为11位！",
				
			},
			"rl.vdesc":{
				required : "个人简介不能为空！",
				minlength :"个人简介最小值为8！"
			}
			
		},errorPlacement : function(error, element) {
			error.insertAfter(element.parent());
		},
		submitHandler : function() {
			login();
		}
	});
	jQuery.validator.addMethod("isMobile",
		    function(value, element) {
		        var length = value.length;
		        return this.optional(element) || (length == 11 && testPhone(value));
		    },
		    "请正确填写您的手机号码。");
});