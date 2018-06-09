<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
<!--     cdn引入jquery -->
     <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
     
     <!-- FontAwesome Styles-->
<link href="${pageContext.request.contextPath}/front/goods/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="${pageContext.request.contextPath}/front/goods/assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />
<!-- 左侧导航栏-->
<link href="${pageContext.request.contextPath}/front/goods/assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
     
	<!-- Bootstrap Styles-->
    <link href="${pageContext.request.contextPath}/front/goods/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath}/front/goods/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath}/front/goods/assets/css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front/goods/css/main.css" />
</head>
<body>

    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><i class="fa fa-comments"></i> <strong>MASTER </strong></a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Doe</strong>
                                    <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">28% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                            <span class="sr-only">28% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">85% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                            <span class="sr-only">85% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <!--左侧导航栏-->
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
			<!--左侧导航栏结束 -->

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
			 <div class="row">
                    <div class="col-md-12">
                    
                      <!-- /. 内容  -->
                 <div class="pay">
	<!--主内容开始编辑-->
	<div class="tr_recharge">
		
		<!-- /. NAV SIDE  -->

				<div id="page-inner">
					<div class="row">
						<div class="col-md-6">
							<h1 class="page-header">请确认收货地址</h1>
						</div>
						<div class="col-md-6" align="right">
							<a href="#" class="btn btn-info btn-sm">新增收货地址</a>
							<a href="#" class="btn btn-success btn-sm">管理收货地址</a>
						</div>
					</div>
					<!-- /. ROW  -->
					
					<div class="row">
					
					<!-- 收货地址的信息-->
					
					<c:if test="${requestScope.list != null }">
					<c:forEach items="${requestScope.list}" var="address" >	
												
						<div class="col-md-4 col-sm-4 background">
							<div class="panel panel-info">
								<div class="panel-heading">
									${address.userTrueName} --收
								</div>
								<div class="panel-body">
									<p >${address.address}</p>
									<br/>联系号码:
									<p>${address.userPhone}</p>
								</div>
								<div class="panel-footer" align="right">
									<a href="#" class="btn btn-primary">修改</a>
									<button id="addressInfo" name="addressInfo" class="btn  addresss" value="${address.userTrueName},${address.address},${address.userPhone}">选择</button>
								</div>
							</div>
						</div>
						
						</c:forEach>
						</c:if>
						<script>
						
							$(".addresss").click(function (){
								 var check=$(this).val();
								 alert($(this).val());	
								// $(this).css('background-color','#f44336')
								 $(this).css({'font-size':'18px','background-color':'#f44336'});
								 $(this).text("已选择");	
								 
							})
					 

							 
						
						</script>
						
						
						<!-- 收货地址的信息 结束-->
	
					<!-- /. ROW  -->
		
		<form action="" class="am-form" id="doc-vld-msg" >
			<div class="tr_rechbox">
				<div class="tr_rechhead">
					<img src="${pageContext.request.contextPath}/front/goods/images/ys_head2.jpg" />
					<p>付款选择：
					
						<a></a>
					</p>
					
				</div>
				
				<div class="tr_rechcho am-form-group">
					<span>付款方式：</span>
					<label class="am-radio">
							<input type="radio" name="radio1" value="" data-am-ucheck required data-validation-message="请选择一种充值方式"><img src="${pageContext.request.contextPath}/front/goods/images/wechatpay.png">
						</label>
					<label class="am-radio" style="margin-right:30px;">
							<input type="radio" name="radio1" value="" data-am-ucheck data-validation-message="请选择一种充值方式"><img src="${pageContext.request.contextPath}/front/goods/images/zfbpay.png">
						</label>
						<label class="am-radio" style="margin-right:30px;">
							<input type="radio" name="radio1" value="" data-am-ucheck data-validation-message="请选择一种充值方式"><img src="${pageContext.request.contextPath}/front/goods/images/zfbpay.png">
						</label>
<!-- 						ajax传值 -->
						<script>
						$(document).ready(function (){
							$.get ("/CarServeSys1.0/FuelcardController?op=recharge",function (data,status){
								console.log(data);
								var data = JSON.parse(data);
								console.log(data.bankId+"bankNumber:"+data.bankNumber);
							})
							
						})

</script>

				</div>
				<div class="tr_rechnum">
					<span>应付金额：</span>
					<p class="rechnum" id="resultMoney">${requestScope.result}元</p>
					<input type="text" style="display:none" value="" name="money" id="money">
				</div>
			</div>
			<div class="tr_paybox">
				<a href="javascript:text()"><input type="button" value="确认支付" class="tr_pay am-btn" /></a>
				
				<script >
		//跳转结算页面
	     function text(){
		var addressInfo=$("#addressInfo").val();
		 //确认提交,跳转页面
		location.href="${pageContext.request.contextPath}/fyhGoods?op=success&addressInfo="+addressInfo;      
	    }
			</script >	
				
				
				<span>温馨提示：遇到问题请拨打阿瓜电话。</span>
			</div>
		</form>
	</div>
</div>   
                    </div>
                </div> 
                

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/amazeui.min.js"></script>
<script type="text/javascript" src="js/ui-choose.js"></script>
<script type="text/javascript">
	// 将所有.ui-choose实例化
	$('.ui-choose').ui_choose();
	// uc_01 ul 单选
	var uc_01 = $('#uc_01').data('ui-choose'); // 取回已实例化的对象
	uc_01.click = function(index, item) {
		console.log('click', index, item.text())
	}
	uc_01.change = function(index, item) {
		console.log('change', index, item.text())
	}
	$(function() {
		$('#uc_01 li:eq(3)').click(function() {
			$('.tr_rechoth').show();
			$('.tr_rechoth').find("input").attr('required', 'true')
			$('.rechnum').text('1500.00元');
			$("#money").val('1500');
		})
		$('#uc_01 li:eq(0)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('100.00元');
			$("#money").val('100');
			$('.othbox').val('');
		})
		$('#uc_01 li:eq(1)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('500.00元');
			$("#money").val('500');
			$('.othbox').val('');
		})
		$('#uc_01 li:eq(2)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('1000.00元');
			$("#money").val('1000');
			$('.othbox').val('');
		})
		
	})

	$(function() {
		$('#doc-vld-msg').validator({
			onValid: function(validity) {
				$(validity.field).closest('.am-form-group').find('.am-alert').hide();
			},
			onInValid: function(validity) {
				var $field = $(validity.field);
				var $group = $field.closest('.am-form-group');
				var $alert = $group.find('.am-alert');
				// 使用自定义的提示信息 或 插件内置的提示信息
				var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

				if(!$alert.length) {
					$alert = $('<div class="am-alert am-alert-danger"></div>').hide().
					appendTo($group);
				}
				$alert.html(msg).show();
			}
		});
	});
</script>
                 
                 
                 
                 
				 <footer><p>Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="#" target="_blank" title="模板之家">瓜组</a> - Collect from <a href="#" title="网页模板" target="_blank">瓜组呱呱呱</a></p></footer>
				</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->

      <!-- Bootstrap Js -->
    <script src="${pageContext.request.contextPath}/front/goods/assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="${pageContext.request.contextPath}/front/goods/assets/js/jquery.metisMenu.js"></script>
      <!-- Custom Js -->
    <script src="${pageContext.request.contextPath}/front/goods/assets/js/custom-scripts.js"></script>
    
   
</body>
</html>