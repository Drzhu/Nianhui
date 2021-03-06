/**
 * 
 */

function world_cloud(cloud,maskImage) {
	var option = {
		tooltip : {},
		series : [ {
			type : 'wordCloud',
			 sizeRange: [10, 80],
             rotationRange: [-90, 90],
             rotationStep: 45,
             gridSize: 2,
			 shape: 'pentagon',
			maskImage: maskImage,
			textStyle : {
				normal : {
					color : function() {
						return 'rgb('
								+ [ Math.round(Math.random() * 160),
										Math.round(Math.random() * 160),
										Math.round(Math.random() * 160) ]
										.join(',') + ')';
					}
				},
				emphasis : {
					shadowBlur : 10,
					shadowColor : '#333'
				}
			},
			data : cloud
		} ]
	};
	return option;
}
function line(lenged, data_list) {
	var option = {
		backgroundColor : '#eee',
		tooltip : {
			trigger : 'axis'
		},
		grid : {
			left : '2%',
			right : '3%',
			containLabel : false
		},
		legend : {
			data : [ '提交人数' ],
			left : 'center',
			top : 'top',
			bottom : 0,
			textStyle : {
				fontSize : 15,
				fontWeight : 'bolder'
			}
		},
		calculable : true,
		xAxis : [ {
			type : 'category',
			boundaryGap : false,
			axisLabel : {
				textStyle : {
					fontSize : 9,
					fontWeight : 'bolder'
				},
				margin : 3
			},
			axisTick : {
				show : false
			},
			data : lenged
		} ],
		yAxis : [ {
			type : 'value',
			axisLabel : {
				formatter : '{value} ',
				textStyle : {
					fontSize : 8,
					fontWeight : 'bolder'
				},
				margin : 1
			},
			axisTick : {
				show : false
			},
		} ],
		"dataZoom" : [ {
			"show" : true,
			"height" : 20,
			"xAxisIndex" : [ 0 ],
			bottom : 10,
			"start" : 10,
			"end" : 90,
			handleIcon : 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
			handleSize : '120%',
			handleStyle : {
				color : "#00B0FC",
			},
			textStyle : {
				color : "#000",
				fontSize : 8,
				fontWeight : 'bolder'
			},
			borderColor : "#BBAAE0",
		} ],
		series : [ {
			name : '提交人数',
			type : 'line',
			 smooth: true,
			symbolSize : 5,
			lineStyle : {
				normal : {
					width : 3,
					shadowColor: 'rgba(0,0,0,0.4)',
					 shadowBlur: 10,
	                    shadowOffsetY: 10
				}
			},
			itemStyle : {
				normal : {
					color : '#D84C29'
				}
			},
			data : data_list,
		} ]
	};
	return option;
}

