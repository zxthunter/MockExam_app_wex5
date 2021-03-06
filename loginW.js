define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/AppTest/jquery.md5");
	var Model = function(){
		this.callParent();
	};
//点击登陆事件
	Model.prototype.button1Click = function(event){
	var self = this;
	var mobile = this.comp("loginData").getValue("mobile");
	var password = this.comp("loginData").getValue("password");
	var success = function(xhr){
		console.log(xhr);
		var isSuccess = xhr.success;
		if (isSuccess){
			$(self.getElementByXid("div4")).hide();
			$(self.getElementByXid("div8")).hide();
			self.comp("windowDialog1").open({"data":{"mobile":mobile}});
		}else{
			$(self.getElementByXid("div8")).hide();
			$(self.getElementByXid("div4")).show();
		}
	}
	var error = function(){
		$(self.getElementByXid("div4")).hide();
		$(self.getElementByXid("div8")).show();
	}
	var hash = $.md5(password);
		$.ajax({
				"type" : "post",
				"async" : true,
				"dataType" : "json",
				"url" : "http://220.163.82.253:8070/open/candidate.htm",
				"data" : { 
					"mobile":mobile,
					"password":hash
					},
				"success" : success,
				"global":false,
				"error":error
				}
				);
				
	};

	return Model;
});