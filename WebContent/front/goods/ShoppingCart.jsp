<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<%
	String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>购物车</title>

<!--     Bootstrap Styles -->
<link href="front/goods/assets/css/bootstrap.css" rel="stylesheet" />

<!--     FontAwesome Styles -->
<link href="front/goods/assets/css/font-awesome.css" rel="stylesheet" />
<!--     Morris Chart Styles -->
<link href="front/goods/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!--     Custom Styles -->
<link href="front/goods/assets/css/custom-styles.css" rel="stylesheet" />
<!--     Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!--Less styles -->

<!-- Bootstrap style -->
<link id="callCss" rel="stylesheet"
	href="front/goods/themes/bootshop/bootstrap.min.css" media="screen" />
<link href="front/goods/themes/css/base.css" rel="stylesheet" media="screen" />
<!-- Bootstrap style responsive -->
<link href="front/goods/themes/css/bootstrap-responsive.min.css" rel="stylesheet" />
<link href="front/goods/themes/css/font-awesome.css" rel="stylesheet"
	type="text/css">
<!-- Google-code-prettify -->
<link href="front/goods/themes/js/google-code-prettify/prettify.css"
	rel="stylesheet" />
<!-- fav and touch icons -->
<link rel="shortcut icon" href="front/goods/themes/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="front/goods/themes/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="front/goods/themes/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="front/goods/themes/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="front/goods/themes/images/ico/apple-touch-icon-57-precomposed.png">
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
<link href="front/goods/assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css" id="enject"></style>

<!--jquery 引入 -->
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- js -->
<script type="text/javascript" src="front/goods/assets/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="front/goods/assets/js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="front/goods/assets/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<script src="front/goods/assets/js/jquery.easing.min.js"></script>



<style>
.error {
	color: red;
}
</style>

