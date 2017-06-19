document.body.addEventListener('touchstart', function () { });
/*;(function(){///重载jquery on方法实现click事件在移动端的快速响应
    var isTouch = ('ontouchstart' in document.documentElement) ? 'touchstart' : 'click', _on = $.fn.on;
        $.fn.on = function(){
            arguments[0] = (arguments[0] === 'click') ? isTouch: arguments[0];
            return _on.apply(this, arguments); 
        };
})();*/
/*if ('addEventListener' in document) {
    document.addEventListener('DOMContentLoaded', function() {
        FastClick.attach(document.body);
    }, false);
}*/
$(function(e) {
	FastClick.attach(document.body); 
	//单选按钮
	$("input[type='radio']").click(function() {
		$(this).parent("label").toggleClass("active");
		$(this).parent("label").siblings().removeClass("active");
	})
	$("input[type='radio']:checked").parent("label").addClass("active");
	
	//复选框
	$("input[type='checkbox']").click(function() {
		$(this).parent("label").toggleClass("active");
	})
	$("input[type='radio']:checked").parent("label").addClass("active");
	
});