function bar(mn, ml, wn, wl) {
	var option = {
		backgroundColor : '#eee',
		backgroundColor : '#eee',
		legend : {
			
			data : [ '2017男生', '2017女生', '2016男生', '2016女生' ],
			textStyle : {
				fontSize : 14,
			},
			align : 'left',
			left : 10
		},
		tooltip : {},
		xAxis : {
			axisLabel :{
				textStyle :{
					fontWeight :'bolder',
					fontSize:13
				}
			},
			//data : [ '年度大会', '员工奉献奖', '微电影走秀', '微电影播映', '微电影颁奖', '晚宴走秀','晚宴节目表演', '晚宴抽奖' ],
			data:['晚宴抽奖','微电影颁奖','微电影走秀','晚宴走秀','年度大会','微电影播映','员工奉献奖','晚宴节目表演'],
			silent : false,
			axisLine : {
				onZero : true
			},
			splitLine : {
				show : false
			},
			splitArea : {
				show : false
			}
		},
		yAxis : {
			inverse : true,
			splitArea : {
				show : false
			}
		},
		grid : {
			left : 100
		},
		series : [ {
			name : '2017男生',
			type : 'bar',
			stack : 'one',
			barWidth :'40%',
			itemStyle : {
				normal : {
					color:"#00A1E1"
				},
				emphasis : {
					barBorderWidth : 1,
					shadowBlur : 10,
					shadowOffsetX : 0,
					shadowOffsetY : 0,
					shadowColor : 'rgba(0,0,2,1.5)'
				}
			},
			data : mn
		}, {
			name : '2017女生',
			type : 'bar',
			stack : 'one',
			itemStyle : {
				normal : {
					color:"#F54000"
				},
				emphasis : {
					barBorderWidth : 1,
					shadowBlur : 10,
					shadowOffsetX : 0,
					shadowOffsetY : 0,
					shadowColor : 'rgba(0,0,2,1.5)'
				}
			},
			data : wn
		}, {
			name : '2016男生',
			type : 'bar',
			stack : 'one',
			itemStyle : {
				normal : {
					color:"#8FD3DF"
				},
				emphasis : {
					barBorderWidth : 1,
					shadowBlur : 10,
					shadowOffsetX : 0,
					shadowOffsetY : 0,
					shadowColor : 'rgba(0,0,2,1.5)'
				}
			},
			data : ml
		}, {
			name : '2016女生',
			type : 'bar',
			stack : 'one',
			itemStyle : {
				normal : {
					color:"#FFB79D"
				},
				emphasis : {
					barBorderWidth : 1,
					shadowBlur : 10,
					shadowOffsetX : 0,
					shadowOffsetY : 0,
					shadowColor : 'rgba(0,0,2,1.5)'
				}
			},
			data : wl
		} ]
	};
	return option;
}
function pie(lenged, data) {
	var option = {
		backgroundColor : '#eee',
		tooltip : {
			trigger : 'item',
			formatter : "{a} <br/>{b} : {d}%"
		},
		legend : {
			x : 'left',
			y : 'top',
			orient : 'vertical',
			textStyle : {
				fontSize : 16,
			},
			data : lenged
		},
		calculable : true,
		series : [ {
			name : '最大的愿望',
			type : 'pie',
			radius : [ 40, 250 ],
			center : [ '50%', '50%' ],
			label : {
				normal : {
					textStyle : {
						fontSize : 20,
						fontWeight : 'bold'
					}
				}
			},
			roseType : 'area',
			data : data
		} ]
	};
	return option;
}
function graph_m(json){
	var option = {
			backgroundColor : '#eee',
		        animationDurationUpdate: 1500,
		        animationEasingUpdate: 'quinticInOut',
		        series : [
		            {
		                type: 'graph',
		                layout: 'none',
		                data: json.nodes.map(function (node) {
		                    return {
		                        x: node.x,
		                        y: node.y,
		                        id: node.id,
		                        name: node.label,
		                        symbolSize: node.size,
		                        label : {
		                        	textStyle :{
		                        		fontSize :16,
		                        		fontWeight :'bolder'
		                        	},
		                        	emphasis :{
		                        		textStyle :{
			                        		fontSize :16,
			                        		fontWeight :'bolder'
			                        	},
		                        	}
		                        },
		                        itemStyle: {
		                            normal: {
		                                color: node.color
		                            }
		                        }
		                    };
		                }),
		                edges: json.edges.map(function (edge) {
		                    return {
		                        source: edge.sourceID,
		                        target: edge.targetID
		                    };
		                }),
		                label: {
		                    emphasis: {
		                        position: 'right',
		                        show: true
		                    }
		                },
		                roam: true,
		                focusNodeAdjacency: true,
		                lineStyle: {
		                    normal: {
		                        width: 0.5,
		                        curveness: 0.3,
		                        opacity: 0.7
		                    }
		                }
		            }
		        ]
		    };
	return option;
}
function graph_w(json){
	var option = {
			backgroundColor : '#eee',
		        animationDurationUpdate: 1500,
		        animationEasingUpdate: 'quinticInOut',
		        series : [
		            {
		                type: 'graph',
		                layout: 'none',
		                data: json.nodes.map(function (node) {
		                    return {
		                        x: node.x,
		                        y: node.y,
		                        id: node.id,
		                        name: node.label,
		                        symbolSize: node.size,
		                        label : {
		                        	textStyle :{
		                        		fontSize :16
		                        	},
		                        	emphasis :{
		                        		textStyle :{
			                        		fontSize :16,
			                        		fontWeight :'bold'
			                        	},
		                        	}
		                        },
		                        itemStyle: {
		                            normal: {
		                                color:  node.color
		    					}
		                            }
		                        };
		                }),
		                edges: json.edges.map(function (edge) {
		                    return {
		                        source: edge.sourceID,
		                        target: edge.targetID
		                    };
		                }),
		                label: {
		                    emphasis: {
		                        position: 'right',
		                        show: true
		                    }
		                },
		                roam: true,
		                focusNodeAdjacency: true,
		                lineStyle: {
		                    normal: {
		                        width: 0.5,
		                        curveness: 0.3,
		                        opacity: 0.7
		                    }
		                }
		            }
		        ]
		    };
	return option;
}