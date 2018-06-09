<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>汽车配件</title>
<!-- Bootstrap Styles-->

<!--暂时屏蔽
<link href="front/goods/assets/css/bootstrap.css" rel="stylesheet" />
  -->



<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- !!!!!! -->


<!-- <link id="callCss" rel="stylesheet"
 	href="front/goods/themes/bootshop/bootstrap.min.css" media="screen"  />	  -->

<!-- FontAwesome Styles-->
<link href="front/goods/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="front/goods/assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />
<!-- 左侧导航栏-->
<link href="front/goods/assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap style -->




<link href="front/goods/themes/css/base.css" rel="stylesheet"
	media="screen" />
<!-- Bootstrap style responsive -->
<link href="front/goods/themes/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link href="front/goods/themes/css/font-awesome.css" rel="stylesheet"
	type="text/css">
<!-- Google-code-prettify -->
<link href="front/goods/themes/js/google-code-prettify/prettify.css"
	rel="stylesheet" />
<!-- fav and touch icons -->
<link rel="shortcut icon" href="themes/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="front/goods/themes/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="front/goods/themes/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="front/goods/themes/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="front/goods/themes/images/ico/apple-touch-icon-57-precomposed.png">
<style type="text/css" id="enject"></style>


<style>
.span3 {
	width: 270px;
}

#blockView, ul, li {
	padding: 0;
	margin: 0;
	list-style: none
}

h5 {
	font-weight: bold;
	font-size: 18px;
	font-family: "宋体"
}
</style>

