$(function() {

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



	$.ajax({
		type: "get",
		url: "http://localhost/app/show_all_goods/",
		success: function(data) {
			var aData = data.masks;
				$('.goods').empty();
				for(var i = 0; i < aData.length; i++) {
					var $div = $(
					'<div class="goods_detail">' +
					'<img class="imgone" src="' + aData[i].goods_img + '" alt="">' +					'<br>' +

					'<div class="describe">' +
					'<span class="price">￥' + aData[i].goods_price + '</span>' +
					'<br>' +
					'<span class="goodsname">' + aData[i].goods_name + '&nbsp;&nbsp;&nbsp;</span>' +
					'<span class="goodssale">销量：<span>' + aData[i].sales +'</span></span>' +
				        '<br>' +
					'<span class="shop">' + aData[i].shops + '</span>' +
					'</div>' +
					'</div>')
				$div.appendTo($('.goods'));
				}
		}
	});

	$.ajax({
		type: "get",
		url: "http://localhost/app/index",
		success: function(data) {
			if(data.is_login) {
				var $li = $('<li><a href="change_info.html">' + data.username + '</a></li>' +
					'<li><a href="/app/loginout">退出</a></li>')
				$li.appendTo($('.right'))
			} else {
				var $li = $('<li><a href="login.html">登录</a></li>' +
					'<li><a href="register.html">注册</a></li>')
				$li.appendTo($('.right'))
			}
		}
	})

	$('.subitem1').click(function() {
		var goodsname = $(this).children('a').text()
		$.ajax({
			type: "get",
			url: "http://localhost/app/classify_lipsticks/",
			data: {
				"goodsname": goodsname
			},
			success: function(data) {
				console.log(data)
				var aData = data.lipsticks;
				$('.goods').empty();
				for(var i = 0; i < aData.length; i++) {
					var $div = $(
					'<div class="goods_detail">' +
					'<img class="imgone" src="' + aData[i].goods_img + '" alt="">' +					'<br>' +
					'<div class="describe">' +
					'<span class="price">￥' + aData[i].goods_price + '</span>' +
					'<br>' +
					'<span class="goodsname">' + aData[i].goods_name + '&nbsp;&nbsp;&nbsp;</span>' +
					'<span class="goodssale">销量：<span>' + aData[i].sales +'</span></span>' +
				        '<br>' +
					'<span class="shop">' + aData[i].shops + '</span>' +
					'</div>' +
					'</div>')
				$div.appendTo($('.goods'));
				}
			}
		});
	});
	
	$('.subitem2').click(function() {
		var goodsname = $(this).children('a').text()
		//console.log(goodsname)
		$.ajax({
			type: "get",
			url: "http://localhost/app/classify_masks/",
			data: {
				"goodsname": goodsname
			},
			success: function(data) {
				//console.log(data)
				var aData = data.masks;
				$('.goods').empty();
				for(var i = 0; i < aData.length; i++) {
					var $div = $(
					'<div class="goods_detail">' +
					'<img class="imgone" src="' + aData[i].goods_img + '" alt="">' +					'<br>' +
					'<div class="describe">' +
					'<span class="price">￥' + aData[i].goods_price + '</span>' +
					'<br>' +
					'<span class="goodsname">' + aData[i].goods_name + '&nbsp;&nbsp;&nbsp;</span>' +
					'<span class="goodssale">销量：<span>' + aData[i].sales +'</span></span>' +
				        '<br>' +
					'<span class="shop">' + aData[i].shops + '</span>' +
					'</div>' +
					'</div>')
				$div.appendTo($('.goods'));
				}			
			}
		});
	});


	$('#subitem3').click(function() {
		$.ajax({
			type: "get",
			url: "http://localhost/app/classify_perfume/",
			success: function(data) {
				//console.log(data)
				var aData = data.perfume;
				$('.goods').empty();
				for(var i = 0; i < aData.length; i++) {
					var $div = $(
					'<div class="goods_detail">' +
					'<img class="imgone" src="' + aData[i].goods_img + '" alt="">' +					'<br>' +
					'<div class="describe">' +
					'<span class="price">￥' + aData[i].goods_price + '</span>' +
					'<br>' +
					'<span class="goodsname">' + aData[i].goods_name + '&nbsp;&nbsp;&nbsp;</span>' +
					'<span class="goodssale">销量：<span>' + aData[i].sales +'</span></span>' +
				        '<br>' +
					'<span class="shop">' + aData[i].shops + '</span>' +
					'</div>' +
					'</div>')
				$div.appendTo($('.goods'));
				}			
			}
		});
	});
	

	$('#subitem4').click(function() {
		$.ajax({
			type: "get",
			url: "http://localhost/app/classify_bbcream/",
			success: function(data) {
				//console.log(data)
				var aData = data.bbcream;
				$('.goods').empty();
				for(var i = 0; i < aData.length; i++) {
					var $div = $(
					'<div class="goods_detail">' +
					'<img class="imgone" src="' + aData[i].goods_img + '" alt="">' +					'<br>' +
					'<div class="describe">' +
					'<span class="price">￥' + aData[i].goods_price + '</span>' +
					'<br>' +
					'<span class="goodsname">' + aData[i].goods_name + '&nbsp;&nbsp;&nbsp;</span>' +
					'<span class="goodssale">销量：<span>' + aData[i].sales +'</span></span>' +
				        '<br>' +
					'<span class="shop">' + aData[i].shops + '</span>' +
					'</div>' +
					'</div>')
				$div.appendTo($('.goods'));
				}			
			}
		});
	});
	
})
