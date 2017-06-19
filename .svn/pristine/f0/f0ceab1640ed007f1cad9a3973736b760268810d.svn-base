<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html style="height: 100%">
<head>
<meta charset="utf-8">
</head>
<body>
年度大会、员工奉献奖、微电影走秀、微电影播映、微电影颁奖、晚宴走秀、晚宴节目表演、晚宴抽奖<br/>
男今年:<input id="mn" type="text" style="width:200px;" value="-70,-50,-90,-90,-110,-120,-80,-150" /><br/>
女今年:<input id="wn" type="text" style="width:200px;" value="-60,-40,-80,-70,-80,-100,-70,-130"/><br/>
男去年:<input id="ml" type="text" style="width:200px;" value="72,75,40,78,80,70,54,100"/><br/>
女去年:<input id="wl" type="text" style="width:200px;" value="65,66,38,68,70,90,45,80"/><br/>
有钱暴富，遇见那个ta，健身减肥，更美更帅，升职加薪，要宝宝，世界和平，嘿嘿嘿<br/>
<input id="wish" type="text" value="87,92,109,65,150,25,62,108"/><br/>
<button id="submit">提交</button><br/>
时间：<br/>
${first}
</textarea><br/>
今年男生：<br/>
<textarea rows="" cols=""  style="width:200px;height:150px;overflow:scroll;resize:none;" >
<c:forEach var="item" items="${mn}">   
${item.key}  ：${item.value}</c:forEach>  
</textarea><br/>
今年女生：<br/>
<textarea rows="" cols="" style="width:200px;height:150px;overflow:scroll;resize:none;">
<c:forEach var="item" items="${wn}">   
${item.key}  ：${item.value}</c:forEach> </textarea><br/>
去年男生：<br/>
<textarea rows="" cols="" style="width:200px;height:150px;overflow:scroll;resize:none;">
<c:forEach var="item" items="${ml}">  
${item.key}  ：${item.value}</c:forEach> 
</textarea><br/>
去年女生：<br/>
<textarea rows="" cols="" style="width:200px;height:150px;overflow:scroll;resize:none;">
<c:forEach var="item" items="${wl}">   
${item.key} ：${item.value}</c:forEach> </textarea><br/>
愿望：<br/>
<textarea rows="" cols="" style="width:200px;height:150px;overflow:scroll;resize:none;"><c:forEach var="item" items="${wish}">   
${item.key}  ：${item.value}</c:forEach> </textarea><br/>

<script src="../js/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
$("#submit").on("click",function(){
	var mn = $("#mn").val();
	var ml = $("#ml").val();
	var wn = $("#wn").val();
	var wl = $("#wl").val();
	var wish = $("#wish").val();
	
	 $.ajax({
		 type:"post",
		 url:"update",
		 data:{mn:mn,ml:ml,wl:wl,wn:wn,wish:wish},
		 success:function(data){
			 window.location.href="/Nianhui/show";
		 },
	  });
})
</script>
</body>
</html>