<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ShoppingCart.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart | Home</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <script src="https://kit.fontawesome.com/e39550dccd.js" crossorigin="anonymous"></script>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet'/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <link href="Style/common.css" rel="stylesheet" />
    
</head>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        
        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <nav class="navbar navbar-expand-lg navbar-light" style="background-color:white">
                  <a class="navbar-brand" href="#" style="color:dimgray">Shopping Cart</a>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                    <ul class="navbar-nav mr-auto">
          
                    </ul>
                    <div class="form-inline my-2 my-lg-0" >
                      <button class="btn btn-outline-primary my-2 my-sm-0" type="submit" style="border:none;color:dimgray">Sign In</button>&nbsp;|&nbsp;
                      <button class="btn btn-outline-primary my-2 my-sm-0" type="submit" style="border:none;color:dimgray">Sign Up</button>
                    </div>
                  </div>
                </nav>
                <nav class="navbar navbar-expand-lg navbar-light"  style="background-color:white;border-bottom:0.5px solid lightgray;box-shadow:0 7px 6px -6px lightgray;">
                    <a class="navbar-brand" href="#" style="color:dimgray">
                        <%--<a href="Cart.aspx" class="btn btn-dark" >
                                <span class="fas fa-shopping-cart" style="color:whitesmoke"></span> <span id="Span1" runat="server" class="badge badge-secondary">0</span>
                          </a>--%>
                    </a>
                    <button class="navbar-toggler btn btn-outline-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto" >
                      <%--<li class="nav-item">
                        <a class="nav-link" href="#" style="font-weight:bold" onmouseover="this.style.color='red'" onmouseout="this.style.color='gray'">Home</a>
                      </li>--%>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <b>Categories</b>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Search.aspx">All</a>
                          <a class="dropdown-item" href="Search.aspx">Kiddies</a>
                          <a class="dropdown-item" href="Search.aspx">Sport</a>
                          <a class="dropdown-item" href="Search.aspx">Ladies</a>
                          <a class="dropdown-item" href="Search.aspx">Men</a>
                          <a class="dropdown-item" href="Search.aspx">Winter Specials</a>
                          <a class="dropdown-item" href="Search.aspx">Campping</a>
                          <a class="dropdown-item" href="Search.aspx">Summer</a>
                        </div>
                      </li>
                      <li class="nav-item active">
                        <a class="nav-link" href="#" style="color:dimgray;font-weight:100;"><b>Latest Arrivals</b></a>
                      </li>
                      <li class="nav-item active">
                        <a class="nav-link" href="#" style="color:dimgray;font-weight:100;"><b>Services</b></a>
                      </li>
                      <li class="nav-item active">
                        <a class="nav-link" href="#" style="color:dimgray;font-weight:100;"><b>On Sale</b></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="LookRoom.aspx" style="color:dimgray;font-weight:100;"><b>Contact Us</b></a>
                      </li>
                    </ul>
                    <div class="form-inline my-2 my-lg-0">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search" aria-label="Recipient's username" aria-describedby="button-addon2"/>
                            <div class="input-group-append">
                                <a href="Search.aspx" class="btn btn-warning form-control" id="button-addon2"><span class="fas fa-search"></span></a>
                            </div>
                        </div>&nbsp;
                    </div>
                    <div class="form-inline my-2 my-lg-0">
                        <div class="input-group">
                          <a href="Cart.aspx" class="btn btn-dark" >
                                <span class="fas fa-shopping-cart" style="color:whitesmoke"></span> <span id="badge" runat="server" class="badge badge-info">0</span>
                          </a>
                        </div>
                    </div>
                  </div>
                </nav>                
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="height:70vh;width:100%">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner" style="height:70vh">
                        <div class="carousel-item active">
                            <img class="d-block w-100 img-fluid" src="Media/clothes1.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 img-fluid" src="Media/c.jpg" alt="Second slide">
                            <h5 style="position:absolute">Wear your snazzy outfit this December</h5>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 img-fluid" src="Media/c4.jpg" alt="Third slide">
                        </div> 
                        <div class="carousel-item">
                            <img class="d-block w-100 img-fluid" src="Media/c3.jpg" alt="Fourth slide">
                        </div> 
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div> 
                <div class="container" style="padding:2%">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="card bg-light" style="border:none">
                                        <div class="card-body text-xl-center">
                                           <h5>
                                               <span class="fa fa-truck"></span>&nbsp; Delivery & Returns
                                           </h5>
                                            <a class="btn btn-outline-light">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="card bg-light" style="border:none">
                                        <div class="card-body text-xl-center">
                                           <h5>
                                               <span class="fa fa-credit-card"></span>&nbsp; Credit Services
                                           </h5>
                                            <a class="btn btn-outline-light">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="card bg-light" style="border:none">
                                        <div class="card-body text-xl-center">
                                           <h5>
                                               <span class="fa fa-trophy"></span>&nbsp; Competition
                                           </h5>
                                            <a class="btn btn-outline-light">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="column" >
                                    <a href="Search.aspx" class="card" >
                                        <img class="card-img img-fluid" src="Media/carousel1.jpg" alt="Bologna">
                                        <div class="card-img-overlay text-white d-flex flex-column justify-content-center">
                                          <h4 class="card-title">Kiddies</h4>
                                        </div>
                                    </a>
                                    <a href="Search.aspx" class="card" style="width:100%">
                                        <img class="card-img" src="Media/sport.jpg" alt="Bologna">
                                        <div class="card-img-overlay text-white d-flex flex-column justify-content-center">
                                          <h4 class="card-title">Sports</h4>
                                        </div>
                                    </a>
                                </div>
                                <div class="column">
                                    <a href="Search.aspx" class="card" style="width:100%">
                                        <img class="card-img" src="Media/ladies.jpg" alt="Bologna">
                                        <div class="card-img-overlay text-white d-flex flex-column justify-content-center">
                                          <h4 class="card-title">Ladies</h4>
                                        </div>
                                    </a>
                                    <a href="Search.aspx" class="card" style="width:100%">
                                        <img class="card-img" src="Media/men.jpg" alt="Bologna">
                                        <div class="card-img-overlay text-white d-flex flex-column justify-content-center">
                                          <h4 class="card-title">Men</h4>
                                        </div>
                                    </a>
                                </div>
                                <div class="column" >
                                    <a href="Search.aspx" class="card" style="width:100%">
                                        <img class="card-img" src="Media/winter.jpg" alt="Bologna">
                                        <div class="card-img-overlay text-white d-flex flex-column justify-content-center">
                                          <h4 class="card-title">Winter Specials</h4>
                                        </div>
                                    </a>
                                    <a href="Search.aspx" class="card" style="width:100%">
                                        <img class="card-img" src="Media/camping.jpg" alt="Bologna">
                                        <div class="card-img-overlay text-white d-flex flex-column justify-content-center">
                                          <h4 class="card-title">Camping</h4>
                                        </div>
                                    </a>
                                </div> 
                                <div class="column" >
                                   <a href="Search.aspx" class="card" style="width:100%">
                                        <img class="card-img" src="Media/summer.jpg" alt="Bologna">
                                        <div class="card-img-overlay text-white d-flex flex-column justify-content-center">
                                          <h4 class="card-title">Summer</h4>
                                        </div>
                                    </a>
                                    <a href="Search.aspx" class="card" style="width:100%">
                                        <img class="card-img" src="Media/work (2).jpg" alt="Bologna">
                                        <div class="card-img-overlay text-white d-flex flex-column justify-content-center">
                                          <h4 class="card-title">Utility</h4>
                                        </div>
                                    </a>
                                </div> 
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="container-fluid bg-dark" style="padding:1.5%;">
            
                    <div class="row">
                        <div class="col-lg-6 mx-auto text-center">
                            <div class="row  text-center " style="text-align:center;color:whitesmoke">
                                <div class="col-lg-3 col-sm-12" style="text-align:justify">
                                        <h6>What we offer</h6>
                                        <ul class="list-unstyled" style="color:whitesmoke">
                                            <li style="font-size:small"><span class="fa fa-credit-card"></span>&nbsp; Financial Services</li>
                                            <li style="font-size:small"><span class="fa fa-trophy"></span>&nbsp; Competitions</li>
                                        </ul>
                                    </div>
                                <div class="col-lg-3 col-sm-12" style="text-align:justify">
                                        <h6>Customer Services</h6>
                                        <ul class="list-unstyled" style="color:whitesmoke">
                                            <li style="font-size:small"><span class="fa fa-truck"></span>&nbsp; Delivery & Returns</li>
                                            <li style="font-size:small"><span class="fa fa-gavel"></span>&nbsp; Terms & Conditions</li>
                                            <li style="font-size:small"><span class="fa fa-question-circle"></span>&nbsp; FAQ's</li>
                                        </ul>
                                    </div>
                                <div class="col-lg-3 col-sm-12" style="text-align:justify;">
                                        <h6>Get in touch</h6>
                                        <ul class="list-unstyled" style="color:whitesmoke">
                                            <li style="font-size:small"><span class="fab fa-twitter"></span>&nbsp; Twitter</li>
                                            <li style="font-size:small"><span class="fab fa-facebook"></span>&nbsp; Facebook</li>
                                            <li style="font-size:small"><span class="fab fa-linkedin"></span>&nbsp; LinkedIn</li>
                                        </ul>
                                    </div>
                                <div class="col-lg-3 col-sm-12" style="text-align:justify;">
                                        <h6>Head Office</h6>
                                        <ul class="list-unstyled">
                                            <li style="font-size: small"><span class="fas fa-phone"></span>&nbsp; 011 111 1111</li>
                                            <li style="font-size:small"><span class="fas fa-at"></span>    &nbsp; info@email.com</li>
                                            <li style="font-size:small">
                                                <span class="fas fa-home"></span>
                                                &nbsp;1st Unit, 1st Building<br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Office Park<br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City
                                            </li>
                                        </ul>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid" style="background-color:black;">
                    <div class="row" style="text-align:center;color:gray;">
                        <div class="col-lg-12" style="text-align:center">
                            <p class="text-white text-muted" style="font-size:xx-small;margin:0.5%">© Shopping Cart 2020 All Rights Reserved. Designed and Developed by <a style="text-decoration:none;color:lightgray" href="http://www.mfundo-falteni.online">Mfundo Falteni</a></p>
                       </div>
                    </div>
                </div>
                <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
            
            </ContentTemplate>  
            <Triggers>
                <%--<asp:PostBackTrigger ControlID="btnAddTo"/>--%>
            </Triggers>
        </asp:UpdatePanel>
    </form>
</body>
</html>
<style>
    .dropdown-item:hover {
    color: steelblue;
}
</style>