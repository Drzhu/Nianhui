<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html style="height: 100%; overflow-x:hidden;">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<link rel="stylesheet" type="text/css" href="css/animate.min.css" />
<link rel="stylesheet" type="text/css" href="css/css.css" />
<title>麦迪卫康2017年会</title>
</head>
<body
	style="background: url(img/background.jpg) no-repeat 55% 0 fixed; background-size: cover;">
	<div class="personnel-info">
		<div class="answer-gender">
			<h3>1，性别？</h3>
				<label class="male">
					<input type="radio" name="answer1" value="1">
				</label>
				<label class="female">
					<input type="radio" name="answer1" value="0">
				</label>
		</div>
		<div class="answer-sel">
			<h3>2，<big style="font-size:4.5rem; color:#ea2b2b;">2017</big>&nbsp;&nbsp;年会最期待的环节是？<small>(多选)</small></h3>
			<label><input type="checkbox" name="expect" value="年度大会" />年度大会</label>
			<label><input type="checkbox" name="expect" value="员工奉献奖" />员工奉献奖</label>
			<label><input type="checkbox" name="expect" value="微电影走秀" />电影走秀</label>
			<label><input type="checkbox" name="expect" value="微电影播映" />电影放映</label>
			<label><input type="checkbox" name="expect" value="微电影颁奖" />电影颁奖</label>
			<label><input type="checkbox" name="expect" value="晚宴走秀" />晚宴走秀</label>
			<label><input type="checkbox" name="expect" value="晚宴节目表演" />晚宴表演</label>
			<label><input type="checkbox" name="expect" value="晚宴抽奖" />晚宴抽奖</label>
		</div>
		<div class="answer-sel">
			<h3>3，<big style="font-size:4.5rem; color:#ea2b2b;">2016</big>&nbsp;&nbsp;年会最喜欢的环节是？<small>(多选)</small></h3>
			<label><input type="checkbox" name="like" value="年度大会" />年度大会</label>
			<label><input type="checkbox" name="like" value="员工奉献奖" />员工奉献奖</label>
			<label><input type="checkbox" name="like" value="微电影走秀" />电影走秀</label>
			<label><input type="checkbox" name="like" value="微电影播映" />电影放映</label>
			<label><input type="checkbox" name="like" value="微电影颁奖" />电影颁奖</label>
			<label><input type="checkbox" name="like" value="晚宴走秀" />晚宴走秀</label>
			<label><input type="checkbox" name="like" value="晚宴节目表演" />晚宴表演</label>
			<label><input type="checkbox" name="like" value="晚宴抽奖" />晚宴抽奖</label>
		</div>
		<div class="answer-sel">
			<h3>4，2017最大的愿望是？<small>(多选)</small></h3>
			<label><input type="checkbox" name="wish" value="有钱暴富" />有钱暴富</label>
			<label><input type="checkbox" name="wish" value="遇见那个ta" />遇见那个ta</label>
			<label><input type="checkbox" name="wish" value="健身减肥" />健身减肥</label>
			<label><input type="checkbox" name="wish" value="更美更帅" />更美更帅</label>
			<label><input type="checkbox" name="wish" value="升职加薪" />升职加薪</label>
			<label><input type="checkbox" name="wish" value="要宝宝" />要宝宝</label>
			<label><input type="checkbox" name="wish" value="世界和平" />世界和平</label>
			<label><input type="checkbox" name="wish" value="嘿嘿嘿" />嘿嘿嘿</label>
		</div>
		<div class="answer" style="padding-top:10px;">
			<h3>5，你心中的公司<span class="nvshen animated wobble infinite">女神</span>是？</h3>
			<input type="text" name="goddess" value="" />
		</div>
		<div class="answer">
			<h3>6，约吗？和<img src="img/zhaoxiao.png" width="30" alt="老赵"/>晚宴后的活动是?</h3>
			<input type="text" name="activity" value="" />
		</div>
		<div class="answer-pic">
			<h3 style="margin-bottom:20px;">7，你心中的老司机是？</h3>
			<label class="wangliang">
				<input type="radio" name="laosiji" value="王亮" />
			</label> 
			<label style="visibility: hidden;">
				<input type="radio" name="laosiji" value="王亮" />
				<img src="img/wangliang.jpg" />
			</label> 
			<label class="mayun">
				<input type="radio" name="laosiji" value="马云" />
			</label>
			<label style="visibility: hidden;">
				<input type="radio" name="laosiji" value="王亮" />
				<img src="img/wangliang.jpg" />
			</label>  
			<label class="shiwei" style="top:-30px;">
				<input type="radio"	name="laosiji" value="施炜" />
			</label>
			<label style="visibility: hidden;">
				<input type="radio" name="laosiji" value="王亮" />
				<img src="img/wangliang.jpg" />
			</label> 
			<label class="yangweimin" style="top:-60px;">
				<input type="radio" name="laosiji" value="杨为民" />
			</label>
			<label style="visibility: hidden;">
				<input type="radio" name="laosiji" value="王亮" />
				<img src="img/wangliang.jpg" />
			</label> 
			<label class="wangjl" style="top:-60px;">
				<input type="radio" name="laosiji" value="王健林" />
			</label>
		</div>
		<button id="sub" class="button">提交</button>
	</div>
	<script src="js/jquery-3.1.0.min.js"></script>
	<script src="js/fastclick.min.js"></script>
	<script src="js/js.js"></script>
	<script>
	$(function(){
		var wWidth=$(".personnel-info").width()-10;
		   $(".answer-pic label").css({
			   "width":(wWidth-90)/3,
			   "height":(wWidth)/3
		   });
		   
		   console.log(wHeight);
	});
	
	   
	  
	
		var expect = "";
		var like = "";
		var wish = "";
		function answer1ss() {
			var answer1 = document.getElementsByName("answer1");
			var status = false;
			for (var i = 0; i < answer1.length; i++) {
				if (answer1[i].checked) {
					status = true;
				}
			}
			if (!status) {
				alert("男还是女？");
				return false;
			} else {
				return true;
			}
		}

		function laosijiss() {
			var laosiji = document.getElementsByName("laosiji");
			var laosi = false;
			for (var i = 0; i < laosiji.length; i++) {
				if (laosiji[i].checked) {
					laosi = true;
				}
			}
			if (!laosi) {
				alert("选个老司机");
				return false;
			} else {
				return true;
			}
		}
		function wishss() {
			var wish = document.getElementsByName("wish");
			var wis = false;
			for (var i = 0; i < wish.length; i++) {
				if (wish[i].checked) {
					wis = true;
				}
			}
			if (!wis) {
				alert("来个愿望");
				return false;
			} else {
				return true;
			}

		}
		function likss() {
			var like = document.getElementsByName("like");
			var li = false;
			for (var i = 0; i < like.length; i++) {
				if (like[i].checked) {
					li = true;
				}
			}
			if (!li) {
				alert("选个去年喜欢的环节");
				return false;
			} else {
				return true;
			}
		}
		function expectss() {

			var expect = document.getElementsByName("expect");
			var ex = false;
			for (var i = 0; i < expect.length; i++) {
				if (expect[i].checked) {
					ex = true;
				}
			}
			if (!ex) {
				alert("选个今年喜欢的环节");
				return false;
			} else {
				return true;
			}
		}
		function validate() {
			var goddess = $("input[name='goddess']").val();//女神
			var activity = $("input[name='activity']").val();//活动
			if (goddess == "") {
				alert("填一个女神");
				return false;
			} else {
				return true;
			}
			if (activity == "") {
				alert("填一个活动");
				return false;
			} else {
				return true;
			}
		}
		function checkBoxes() {
			$("input[name='expect']:checked").each(function() { //2017年最期待
				expect += $(this).val() + ","
			});
			$("input[name='like']:checked").each(function() { //2016年最喜欢
				like += $(this).val() + ","
			});
			$("input[name='wish']:checked").each(function() { //2017年最大愿望
				wish += $(this).val() + ","
			});
		}
		$("#sub").on(
				"click",
				function() {
					var gender = $("input[name='answer1']:checked").val();//性别
					var goddess = $("input[name='goddess']").val();//女神
					var activity = $("input[name='activity']").val();//活动
					var laosiji = $("input[name='laosiji']:checked").val();//老司机
					checkBoxes();
					if (validate()) {
						if (likss()) {
							if (expectss()) {
								if (wishss()) {
									if (answer1ss()) {
										if (laosijiss()) {
											$.ajax({
												type : "post",
												url : "submit",
												data : {
													gender : gender,
													goddess : goddess,
													activity : activity,
													laosiji : laosiji,
													expect : expect,
													like : like,
													wish : wish
												},
												success : function(data) {
													alert("提交成功");
													window.location.href="/Nianhui/other";
													//$("#sub").attr("disabled","disabled");
												},
											});
										}
									}
								}
							}
						}

					}
				});
	</script>
</body>
</html>


