<!DOCTYPE html>
<html>
<head>
	<title>Product Details</title>
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
	<script src="../js/imagezoom.js"></script>
	<script type="text/javascript" src="../js/jquery.validate.js"></script>
	<script type="text/javascript" src="../js/form-validation.js"></script>
	<!-- //js -->
	<!-- cart -->
	<script src="../js/simpleCart.min.js"> </script>
	<!-- cart -->
	<!-- FlexSlider -->
	<script defer src="../js/jquery.flexslider.js"></script>
	<link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
	  $('.flexslider').flexslider({
		animation: "slide",
		controlNav: "thumbnails"
	  });
	});
</script>
<!--//FlexSlider -->
</head>
<body>
	<%@ include file="header.jsp" %>
	<!--//single-page-->
	<div class="single">
		<div class="container">
			<div class="single-grids">				
				<div class="col-md-4 single-grid">		
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb="../images/bk1.png">
								<div class="thumb-image"> <img src="../images/bk1.png" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="../images/bk1.png">
								 <div class="thumb-image"> <img src="../images/bk1.png" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="../images/bk1.png">
							   <div class="thumb-image"> <img src="../images/bk1.png" data-imagezoom="true" class="img-responsive"> </div>
							</li> 
						</ul>
					</div>
				</div>	
				<div class="col-md-8 single-grid simpleCart_shelfItem">
					<h3>CLEAN CODE: A HANDBOOK OF AGILE SOFTWARE</h3>
					<div class="tag">
						<p>Publisher : HarperCollins Publishers LLC</p>
						<p>Publish Year : 2016 </p>
					</div>
					<h4><strong>Introduction:</strong></h4>
					<p> Even bad code can function. But if code is not clean, it can bring a development organization to its knees.</p>
					<div class="galry">
						<div class="prices-left">
							<h5 class="item_price">$995.00</h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<form action="/MyCartServlet" name="myCartForm" method="post" id="myCartForm">
						<p class="qty"> Qty :  </p><input min="1" type="number" id="quantity" name="quantity" value="1" class="form-control input-small">
						<input hidden="hidden" name="bookid" value="0132350882">
						<div class="clearfix"> </div>
						<div class="btn_form">
							<a href="/pages/mycart.jsp" class="add-cart item_add" name="add_to_cart">ADD TO CART</a>
						</div>
					</form>
					<div class="tag">
						<p>Category : <a href="#"> Arts</a></p>
					</div>
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- collapse -->
	<div class="collpse tabs">
		<div class="container">
			<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							  Description
							</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							<p>Even bad code can function. But if code isn’t clean, it can bring a development organization to its knees. Every year, countless hours and significant resources are lost because of poorly written code. But it doesn’t have to be that way.
							Noted software expert Robert C. Martin presents a revolutionary paradigm with Clean Code: A Handbook of Agile Software Craftsmanship . Martin has teamed up with his colleagues from Object Mentor to distill their best agile practice of cleaning code “on the fly” into a book that will instill within you the values of a software craftsman and make you a better programmer—but only if you work at it.
							What kind of work will you be doing? You’ll be reading code—lots of code. And you will be challenged to think about what’s right about that code, and what’s wrong with it. More importantly, you will be challenged to reassess your professional values and your commitment to your craft.
							Clean Code is divided into three parts. The first describes the principles, patterns, and practices of writing clean code. The second part consists of several case studies of increasing complexity. Each case study is an exercise in cleaning up code—of transforming a code base that has some problems into one that is sound and efficient. The third part is the payoff: a single chapter containing a list of heuristics and “smells” gathered while creating the case studies. The result is a knowledge base that describes the way we think when we write, read, and clean code.
							This book is a must for any developer, software engineer, project manager, team lead, or systems analyst with an interest in producing better code.
							</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--//collapse -->

	<!--footer-->
	<%@ include file="../pages/footer.jsp" %>
	<!--footer-->

</html>