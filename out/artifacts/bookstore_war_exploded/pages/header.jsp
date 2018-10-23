<!--header-->
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a  href="/index.jsp">Bookstore</a></h1>
            </div>
            <!--navbar-header-->
            <div class=" navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="/index.jsp">Home</a></li>
                    <li><a href="/pages/products.jsp">Products</a></li>
                    <li><a href="/pages/signin.jsp">Sign in</a></li>
                </ul>
            </div>
            <!--//navbar-header-->
        </nav>
        <div class="header-info">
            <div class="header-right search-box">
                <a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
                <div class="search">
                    <form class="navbar-form">
                        <input type="text" class="form-control">
                        <button type="submit" class="btn btn-default" name="search" aria-label="Left Align">
                            Search
                        </button>
                    </form>
                </div>
            </div>
            <div class="header-right login">
                <a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
                <div id="loginBox">
                    <div id="loginForm">
                        <p>WELCOME:  <span>User name </span></p></p>
                        <p><a class="sign" href="/pages/account.jsp">My Account</a> </p>
                        <p><a class="sign" href="/pages/orders.jsp">My Orders</a> </p>
                        <p><a class="sign" href="#">Sign Out</a></p>
                    </div>
                </div>
            </div>
            <div class="header-right cart">
                <a href="/pages/mycart.jsp"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//header-->