<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<link rel="stylesheet" type="text/css" href="css/css.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.fullPage.css" />
<title>麦迪卫康2017年会</title>
<style>
.section {
	text-align: center;
	font: 40px "Microsoft Yahei";
	color: #327AB7;
}

.section2 .chart2 {
	position: relative;
	left: -120%;
}

.section3 .chart3 {
	position: relative;
	bottom: -120%;
}
.section5 .chart5 {
	position: relative;
	right: -120%;
}
.section6{overflow:hidden;}
.section6 p {
	position: absolute;
}
.section6 p img {
	border-radius: 4px;
}
.section6 p.wangliang {
	bottom: -120%;
	left:15%;
	text-align:center;
}
.section6 p.wangliang .laosiji-tit{
	font-family:"华文行楷";
	font-size:34px;
	font-weight:bold;
	display:block;
	color:#f00;
}
.section6 p.shiwei,.section6 p.yangweimin,.section6 p.mayun,.section6 p.wangjl{
	right: -120%;
}
.section6 .car{left:-120%;bottom:0;}
.section .tip-info{
	font-family:"华文行楷";
	bottom:-80%;
	right:42%;
	font-size:46px;
	font-weight:bold;
	display:block;
	color:#ff0000;
	writing-mode: vertical-lr;
}
.section6 p.wangliang .data-tips{
	position: absolute;
    background-color: rgba(0,0,0,.3);
    padding: 5px 10px;
    border-radius: 4px;
    font-size: 25px;
    color: #fff;
    top: 0;
    right: -60%;
    display:none;
}
.section .huojian{
	position:absolute;
	bottom:-80%;
	right:42%;
}
</style>
</head>
<body>
	<div id="dowebok">
		<div class="section section1">
			<h3>答题数量变化趋势</h3>
			<div class="chart1" id="line" style="width: 100%"></div>
		</div>
		<div class="section section2">
		<h3>年会最期待的环节</h3>
			<div class="chart2" id="bar" style="width: 100%" ></div>
			
		</div>
		<div class="section section3">
			<h3>2017年您最大的愿望是？</h3>
			<div class="chart3" id="pie" style="width: 100%"></div>
		</div>
		<div class="section section4">
			<h3>您心目中的公司女神是？</h3>
			<div class="chart4" id="graph_w" style="width: 49%; float:left; border-right:2px solid #ddd"></div>
			<div class="chart4_2" id="graph_m" style="width: 50%; float:left;"></div>
		</div>
		<div class="section section5">
			<h3>约吗？老赵与您共进晚宴之后您的活动是？</h3>
			<div class="chart5" id="world_cloud" style="width: 100%"></div>
		</div>
		<div class="section section6">
			<h3>老司机带带我！您心目中的老司机是？</h3>
			<p class="wangliang">
				<img src="img/wangliang.gif" alt="王亮" />
				<span class="laosiji-tit">老司机</span>
				<span class="data-tips">投票占比：80%</span>
			</p>
			<p class="car">
				<img src="img/car.png" width="200" alt="小汽车" />
			</p>
			<p class="shiwei">
				<img src="img/shiwei.jpg" alt="施炜" />
			</p>
			<p class="yangweimin">
				<img src="img/yangweimin.jpg" alt="杨为民" />
			</p>
			<p class="mayun">
				<img src="img/mayun.jpg" alt="马云" />
			</p>
			<p class="wangjl">
				<img src="img/wangjl.jpg" alt="王健林" />
			</p>
			<img class="huojian" src="img/huojian.png" width="100" alt="火箭"/>
			<p class="tip-info">你咋不上天呢？</p>
		</div>
	</div>

	<script src="js/jquery-3.1.0.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.fullPage.min.js"></script>
	<script type="text/javascript" src="js/echarts.min.js"></script>
	<script type="text/javascript" src="js/worldcloud.js"></script>
	<script type="text/javascript" src="js/nianhui/all_option.js"></script>
	<script>
		$(function() {
			var keywords = {
		            "visualMap": 22199,
		            "continuous": 10288,
		            "contoller": 620,
		            "series": 274470,
		            "gauge": 12311,
		            "detail": 1206,
		            "piecewise": 4885,
		            "textStyle": 32294,
		            "markPoint": 18574,
		            "pie": 38929,
		            "roseType": 969,
		            "label": 37517,
		            "emphasis": 12053,
		            "yAxis": 57299,
		            "name": 15418,
		            "type": 22905,
		            "gridIndex": 5146,
		            "normal": 49487,
		            "itemStyle": 33837,
		            "min": 4500,
		            "silent": 5744,
		            "animation": 4840,
		            "offsetCenter": 232,
		            "inverse": 3706,
		            "borderColor": 4812,
		            "markLine": 16578,
		            "line": 76970,
		            "radiusAxis": 6704,
		            "radar": 15964,
		            "data": 60679,
		            "dataZoom": 24347,
		            "tooltip": 43420,
		            "toolbox": 25222,
		            "geo": 16904,
		            "parallelAxis": 4029,
		            "parallel": 5319,
		            "max": 3393,
		            "bar": 43066,
		            "heatmap": 3110,
		            "map": 20285,
		            "animationDuration": 3425,
		            "animationDelay": 2431,
		            "splitNumber": 5175,
		            "axisLine": 12738,
		            "lineStyle": 19601,
		            "splitLine": 7133,
		            "axisTick": 8831,
		            "axisLabel": 17516,
		            "pointer": 590,
		            "color": 23426,
		            "title": 38497,
		            "formatter": 15214,
		            "slider": 7236,
		            "legend": 66514,
		            "grid": 28516,
		            "smooth": 1295,
		            "smoothMonotone": 696,
		            "sampling": 757,
		            "feature": 12815,
		            "saveAsImage": 2616,
		            "polar": 6279,
		            "calculable": 879,
		            "backgroundColor": 9419,
		            "excludeComponents": 130,
		            "show": 20620,
		            "text": 2592,
		            "icon": 2782,
		            "dimension": 478,
		            "inRange": 1060,
		            "animationEasing": 2983,
		            "animationDurationUpdate": 2259,
		            "animationDelayUpdate": 2236,
		            "animationEasingUpdate": 2213,
		            "xAxis": 89459,
		            "angleAxis": 5469,
		            "showTitle": 484,
		            "dataView": 2754,
		            "restore": 932,
		            "timeline": 10104,
		            "range": 477,
		            "value": 5732,
		            "precision": 878,
		            "target": 1433,
		            "zlevel": 5361,
		            "symbol": 8718,
		            "interval": 7964,
		            "symbolSize": 5300,
		            "showSymbol": 1247,
		            "inside": 8913,
		            "xAxisIndex": 3843,
		            "orient": 4205,
		            "boundaryGap": 5073,
		            "nameGap": 4896,
		            "zoomLock": 571,
		            "hoverAnimation": 2307,
		            "legendHoverLink": 3553,
		            "stack": 2907,
		            "throttle": 466,
		            "connectNulls": 897,
		            "clipOverflow": 826,
		            "startValue": 551,
		            "minInterval": 3292,
		            "opacity": 3097,
		            "splitArea": 4775,
		            "filterMode": 635,
		            "end": 409,
		            "left": 6475,
		            "funnel": 2238,
		            "lines": 6403,
		            "baseline": 431,
		            "align": 2608,
		            "coord": 897,
		            "nameTextStyle": 7477,
		            "width": 4338,
		            "shadowBlur": 4493,
		            "effect": 929,
		            "period": 225,
		            "areaColor": 631,
		            "borderWidth": 3654,
		            "nameLocation": 4418,
		            "position": 11723,
		            "containLabel": 1701,
		            "scatter": 10718,
		            "areaStyle": 5310,
		            "scale": 3859,
		            "pieces": 414,
		            "categories": 1000,
		            "selectedMode": 3825,
		            "itemSymbol": 273,
		            "effectScatter": 7147,
		            "fontStyle": 3376,
		            "fontSize": 3386,
		            "margin": 1034,
		            "iconStyle": 2257,
		            "link": 1366,
		            "axisPointer": 5245,
		            "showDelay": 896,
		            "graph": 22194,
		            "subtext": 1442,
		            "selected": 2881,
		            "barCategoryGap": 827,
		            "barGap": 1094,
		            "barWidth": 1521,
		            "coordinateSystem": 3622,
		            "barBorderRadius": 284,
		            "z": 4014,
		            "polarIndex": 1456,
		            "shadowOffsetX": 3046,
		            "shadowColor": 3771,
		            "shadowOffsetY": 2475,
		            "height": 1988,
		            "barMinHeight": 575,
		            "lang": 131,
		            "symbolRotate": 2752,
		            "symbolOffset": 2549,
		            "showAllSymbol": 942,
		            "transitionDuration": 993,
		            "bottom": 3724,
		            "fillerColor": 229,
		            "nameMap": 1249,
		            "barMaxWidth": 747,
		            "radius": 2103,
		            "center": 2425,
		            "magicType": 3276,
		            "labelPrecision": 248,
		            "option": 654,
		            "seriesIndex": 935,
		            "controlPosition": 121,
		            "itemGap": 3188,
		            "padding": 3481,
		            "shadowStyle": 347,
		            "boxplot": 1394,
		            "labelFormatter": 264,
		            "realtime": 631,
		            "dataBackgroundColor": 239,
		            "showDetail": 247,
		            "showDataShadow": 217,
		            "x": 684,
		            "valueDim": 499,
		            "onZero": 931,
		            "right": 3255,
		            "clockwise": 1035,
		            "itemWidth": 1732,
		            "trigger": 3840,
		            "axis": 379,
		            "selectedOffset": 670,
		            "startAngle": 1293,
		            "minAngle": 590,
		            "top": 4637,
		            "avoidLabelOverlap": 870,
		            "labelLine": 3785,
		            "sankey": 2933,
		            "endAngle": 213,
		            "start": 779,
		            "roam": 1738,
		            "fontWeight": 2828,
		            "fontFamily": 2490,
		            "subtextStyle": 2066,
		            "indicator": 853,
		            "sublink": 708,
		            "zoom": 1038,
		            "subtarget": 659,
		            "length": 1060,
		            "itemSize": 505,
		            "controlStyle": 452,
		            "yAxisIndex": 2529,
		            "edgeLabel": 1188,
		            "radiusAxisIndex": 354,
		            "scaleLimit": 1313,
		            "geoIndex": 535,
		            "regions": 1892,
		            "itemHeight": 1290,
		            "nodes": 644,
		            "candlestick": 3166,
		            "crossStyle": 466,
		            "edges": 369,
		            "links": 3277,
		            "layout": 846,
		            "barBorderColor": 721,
		            "barBorderWidth": 498,
		            "treemap": 3865,
		            "y": 367,
		            "valueIndex": 704,
		            "showLegendSymbol": 482,
		            "mapValueCalculation": 492,
		            "optionToContent": 264,
		            "handleColor": 187,
		            "handleSize": 271,
		            "showContent": 1853,
		            "angleAxisIndex": 406,
		            "endValue": 327,
		            "triggerOn": 1720,
		            "contentToOption": 169,
		            "buttonColor": 71,
		            "rotate": 1144,
		            "hoverLink": 335,
		            "outOfRange": 491,
		            "textareaColor": 58,
		            "textareaBorderColor": 58,
		            "textColor": 60,
		            "buttonTextColor": 66,
		            "category": 336,
		            "hideDelay": 786,
		            "alwaysShowContent": 1267,
		            "extraCssText": 901,
		            "effectType": 277,
		            "force": 1820,
		            "rippleEffect": 723,
		            "edgeSymbolSize": 329,
		            "showEffectOn": 271,
		            "gravity": 199,
		            "edgeLength": 193,
		            "layoutAnimation": 152,
		            "length2": 169,
		            "enterable": 957,
		            "dim": 83,
		            "readOnly": 143,
		            "levels": 444,
		            "textGap": 256,
		            "pixelRatio": 84,
		            "nodeScaleRatio": 232,
		            "draggable": 249,
		            "brushType": 158,
		            "radarIndex": 152,
		            "large": 182,
		            "edgeSymbol": 675,
		            "largeThreshold": 132,
		            "leafDepth": 73,
		            "childrenVisibleMin": 73,
		            "minSize": 35,
		            "maxSize": 35,
		            "sort": 90,
		            "funnelAlign": 61,
		            "source": 336,
		            "nodeClick": 200,
		            "curveness": 350,
		            "areaSelectStyle": 104,
		            "parallelIndex": 52,
		            "initLayout": 359,
		            "trailLength": 116,
		            "boxWidth": 20,
		            "back": 53,
		            "rewind": 110,
		            "zoomToNodeRatio": 80,
		            "squareRatio": 60,
		            "parallelAxisDefault": 358,
		            "checkpointStyle": 440,
		            "nodeWidth": 49,
		            "color0": 62,
		            "layoutIterations": 56,
		            "nodeGap": 54,
		            "color(Array": 76,
		            "<string>)": 76,
		            "repulsion": 276,
		            "tiled": 105,
		            "currentIndex": 145,
		            "axisType": 227,
		            "loop": 97,
		            "playInterval": 112,
		            "borderColor0": 23,
		            "gap": 43,
		            "autoPlay": 123,
		            "showPlayBtn": 25,
		            "breadcrumb": 119,
		            "colorMappingBy": 85,
		            "id": 18,
		            "blurSize": 85,
		            "minOpacity": 50,
		            "maxOpacity": 54,
		            "prevIcon": 12,
		            "children": 21,
		            "shape": 98,
		            "nextIcon": 12,
		            "showNextBtn": 17,
		            "stopIcon": 21,
		            "visibleMin": 83,
		            "visualDimension": 97,
		            "colorSaturation": 56,
		            "colorAlpha": 66,
		            "emptyItemWidth": 10,
		            "inactiveOpacity": 4,
		            "activeOpacity": 4,
		            "showPrevBtn": 19,
		            "playIcon": 26,
		            "ellipsis": 19,
		            "gapWidth": 19,
		            "borderColorSaturation": 10,
		            "handleIcon": 2,
		            "handleStyle": 6,
		            "borderType": 1,
		            "constantSpeed": 1,
		            "polyline": 2,
		            "blendMode": 1,
		            "dataBackground": 1,
		            "textAlign": 1,
		            "textBaseline": 1,
		            "brush": 3
		          };

		          var data = [];
		          for (var name in keywords) {
		              data.push({
		                  name: name,
		                  value: Math.sqrt(keywords[name])
		              })
		          }
			var wHeight=$(window).height();
			var h3Height=$(".section h3").height();
			$(".section div[class^='chart']").css("height",wHeight-h3Height);
			
			var graphChart = echarts.init(document.getElementById('graph_w'));
			var graphChart2 = echarts.init(document.getElementById('graph_m'));
			$.getJSON('js/graph2.json',{}, function (json) {
				var graph_option=graph_w(json);
				console.log(graph_option);
				<c:forEach var="item" items="${graph_w}" varStatus="status">
				graph_option.series[0].data[${status.index}+1].name='${item.goddess}';
				graph_option.title={
					"text":"女生心中的女神",
					"x":"4%"
				};
		    	</c:forEach>
				graphChart.setOption(graph_option, true);
					});
			$.getJSON('js/graph2.json', function (json) {
				var graph_option2=graph_m(json);
				<c:forEach var="item" items="${graph_m}" varStatus="status">
				graph_option2.series[0].data[${status.index}+1].name='${item.goddess}';
				graph_option2.title={
					"text":"男生心中的女神",
					"x":"4%"
				};
		    	</c:forEach>
				graphChart2.setOption(graph_option2, true);
					});
			var worldChart = echarts.init(document.getElementById('world_cloud'));
			var barChart = echarts.init(document.getElementById('bar'));
			var lineChart = echarts.init(document.getElementById('line'));
			var pieChart = echarts.init(document.getElementById('pie'));
			var maskImage = new Image();
			//var world_option = world_cloud(eval('(' +  '${cloud}' + ')'),maskImage);
			var world_option = world_cloud(data,maskImage);
			maskImage.onload = function () {
				world_option.series[0].maskImage
				worldChart.setOption(world_option);
			}
			maskImage.src = 'img/ren1.png';
			var bar_option = bar('${mn}'.split(","), '${ml}'.split(","),
					'${wn}'.split(","), '${wl}'.split(","));
			var line_option = line('${line_lenged}'.split(","), '${line}'
					.split(","));
			var pie_option = pie('${wish_lenged}'.split(","), eval('('
					+ '${wish}' + ')'));
			worldChart.setOption(world_option);
			barChart.setOption(bar_option);
			lineChart.setOption(line_option);
			pieChart.setOption(pie_option);
			var start = 10;
			var end = 80;
			setInterval(function() {
				start += 10;
				end += 10;
				if (end > 100) {
					line_option.dataZoom[0].end = 80;
					line_option.dataZoom[0].start = 0;
					end = 80;
					start = 0;
				} else {
					line_option.dataZoom[0].start = start;
					line_option.dataZoom[0].end = end;
				}
				lineChart.setOption(line_option, true);
			}, 1000);
			$('#dowebok').fullpage(
					{
						sectionsColor : [ '#eee', '#eee', '#eee','#eee', '#FFFFFF', '#FFFFFF' ],
						continuousVertical : true,//循环演示
						navigation : true,//导航

						afterLoad : function(anchorLink, index) {
							if (index == 2) {
								$('.section2').find('.chart2').delay(500)
										.animate({
											left : '0'
										}, 1500, 'easeOutExpo');
							}
							if (index == 3) {
								$('.section3').find('.chart3').delay(500)
										.animate({
											bottom : '0'
										}, 1500, 'easeOutExpo');
							}
							if (index == 4) {
								$('.section4').find('.chart4').fadeIn(2000);
							}
							if (index == 5) {
								$('.section5').find('.chart5').delay(500)
										.animate({
											right : '0'
										}, 1500, 'easeOutExpo');
							}
							if (index == 6) {
								$('.section6').find('.car').delay(30000)
								.animate({
									bottom : '0',
									left : '15%'
								}, 2000, 'easeOutExpo');
								$('.section6').find('.wangliang').delay(35000)
										.animate({
											top : '20%',
											left : '15%'
										}, 800, 'easeOutExpo');
								$('.section6').find('.shiwei').delay(38000)
										.animate({
											top : '25%',
											right : '25%'
										}, 1500, 'easeOutExpo');
								$('.section6').find('.yangweimin').delay(38000)
										.animate({
											top:'25%',
											right : '14%'
										}, 1500, 'easeOutExpo');
								$('.section6').find('.mayun').delay(38000)
										.animate({
											top:'55%',
											right : '28%'
										}, 1500, 'easeOutExpo');
								$('.section6').find('.wangjl').delay(38000)
										.animate({
											top:'55%',
											right : '15%'
										}, 1500, 'easeOutExpo');
								$('.section6').find('.tip-info').delay(40000)
								.animate({
									bottom:'25%',
									right : '42%'
								}, 1500, 'easeOutExpo');
								$('.section6').find('.huojian').delay(39000)
								.animate({
									bottom:'100%',
									right : '42%',
								}, 1500, 'easeOutExpo');
							}
						},
						onLeave : function(index, direction) {
							if (index == '2') {
								$('.section2').find('.chart2').delay(500)
										.animate({
											left : '-120%'
										}, 1500, 'easeOutExpo');
							}
							if (index == '3') {
								$('.section3').find('.chart3').delay(500)
										.animate({
											bottom : '-120%'
										}, 1500, 'easeOutExpo');
							}
							if (index == '4') {
								$('.section4').find('.chart4').fadeOut(2000);
							}
							if (index == '5') {
								$('.section5').find('.chart5').delay(500)
										.animate({
											right : '-120%'
										}, 1500, 'easeOutExpo');
							}
						}
					});
			
			
			$(".wangliang").mouseover(function(){//老司机数据显示
				$(this).find(".data-tips").show();
			});
			$(".wangliang").mouseout(function(){
				$(this).find(".data-tips").hide();
			}); 
		});
	</script>
</body>
</html>