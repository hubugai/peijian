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
<link href="front/goods/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="front/goods/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="front/goods/assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />
<!-- Custom Styles-->
<link href="front/goods/assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap style -->
<link id="callCss" rel="stylesheet"
	href="front/goods/themes/bootshop/bootstrap.min.css" media="screen" />
<link href="front/goods/themes/css/base.css" rel="stylesheet" media="screen" />
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
					<ul class="dropdown-menu dropdown-messages">
						<li><a href="#">
								<div>
									<strong>John Doe</strong> <span class="pull-right text-muted">
										<em>Today</em>
									</span>
								</div>
								<div>Lorem Ipsum has been the industry's standard dummy
									text ever since the 1500s...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem Ipsum has been the industry's standard dummy
									text ever since an kwilnw...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem Ipsum has been the industry's standard dummy
									text ever since the...</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>Read
									All Messages</strong> <i class="fa fa-angle-right"></i>
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
					<li><a href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByPage" ><i
							class="fa fa-sitemap"></i> 汽车配件<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">						
					        <li><a href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=1">蓄电池</a></li>					
							<li><a href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=2" class="active-menu">制动系统</a></li>
							<li><a href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=3">滤清器</a></li>
							<li><a href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=4">点火及电器系统</a></li>
							<li><a href="${pageContext.request.contextPath}/fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=5">底盘及转向系统</a></li>
						</ul>
						</li>
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<!-- 右边显示内容部分-->
		<div id="page-wrapper">
			<div id="mainBody">
				<div class="container">
					<div class="row">

						<div class="span9">

							<!-- 搜索框  -->
							<form class="navbar-form navbar-right" action="fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=1" method="post" >
								<input type="text" name="goodsValueLike" id="goodsValueLike"
									class="form-control" placeholder="输入搜索的内容..."
									value="${goodsValueLike==null?'':goodsValueLike}">
								<input type="submit"  value="搜索"
									class="form-control">
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
								<div class="tab-pane" id="listView">

									<div class="row">
										<div class="span2">
											<img src="front/themes/images/products/1.jpg" alt="" />
										</div>
										<div class="span4">
											<h3>商品的名字</h3>
											<hr class="soft" />
											<h5>商品的类型</h5>
											<p>这是一个详情介绍哦</p>
											<a class="btn btn-small pull-right"
												href="product_details.html">点击查看详情</a> <br class="clr" />
										</div>
										<div class="span3 alignR">
											<form class="form-horizontal qtyFrm">
												<h3>$140.00</h3>
												<label class="checkbox"> <input type="checkbox">
													选中
												</label><br /> <a href="product_details.html"
													class="btn btn-large btn-primary"> 加入购物车 <i
													class=" icon-shopping-cart"></i></a> <a
													href="product_details.html" class="btn btn-large"><i
													class="icon-zoom-in"></i></a>

											</form>
										</div>
									</div>
									<!--分割线 -->
									<hr class="soft" />
								</div>




















								<!--销售的物品-->
								<div class="tab-pane  active" id="blockView" >

									<ul class="thumbnails">
										<!--显示商品  -->
										<c:if test="${pd.data != null }">
											<c:forEach items="${pd.data}" var="goods">
												<li class="span3">
													<div class="thumbnail">
														<!--商品的图片 -->
															<div style="height:180px">
															<a href="product_details.html">			
															<img src="${goods.goodsImag}" alt="" /></a>
															</div>
														<div class="caption">
															<!--商品名字 -->
															<div>
																<h5>${goods.goodsName}</h5>
															</div>
															<!--商品详情-->
															<div style="height:150px">
																<p>${goods.goodsDetails}</p>
															</div>
															<h4 style="text-align: center">
																<a class="btn" href="product_details.html"> <i
																	class="icon-zoom-in"></i></a> <a class="btn" href="#">添加
																	<i class="icon-shopping-cart"></i> <!--商品价格-->
																</a> <a class="btn btn-primary" href="product_details.html">$ ${goods.goodsPrice}</a>
															</h4>
														</div>
													</div>
												</li>
											</c:forEach>
										</c:if>
									</ul>
								</div>

























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
		</div>
		<!-- 右边显示内容部分结束-->

		<!-- /. WRAPPER  -->
		<!-- JS Scripts-->
		<!-- jQuery Js -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.js"></script>
		<!-- Bootstrap Js -->
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

		<!-- Metis Menu Js -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.metisMenu.js"></script>
		<!-- Morris Chart Js -->
		<script src="${pageContext.request.contextPath}/assets/js/morris/raphael-2.1.0.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/morris/morris.js"></script>

		<script src="assets/js/easypiechart.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/easypiechart-data.js"></script>

		<!-- Custom Js -->
		<script src="${pageContext.request.contextPath}/assets/js/custom-scripts.js"></script>


		<!-- 分页跳转 -->
		<script type="text/javascript"
			src="https://cdn.bootcss.com/jquery/2.1.1/jquery.js"></script>
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
			 location.href="fyhGoods?op=queryGoodsByPage&page="+$(this).text()+"&goodsValueLike="+$("#searchValue").val();
		 });
		 //下一页
		 $("#nextPage").click(function(){
			 location.href="fyhGoods?op=queryGoodsByPage&page="+${pd.page+1}+"&goodsValueLike="+$("#searchValue").val();
		 });
		 //上一页
		 $("#prePage").click(function(){
			 location.href="fyhGoods?op=queryGoodsByPage&page="+${pd.page-1}+"&goodsValueLike="+$("#searchValue").val();
		 });
		 
		 //模糊检索按钮,已经用submit代替
		/*  $("#btnSearch").click(function(){
		//得到文本框的值
		var goodsValueLike=$("#searchValue").val();
		location.href="fyhGoods?op=queryGoodsByGoodsTypeId&goodsTypeId=1&&goodsValueLike="+goodsValueLike;
		 }); */
		 
	  });
	  </script>
</body>

</html>