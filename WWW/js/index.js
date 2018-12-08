$(function(){
		$.ajax({
			type:"get",
			url:"http://localhost/app/index",
			//dataType:'jsonp',
			//jsonp:'callback',
			success: function(data){
				if(data.is_login){
					var $li = $('<li><a href="change_info.html">' + data.username + '</a></li>'
				+ '<li><a href="/app/loginout">loginout</a></li>')
				$li.appendTo($('.right'))
				}
				else{
					var $li = $('<li><a href="login.html">login</a></li>'
				+ '<li><a href="register.html">register</a></li>')
				$li.appendTo($('.right'))
				}
			}
		})
		$('#goods').click(function(){
			$.ajax({
			type:"get",
			url:"http://localhost/app/index",
			success: function(data){
				if(data.is_login){
					$(window).attr("location",'goods.html')
				}
				else{
					alert("请先登录！")
				}
			}
			})		
		})
		
		$('#analysis').click(function(){
			$.ajax({
			type:"get",
			url:"http://localhost/app/index",
			success: function(data){
				if(data.is_login){
					$(window).attr("location",'analysis.html')
				}
				else{
					alert("请先登录！")
				}
			}
			})		
		})
		
	})