<!-- 点击使用默认地址按钮事件方法 结束-->
</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><i
					class="fa fa-comments"></i> <strong>MASTER </strong></a>
			</div>


			<!-- 右上角导航栏功能 -->
			
		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div id="sideNav" href="">
				<i class="fa fa-caret-right"></i>
			</div>
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a href="index.html"><i class="fa fa-dashboard"></i>
							首页</a></li>
					<li><a href="ui-elements.html"><i class="fa fa-desktop"></i>
							ETC系统</a></li>
					<li><a href="chart.html"><i class="fa fa-bar-chart-o"></i>
							车辆保险</a></li>
					<li><a href="tab-panel.html"><i class="fa fa-qrcode"></i>
							加油返利</a></li>

					<li><a
						href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByPage"
						class="active-menu"> <i class="fa fa-sitemap"></i> 汽车配件<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=1">蓄电池</a></li>
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=2">制动系统</a></li>
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=3">滤清器</a></li>
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=4">点火及电器系统</a></li>
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=5">底盘及转向系统</a></li>
						</ul></li>
				</ul>

			</div>

		</nav>
		
		
		<!-- 右边显示内容部分  -->
		<div id="page-wrapper">
			
			<div class="checkout" >
	
	
		<h3>我的购物车</h3>
		<div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
			<table class="timetable_sub">
				<thead>
					<tr>
						<th>操作</th>
						<th>图片</th>
						<th>数量</th>
						<th>名称</th>
						<th>单价</th>
						<th>总价</th>
					</tr>
				</thead>
				
				<!--购物车展示的内容  -->
				
				<c:if test="${requestScope.shoppingList != null }">
				<c:forEach items="${requestScope.shoppingList}" var="goods">
				
					<tr class="rem1">				
					<!--删除按钮 -->
						<td >
							<div>
							<a href="javascript:deleteGoods(${goods.goodsId})"><div ><button class="btn btn-danger delete">删除</button></div></a>					
							</div>
						</td>
						<!--图片-->
						<td class="invert-image"><a href="#"><img src="${goods.goodsImag}" alt=" " class="img-responsive" /></a></td>
						<!--数量  -->
						<td class="invert">
							 <div class="quantity"> 
								<div class="quantity-select">        
								<!--减少按钮-->   				
									<%-- <a href="${pageContext.request.contextPath}/fyhGoods?op=reduceGoodsNumber&goodsId=${goods.goodsId}"><div class="entry value-minus">&nbsp;</div></a> --%> 
								<a href="javascript:reduce(${goods.goodsId})"><div class="entry value-minus">&nbsp;</div></a>
								<!--显示的商品数量  -->	
									<div class="entry value"><span>${goods.goodsNumber}</span></div>
			                    <!--增加按钮-->
									<%-- <a href="${pageContext.request.contextPath}/fyhGoods?op=addGoodsNumber&goodsId=${goods.goodsId}"><div class="entry value-plus active"></div></a> --%>
								<a href="javascript:add(${goods.goodsId})"><div class="entry value-plus active"></div></a>
								</div>
							</div>		
							
						</td>
						<!--名称-->
						<td class="invert">${goods.goodsName}</td>
						<!--单价-->
						<td class="invert">$ ${goods.goodsPrice}</td>
						<!--总价-->
						<td class="invert">$ ${goods.goodsPrice*goods.goodsNumber}</td>
					</tr>
					</c:forEach>
					</c:if>			
					
					<!--购物车展示的内容  结束-->
					
					
		<script >
		//减少按钮
	     function reduce(goodsId){	  
		 //确认提交,跳转页面
		location.href="${pageContext.request.contextPath}/fyhGoods?op=reduceGoodsNumber&goodsId="+goodsId;      
	    }
		//增加按钮
	     function add(goodsId){	  
		 //确认提交,跳转页面
		location.href="${pageContext.request.contextPath}/fyhGoods?op=addGoodsNumber&goodsId="+goodsId;      
	    }
		
		//删除购物车按钮
		function deleteGoods(goodsId){
		  layer.confirm('确定从购物车删除该商品？', {
	           btn: ['确定删除','取消'] //按钮
	         }, function(){
	         $.post("fyhGoods?op=deleteGoods","goodsId="+goodsId,function(data,status){
	        	 layer.msg(data,{
	        		 time:1500},function(){
		        		 location.href="fyhGoods?op=queryShoppingByPage";
		        	 }
	        	 );        	 
	     		})
	           }, function(){
	           layer.msg('好的大人!', {
	           time: 1500, //1.5s后自动关闭
	  });
	});
   }
		
	  
	   </script>
			</table>
		</div>
		
		<!--总计金额的方框 -->
		<div class="checkout-left">	
				
				<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
					<a href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByPage"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>继续购物</a>
					
					<%-- <a href="${pageContext.request.contextPath}/fyhGoods?op=settlementShow&">结算&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a> --%>
                    <a href="javascript:sentSettlementShow()">结算&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a>
					
				</div>	
				<div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
					<h4>总计</h4>
					<ul>
					    <script>
					    var result=0;
					    </script>
					    <c:if test="${requestScope.shoppingList != null }">
				        <c:forEach items="${requestScope.shoppingList}" var="goods">
				        
						<li>${goods.goodsName} <i>-</i> <span>$ ${goods.goodsPrice*goods.goodsNumber}</span></li>
							
					    <!--测试插入数据-->
						<script>
						result=result+${goods.goodsPrice*goods.goodsNumber};
						</script>
										
						</c:forEach>
					    </c:if>
					    <hr/>
						<li>总价格 <i>-</i> 
						<span id="result"  class="result"></span></li>
						
					</ul>
					
				<!--测试插入数据-->
				    
						<script>						
						$("#result").html(result);	
						</script>		
								
				</div>	
				
				<script >
		//跳转结算页面
	     function sentSettlementShow(){
		var result=$("#result").text();
		 //确认提交,跳转页面
		location.href="${pageContext.request.contextPath}/fyhGoods?op=settlementShow&result="+result;      
	    }
			</script >	
				
				<div class="clearfix"> </div>
			</div>
			
			<!--总计金额的方框 结束 -->

</div>	
				
				
		<!--购物车显示内容结束  -->		
				
		</div>
		
		
		
		
		
		
	<script src="assets/js/jquery-1.10.2.js"></script> 
	<!-- Bootstrap Js -->
	<script src="front/goods/assets/js/bootstrap.min.js"></script>
	<!-- layer的jar包 -->
	<script src="front/goods/layer-v3.1.1/layer/layer.js"></script>

	<!-- Metis Menu Js -->
	<script src="front/goods/assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="front/goods/assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="front/goods/assets/js/morris/morris.js"></script>

	<script src="front/goods/assets/js/easypiechart.js"></script>
	<script src="front/goods/assets/js/easypiechart-data.js"></script>


	<!-- 下拉框收缩的 -->
	<script src="front/goods/assets/js/custom-scripts.js"></script>
		


		
</body>

</html>