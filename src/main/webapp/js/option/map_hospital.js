/**
 * 
 */
function map_hostipal_option(hos_prov_list) {
	var option = {
			tooltip : {
				trigger : 'item'
			},
			legend : {
				orient : 'vertical',
				x : 'left',
				textStyle :{
					fontSize : 9,
				},
				data : [ '医院数量' ]
			},
			visualMap : {
				min : 0,
				max : 250,
				x : 'right',
				y : 'top',
				itemWidth :10,
				calculable:false, 
				color : [ 'orangered', 'yellow', 'lightskyblue' ],
				text : [ '高', '低' ], // 文本，默认为数值文本
				calculable : true
			},
			series : [ {
				tooltip : {
					trigger : 'item',
				},
				name : '医院数量',
				type : 'map',
				mapType : 'china',
				layoutCenter: ['50%', '50%'],
				// 如果宽高比大于 1 则宽度为 100，如果小于 1 则高度为 100，保证了不超过 100x100 的区域
				layoutSize: 300,
				selectedMode : 'single',
				label : {
					normal : {
						show : true,
						textStyle : {
							fontSize : 7,
						}
					},
					emphasis : {
						show : true,
						textStyle : {
							fontStyle : 'oblique',
							fontSize : 7,
						}
					}
				},
				showLegendSymbol : false,
				data:hos_prov_list,
			}, ],
		};
		return option;
}