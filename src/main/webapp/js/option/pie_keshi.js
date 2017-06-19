/**
 * 
 */
function pie_keshi(data_legend,data_series) {
	var pie_keshi_option = {
		tooltip : {
			trigger : 'item',
			formatter : "{a} <br/>{b} : {c} ({d}%)"
		},
		legend : {
			left : 'center',
			top :'bottom',
			itemGap :5,
			show:true,
			formatter:function (name) {
				return name.substr(0,2)+"...";
			},
			data : data_legend
		},
		series : [ {
			name : '科室占比',
			type : 'pie',
			radius : '60%',
			center : [ '55%', '40%' ],
			data : data_series,
			itemStyle : {
				emphasis : {
					shadowBlur : 10,
					shadowOffsetX : 0,
					shadowColor : 'rgba(0, 0, 0, 0.5)'
				}
			}
		} ]
	};
	return pie_keshi_option;
}

function pie_course(data_legend,data_series){
	var pie_course_option = {
			tooltip : {
				trigger : 'item',
				formatter : "{b}<br/> {c} ({d}%)",
				position: function (point, params, dom) {
				      return ["30%", point[1]];
				  }
			},
			legend : {
				formatter:function (name) {
					return name.substr(0,2)+"...";
				},
				selectedMode :false,
				left : 'center',
				top :'bottom',
				padding :2,
				itemGap :5,
				show:true,
				data : data_legend,
				tooltip: {
			        show: true
			    },
			    borderColor : '#87C6F1'
			},
			series : [ {
				name : '课程占比',
				type : 'pie',
				radius : '60%',
				center : [ '50%', '40%' ],
				label :{
					normal :{
						formatter :function(params ){
							return params.name.substr(0,2)+"..."
						}
					}
				},
				data : data_series,
				itemStyle : {
					emphasis : {
						shadowBlur : 10,
						shadowOffsetX : 0,
						shadowColor : 'rgba(0, 0, 0, 0.5)'
					}
				}
			} ]
		};
		return pie_course_option;
	}
