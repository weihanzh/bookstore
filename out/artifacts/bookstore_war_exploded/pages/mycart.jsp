<!DOCTYPE html>
<html>
<head>
	<title>My Cart</title>
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Custom Theme files -->
	<link href="../css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="../css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="../css/cmxform.css" type="text/css" rel="stylesheet" media="all">
	<!-- js -->
	<script src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-3.1.1.min.js"></script>
	<script type="text/javascript" src="../js/jquery.validate.js"></script>
	<script type="text/javascript" src="../js/site.js"></script>
	<!-- //js -->
	<!-- cart -->
	<script src="../js/simpleCart.min.js"> </script>
	<!-- cart -->
</head>
<body>
	<!--header-->
	<%@ include file="header.jsp" %>
	<!--//header-->
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
			<h2>My Shopping Cart: <span> 2 </span> books</h2>
			<div class="cart-header">
				<div class="close1"> </div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						<img src="../images/bk1.png" class="img-responsive" alt="">
					</div>
					<div class="cart-item-info">
						<h3><a href="#"> CLEAN CODE: A HANDBOOK OF AGILE SOFTWARE </a></h3>
						<h3><span>Price:</span></h3>
						<p class="qty"> 59.99 </p>
						<h3><span>Quantity:</span></h3>
						<p class="qty"> 1 </p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="cart-header2">
				<div class="close2"> </div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						<img src="../images/bk2.png" class="img-responsive" alt="">
					</div>
					<div class="cart-item-info">
						<h3><a href="#"> CLEAN CODE: A HANDBOOK OF AGILE SOFTWARE </a></h3>
						<h3><span>Price:</span></h3>
						<p class="qty"> 59.99 </p>
						<h3><span>Quantity:</span></h3>
						<p class="qty"> 1 </p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="register-but">
				<input type="submit" value="Proceed to checkout" onclick="location.href='checkout.jsp'">
			</div>
		</div>
	</div>
	<!--//checkout-->	
	<!--footer-->
	<%@ include file="../pages/footer.jsp" %>
	<!--footer-->
</body>
</html>