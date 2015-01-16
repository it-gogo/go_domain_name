$(function() {
	$('#sliderPlay').sliderPlay({
		speed : 400,
		timeout : 6000,
		moveType : 'moveTo',
		direction : 'left',
		mouseEvent : 'mouseover',
		isShowTitle : false,
		isShowBtn : true
	});

	$(".div_159").kxbdMarquee({
		direction : "up",
		isEqual : false,
		loop : 0,
		scrollAmount : 1,
		scrollDelay : 40
	});

	var div = $('#div_2161');
	var num = div.find('dl').length, index = 0;
	div.width(num * 720);
	$(".sp_right1").click(function() {
		$.post("/Content/ashx/monitor.ashx", {
			"c" : "11"
		});
		if (!div.is(":animated")) {
			if (index < num - 1) {
				index++;
				div.stop().animate({
					'left' : -index * 720 + 'px'
				}, 400);

			} else {
				div.stop().animate({
					'left' : 0
				}, 400);
				index = 0;
			}
		}
		;
	});
	$('.sp_left1').click(function() {
		$.post("/Content/ashx/monitor.ashx", {
			"c" : "11"
		});
		if (!div.is(":animated")) {
			if (index > 0) {
				index--;
				div.stop().animate({
					'left' : -index * 720 + 'px'
				}, 400);
			} else {
				div.stop().animate({
					'left' : -(num - 1) * 720 + 'px'
				}, 400);
				index = num - 1;
			}
		}
		;
	});
});