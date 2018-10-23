<!DOCTYPE html>
<html>
<head>
<title>My Orders</title>
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Custom Theme files -->
	<link href="../css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="../css/style.css" type="text/css" rel="stylesheet" media="all">
	<!-- js -->
	<script src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-3.1.1.min.js"></script>
	<!-- //js -->
</head>
<body>
	<%@ include file="header.jsp" %>
	<!--//single-page-->
	<div class="container">
		<div class="order">
			<div class="col-lg-12 single-grid1">
				<h2>My Order</h2>
				<div class="col-lg-12 order-list">
					<div class="col-lg-2">
						<h4>Order ID : </h4>
						<p>123456</p>
					</div>
					<div class="col-lg-2">
						<h4>Order Placed : </h4>
						<p>January 28, 2018</p>
					</div>
					<div class="col-lg-2">
						<h4>Quantity:</h4>
						<p>100</p>
					</div>
					<div class="col-lg-2">
						<h4>Shipping:</h4>
						<p>$5</p>
					</div>
					<div class="col-lg-2">
						<h4>Tax:</h4>
						<p>$13</p>
					</div>
					<div class="col-lg-2">
						<h4>Total Price : </h4>
						<p>$113</p>
					</div>
					<div class="col-lg-10">
						<h4>Products Name : </h4>
						<p><a href="detail.jsp">CLEAN CODE: A HANDBOOK OF AGILE SOFTWARE</a></p>
						<p><a href="detail.jsp">CLEAN CODE: A HANDBOOK OF AGILE SOFTWARE</a></p>
					</div>
					<div class="col-lg-2">
						<h4>Status : </h4>
						<p>Success</p>
					</div>
				</div>
				<div class="col-lg-12 order-list">
					<div class="col-lg-2">
						<h4>Order ID : </h4>
						<p>123456</p>
					</div>
					<div class="col-lg-2">
						<h4>Order Placed : </h4>
						<p>January 28, 2018</p>
					</div>
					<div class="col-lg-2">
						<h4>Quantity:</h4>
						<p>100</p>
					</div>
					<div class="col-lg-2">
						<h4>Shipping:</h4>
						<p>$5</p>
					</div>
					<div class="col-lg-2">
						<h4>Tax:</h4>
						<p>$13</p>
					</div>
					<div class="col-lg-2">
						<h4>Total Price : </h4>
						<p>$113</p>
					</div>
					<div class="col-lg-10">
						<h4>Products Name : </h4>
						<p><a href="detail.jsp">CLEAN CODE: A HANDBOOK OF AGILE SOFTWARE</a></p>
						<p><a href="detail.jsp">CLEAN CODE: A HANDBOOK OF AGILE SOFTWARE</a></p>
					</div>
					<div class="col-lg-2">
						<h4>Status : </h4>
						<p>Success</p>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<!-- collapse -->

	<!--footer-->
	<%@ include file="../pages/footer.jsp" %>
	<!--footer-->
</body>
</html>