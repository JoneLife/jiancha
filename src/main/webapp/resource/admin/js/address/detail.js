$(function(){
	indexDetail.service.init();
    if (!Highcharts.theme) {
        Highcharts.setOptions({
            chart: {
                backgroundColor: 'transparent'
            },
            colors: ["#ffde00","#1cc1fb"]
        });
    }
});

var indexDetail = {
		service : {
			init : function(){
				indexDetail.controller.getChart();
				indexDetail.service.dealClick();
			},
			createChart : function(data){
				detailChart.xAxis.categories=data.time;
				detailChart.series[0].data=data.count;
				detailChart.series[1].data=data.totalCount;
				$("#searchareaspline").highcharts(detailChart);
			},
			dealClick : function(){
//				$("#addressReturn").click(function(){
//					window.location.href=contextPath+"/address/index/";
//				});
		        $('.date').on('click', function(){
		        	var date = $(this).prev().find(".dataTime").text();
		        	var $thisEle = $(this).next().find('.bodyListShow');
		            if($thisEle.is(':visible')) {
		        		$thisEle.prev().val("1");
		        		$thisEle.empty();
		                $thisEle.hide();
		            } else {
		            	indexDetail.controller.getPage($thisEle, date,1);
		            	$thisEle.show();
		            }
		        });
		        
		        $('.bodyListShow').on('click',".iconDownSty", function(){
		        	var date = $(this).parents("li").find(".hiddenDiv .dataTime").text();
		        	var pageNo = $(this).attr("pageNo");
		        	var $thisEle = $(this).parents(".bodyListShow");
		        	indexDetail.controller.getPage($thisEle, date, parseInt(pageNo)+1);
		        });
		        
			    $("#addressReturn").click(function(){
			    	
			    	var params= window.location.search;
//			    	if(confirm("确定要关闭吗")){
//			    		window.close();
//			    	}
			    	var type=$(this).attr("type");
			    	if(type=="black"){
			    		window.location.href=contextPath+"/black/list"+params;
			    	}else if(type=="white"){
			    		window.location.href=contextPath+"/white/list"+params;
			    	}else{
			    		window.location.href=contextPath+"/address/index"+params;
			    	}
			    });
		        
			}
			
		},
		controller : {
			getChart : function(){
				var userName = $("#userName").val();
				$.ajax({
					url:contextPath+'/address/ajax/detailChart',
					type:'POST',
					dataType : 'json',	
					data:{"userName":userName},
					success:function(data){
						if(data.code == 1){
							indexDetail.service.createChart(data.attach);
						}
					},
					error:function(){
						//alert("操作失败");
					}
				});
			},
			getPage : function($thisEle, date,pageNo){
				var userName = $("#userName").val();
				//var pageNo = $("#pageNo").val();
				$.ajax({
					url:contextPath+'/address/index/detailTable',
					type:'POST',
					dataType : 'html',	
					data:{"userName":userName,"pageNo":pageNo,"pageSize":15,"date":date},
					success:function(data){
						$thisEle.prev().val(pageNo);
						$thisEle.find(".downClass").hide();
						$thisEle.append(data);
						$thisEle.show();
					},
					error:function(){
						//alert("操作失败");
					}
				});
				
			}
		}
		
		
		
};



var detailChart = {
        chart: {
            //renderTo:renderToID,
            type: 'areaspline'
            //marginTop: -6
        },
        title: {
            text: ''
        }, credits:{
            enabled:false
        },
        exporting: {
            enabled: false
        },
        legend: {
            //layout: 'center',
            align: 'center',
            verticalAlign: 'bottom',
            //x: 150,
            y: 20,
            style:{

            },
            itemStyle: {
                fontSize:'14px',
                color:'#a2a2a2'
            },
            //floating: true,
            backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF',
            symbolWidth:12,
            symbolRadius:6
        },
        xAxis: {
            categories: [
                '00.00',
                '00.00',
                '00.00',
                '00.00',
                '00.00',
                '00.00',
                '00.00'
            ],
            tickWidth: 0,//设置刻度宽度为0 不显示
            lineColor: '#dadada',//设置x轴线的颜色
            lineWidth: 1
        },
        yAxis: [{
            lineWidth: 1,
            lineColor: '#dadada',
            title: {
                text: ''
            }
        }, {
            lineWidth: 1,
            lineColor: '#dadada',
            opposite: true,
            title: {
                text: ''
            }
        }],
        tooltip: {
            shared: true,
            valueSuffix: ' 次',
            crosshairs: {
                width: 1,
                color: '#1cc1fb',
                dashStyle: 'solid'
            }
        }, credits: {
            enabled: false
        },
        plotOptions: {
            areaspline: {
                fillOpacity: 0.5
            }
        },
        series: [{
            name: '查询次数',
            data: [0, 0, 0, 0, 0, 0, 0]
        }, {
            name: '累计次数',
            data: [0, 0, 0, 0, 0, 0, 0]
        }]

    };