</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">测试</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><i
					class="fa fa-comments"></i> <strong>MASTER </strong></a>
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
				<!--跳转到购物车的页面  -->
					<ul class="dropdown-menu dropdown-messages">
						<li><a href="${pageContext.request.contextPath}/fyhGoods?op=queryShoppingByPage">
								<div>
									<strong>购物车</strong> <span class="pull-right text-muted">
										
									</span>
								</div>
								
						</a></li>
				
					</ul> <!-- /.dropdown-messages --></li>
					
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">
								<div>
									<p>
										<strong>Task 1</strong> <span class="pull-right text-muted">60%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%">
											<span class="sr-only">60% Complete (success)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 2</strong> <span class="pull-right text-muted">28%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"
											style="width: 28%">
											<span class="sr-only">28% Complete</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 3</strong> <span class="pull-right text-muted">60%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%">
											<span class="sr-only">60% Complete (warning)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 4</strong> <span class="pull-right text-muted">85%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="85" aria-valuemin="0"
											aria-valuemax="100" style="width: 85%">
											<span class="sr-only">85% Complete (danger)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Tasks</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-tasks --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> New Comment <span
										class="pull-right text-muted small">4 min</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
										class="pull-right text-muted small">12 min</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> Message Sent <span
										class="pull-right text-muted small">4 min</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> New Task <span
										class="pull-right text-muted small">4 min</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
										class="pull-right text-muted small">4 min</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Alerts</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a href="#"><i class="fa fa-sign-out fa-fw"></i>
								Logout</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
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
						> <i class="fa fa-sitemap"></i> 汽车配件<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=1">蓄电池</a></li>
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=2">制动系统</a></li>
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=3">滤清器</a></li>
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=4" class="active-menu">点火及电器系统</a></li>
							<li><a
								href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=5">底盘及转向系统</a></li>
						</ul></li>
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<!-- 右边显示内容部分-->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">

					<div class="span9">

						<!-- 搜索框  -->
						<form class="navbar-form navbar-right"
							action="fyhGoods?op=queryGoodsByPage" method="post">
							<input type="text" name="goodsValueLike" id="goodsValueLike"
								class="form-control" placeholder="输入搜索的内容..."
								value="${goodsValueLike==null?'':goodsValueLike}"> <input
								type="submit" value="搜索" class="form-control">
						</form>

						<!-- 切换浏览模式 ,暂时隐藏 -->

						<!-- <div id="myTab" class="pull-right">
								<a href="#listView" data-toggle="tab"><span
									class="btn btn-large"><i class="icon-list"></i></span></a> <a
									href="#blockView" data-toggle="tab"><span
									class="btn btn-large btn-primary"><i
										class="icon-th-large"></i></span></a>
							</div> -->

						<br class="clr" />

						<div class="tab-content">
							

							<!--销售的物品-->
							<div class="tab-pane  active" id="blockView">

								<ul class="thumbnails">
									<!--显示商品  -->
									<c:if test="${pd.data != null }">
										<c:forEach items="${pd.data}" var="goods">
											<li class="span3">
												<div class="thumbnail">
													<!--商品的图片 -->
													<div style="height: 180px">
														<a id="modal-976392"
															href="#modal-container-976392${goods.goodsName}"
															role="button" class="btn" data-toggle="modal"> <img
															src="${goods.goodsImag}" alt="" /></a>
													</div>
													<div class="caption">
														<!--商品名字 -->
														<div class="font">
															<h5>${goods.goodsName}</h5>
														</div>
														<!--商品详情-->
														<div style="height: 180px">
															<p>${goods.goodsDetails}</p>
														</div>
														<h4 style="text-align: center">
															<!--放大镜 -->
															<a id="modal-976392"
																href="#modal-container-976392${goods.goodsName}"
																role="button" class="btn" data-toggle="modal"> <i
																class="icon-zoom-in"></i>
															</a>
															<!--添加购物车  -->
															<a href="javascript:addShoppingCart(${goods.goodsId})"><button
																	class="btn btn-danger">
																	添加购物车<i class="icon-shopping-cart"></i>
																</button></a>
															<!--价格 -->
															<a class="btn btn-primary" href="product_details.html">$
																${goods.goodsPrice}</a>
														</h4>


														<!--商品信息模态 -->
														<div class="modal fade"
															id="modal-container-976392${goods.goodsName}"
															role="dialog" aria-labelledby="myModalLabel"
															aria-hidden="true">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-hidden="true">X</button>
																		<h4 class="modal-title" id="myModalLabel"
																			align="center">${goods.goodsName}</h4>
																	</div>
																	<div class="modal-body">
																		<img src="${goods.goodsImag}" alt="" /></a>
																		<hr />
																		<h4>呵呵</h4>
																	</div>

																	<div class="modal-footer">
																		<button type="button" class="btn btn-default"
																			data-dismiss="modal">关闭</button>
																	</div>
																</div>

															</div>

														</div>
														<!--商品信息模态结尾 -->


													</div>
												</div>
											</li>
										</c:forEach>
									</c:if>
								</ul>
							</div>

							<!--销售的物品结尾-->




						</div>

						<!--分页-->

						<div class="col-md-12 column text-center">
							<ul class="pagination">
								<!--上一页  -->
								<li><a href="javascript:void(0)" id="prePage">上一页</a></li>

								<c:forEach begin="1" end="${pd.totalPage}" var="index">
									<!--如果是当前页数，页码显示为active  -->
									<c:if test="${pd.page==index }">
										<li class="active"><a href="javascript:void(0)"
											class="pageNo">${index}</a></li>
									</c:if>
									<!--如果不是就正常显示  -->
									<c:if test="${pd.page != index }">
										<li><a href="javascript:void(0)" class="pageNo">${index}</a></li>
									</c:if>
								</c:forEach>
								<!--下一页 -->
								<li><a href="javascript:void(0)" id="nextPage">下一页</a></li>
							</ul>
						</div>



						<br class="clr" />
					</div>
				</div>

			</div>
		</div>
		<!-- 右边显示内容部分结束-->

	</div>
	<!-- jQuery Js -->
	<script type="text/javascript"
		src="https://cdn.bootcss.com/jquery/2.1.1/jquery.js"></script>

	<!-- 分页跳转 -->
	<script>	
	  $(function(){
		  //当最大页数的时候，下一页锁定
		 if(${pd.page>=pd.totalPage}){
			 $("#nextPage").css("color","gray");
			 $("#nextPage").css("pointer-events","none");
		 }
		  //当在第一页的时候，上一页按钮锁定
		 if(${pd.page<=1}){
			 $("#prePage").css("color","gray");
			 $("#prePage").css("pointer-events","none");
		 }
		 //点击的页数
		 $(".pageNo").click(function(){
			 location.href="fyhGoods?op=queryGoodsByPage&page="+$(this).text()+"&goodsValueLike="+$("#goodsValueLike").val();
		 });
		 //下一页
		 $("#nextPage").click(function(){
			 location.href="fyhGoods?op=queryGoodsByPage&page="+${pd.page+1}+"&goodsValueLike="+$("#goodsValueLike").val();
		 });
		 //上一页
		 $("#prePage").click(function(){
			 location.href="fyhGoods?op=queryGoodsByPage&page="+${pd.page-1}+"&goodsValueLike="+$("#goodsValueLike").val();
		 });		 
		 //模糊检索按钮
		 $("#btnSearch").click(function(){
		//得到文本框的值
		var goodsValueLike=$("#searchValue").val();
		location.href="fyhGoods?op=queryGoodsByPage&goodsValueLike="+goodsValueLike;
		 });
		 
	  })	;
	  </script>

	<!--删除操作的function的方法  -->
	<!-- <script >
	     function addShoppingCart(goodsId){
		   //提示框
		  var flag= confirm("是否确定添加购物车?");
		   if(flag){
			   //确认提交,跳转页面
			   location.href="fyh?op=delete&articleId2="+goodsId;
		   }
	   }
	</script> -->
   
   <!--添加购物车的弹框  -->
	<!-- <script>
	     function addShoppingCart(goodsId){
		   layer.confirm('确定添加到购物车？', {
           btn: ['确定加入','取消'] //按钮
         }, function(){
	       location.href="fyhGoods?op=addShoppingCart&goodsId="+goodsId;
           }, function(){
           layer.msg('好的大人!', {
           time: 1500, //1.5s后自动关闭
  });
});
	     }
	</script> -->
	
	<script>
	    function addShoppingCart(goodsId){
	    	 layer.confirm('确定添加到购物车？', {
		           btn: ['确定添加','取消'] //按钮
		         }, function(){
		        //确定添加后执行的方法
		        //Ajax
		         $.post("fyhGoods?op=addShoppingCart","goodsId="+goodsId,function(data,status){
		        	 layer.msg('真厉害,添加成功!',{
				      time: 1500, //1.5s后自动关闭
		   		  });	        		       	 
		     		})
		     	//点击取消后的方法
		           }, function(){
		           layer.msg('好的大人!', {
		           time: 1500, //1.5s后自动关闭
		  });
		});
   	
	    }
	
	
	
	</script>

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