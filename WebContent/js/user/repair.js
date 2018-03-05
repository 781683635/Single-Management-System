var path = "";
$().ready(function() {
	path = $("base").attr("href");
	var validator = $("#news_addForm").validate({
		rules : {
			"rl.name" : {
				required : true,
				minlength : 3
			},
		},
		messages : {
			"rl.name" : {
				required : "设备不能为空！",
				minlength :"设备名最小为3！" 
			},
			
		},errorPlacement : function(error, element) {
			error.insertAfter(element.parent());
		},
		submitHandler : function() {
			login();
		}
	});
});