/**
 * 
 */
function bar1(bar1_legend_list, bar1_data1_list, bar1_data2_list) {
	var option = {
			title : {
				text : '医患人数对比',
				top:0 ,
				left : 'left',
				textStyle : {
					fontSize:25,
					color : '#001934',
					fontWeight :'normal'
				}
			},
		tooltip : {
			trigger : 'axis',
			formatter : function(params, ticket, callback) {
				if(params[0].seriesName == '讲课医生人数'){
					return params[0].name + "</br>" +params[0].seriesName + '：'
					+ (params[0].value)
				}else if(params.length == 1){
					return params[0].name + "</br>" +params[0].seriesName + '：'
					+ params[0].value
				}else{
				return params[0].name + "</br>" + params[0].seriesName + '：'
						+ params[0].value + "</br>" + params[1].seriesName
						+ '：' + (params[1].value);
				}
			},
			axisPointer : {
				type : 'shadow'
			},
			position : function(point, params, dom) {
				return [ "30%", point[1] ];
			}
		},
		toolbox : {
			show : true,
			feature : {
				dataView : {
					show : true,
					readOnly : false
				},
				magicType : {
					show : true,
					type : [ 'line', 'bar' ]
				},
				restore : {
					show : true
				},
				saveAsImage : {
					show : true
				}
			}
		},
		legend : {
			top:10,
			textStyle : {
				fontWeight : 'bolder'
			},
			data : [ '看课患者人数', '讲课医生人数' ],
		},
		grid : {
			left : 0,
			top : '7%',
			right : '3%',
			bottom : '3%',
			containLabel : true
		},
		xAxis : {
			position : 'top',
			axisLine : {
				show : true,
				lineStyle : {
					type : 'solid'
				},
			},

			axisLabel : {
				formatter : function(value, index) {
					return value / 10000 + "万";
				},
				textStyle : {
					fontSize : 11
				},
				margin : 5
			},
			axisTick : {
				show : false
			},
			splitLine : {
				show : false
			},
			type : 'value',
			boundaryGap : [ 0, 0.01 ]
		},
		yAxis : {
			type : 'category',
			axisLabel : {
				formatter : function(value, index) {
					return value.substr(0, 2) + "...";
				},
				margin : 1
			},
			axisTick : {
				show : false
			},
			onZero : false,
			data : bar1_legend_list

		},
		series : [ {
			name : '看课患者人数',
			symbol : 'none',
			type : 'bar',
			barGap : '0%',
			barCategoryGap : '30%',
			itemStyle : {
				normal : {
					color : '#D84C29'
				}
			},
			data : bar1_data2_list
		}, {
			name : '讲课医生人数',
			symbol : 'none',
			type : 'bar',
			itemStyle : {
				normal : {
					color : '#70B5EC'
				}
			},
			data : bar1_data1_list
		}, ]
	};
	return option;
}

function bar2(bar1_legend_list, bar1_data1_list, bar1_data2_list) {
	var option = {
			title : {
				text : '患教人数和观看时间对比',
				top:0 ,
				left : 'left',
				textStyle : {
					fontSize:25,
					color : '#001934',
					fontWeight :'normal'
				}
			},
		tooltip : {
			trigger : 'axis',
			formatter : function(params, ticket, callback) {
				 if(params.length == 1){
					return params[0].name + "</br>" +params[0].seriesName + '：'
					+ params[0].value
				}else{
				return params[0].name + "</br>" + params[0].seriesName + '：'
						+ params[0].value + "</br>" + params[1].seriesName
						+ '：' + params[1].value;
				}
			},
			axisPointer : {
				type : 'shadow'
			},
			position : function(point, params, dom) {
				return [ "30%", point[1] ];
			}
		},
		legend : {
			top:10,
			textStyle : {
				fontWeight : 'bolder'
			},
			data : [ '观看总时长（分钟）', '观看患者人数' ],
		},
		toolbox : {
			show : true,
			feature : {
				dataView : {
					show : true,
					readOnly : false
				},
				magicType : {
					show : true,
					type : [ 'line', 'bar' ]
				},
				restore : {
					show : true
				},
				saveAsImage : {
					show : true
				}
			}
		},
		grid : {
			left : 0,
			top : '7%',
			right : '3%',
			bottom : '3%',
			containLabel : true
		},
		xAxis : {
			position : 'top',
			axisLine : {
				show : true,
				lineStyle : {
					type : 'solid'
				},
			},
			axisLabel : {
				formatter : function(value, index) {
					console.log(value);
					if(value == 0){
						return 1/10000 +"万";
					}
					return value / 10000 + "万";
				},
				textStyle : {
					fontSize : 11
				},
				margin : 5
			},
			axisTick : {
				show : false
			},
			splitLine : {
				show : false
			},
			type : 'log',
			boundaryGap : [ 0, 0.01 ]
		},
		yAxis : {
			type : 'category',
			axisLabel : {
				formatter : function(value, index) {
					return value.substr(0, 2) + "...";
				},
				margin : 1
			},
			axisTick : {
				show : false
			},
			onZero : false,
			data : bar1_legend_list,
		},
		series : [ {
			name : '观看总时长（分钟）',
			symbol : 'none',
			type : 'bar',
			barGap : '0%',
			barCategoryGap : '30%',
			itemStyle : {
				normal : {
					color : '#17A05E'
				}
			},
			data : bar1_data2_list
		}, {
			name : '观看患者人数',
			symbol : 'none',
			type : 'bar',
			itemStyle : {
				normal : {
					color : '#FFE516'
				}
			},
			data : bar1_data1_list
		}, ]
	};
	return option;
}
