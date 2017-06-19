/**
 * 
 */
function date_line(date_legend_list,date_data1_list,date_data2_list) {
	var option = {
			title : {
				text : '医生-课程量化关系',
				left : 'center',
				textStyle : {
					fontSize:25,
					color : '#001934',
					fontWeight :'normal'
				}
			},
		tooltip : {
			trigger : 'axis'
		},
		grid: {
			left :'5%',
			right :'3%',
			containLabel: false
		},
		legend : {
			data : [ '课程数目', '医生注册数量' ],
			left :'center',
			bottom:0,
			textStyle :{
				fontWeight :'bolder'
			}
		},
		calculable : true,
		xAxis : [ {
			type : 'category',
			boundaryGap : false,
			axisLabel :{
				textStyle :{
					fontSize :9,
					fontWeight :'bolder'
				},
				formatter:function (value, index) {
					return value.split("-")[0].substr(2, 4)+"年"+value.split("-")[1]+"月";
				},
				margin :3
			},
			axisTick: {
				show: false
			},
			data : date_legend_list
		} ],
		yAxis : [ {
			type : 'value',
			axisLabel : {
				formatter : '{value} ',
				textStyle :{
					fontSize :8,
					fontWeight :'bolder'
				},
				margin :1
			},
			axisTick: {
				show: false
			},
		} ],
		series : [ {
			name : '课程数目',
			type : 'line',
			symbol :'circle',
			symbolSize :5,
			lineStyle :{
				normal :{
					width :3,
				}
			},
			itemStyle : {
				normal : {
					color : '#70B5EC'
				}
			},
			data : date_data1_list,
		}, {
			name : '医生注册数量',
			type : 'line',
			symbolSize :5,
			lineStyle :{
				normal :{
					width :3,
				}
			},
			itemStyle : {
				normal : {
					color : '#D84C29'
				}
			},
			data : date_data2_list,
		} ]
	};
	return option;
}
