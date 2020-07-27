<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="ShoppingCart.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart | Search</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <script src="https://kit.fontawesome.com/e39550dccd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet'/>
    <style>
        body{
            font-family:'Raleway';
        }
    </style>

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
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:dimgray">
                          <b>Categories</b>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="Search.aspx">Kiddies</a>
                          <a class="dropdown-item" href="Search.aspx">Shelves /Desk</a>
                          <a class="dropdown-item" href="Search.aspx">Automens & Shoeboxes</a>
                          <a class="dropdown-item" href="Search.aspx">Tables</a>
                          <a class="dropdown-item" href="Search.aspx">Wall Art & Screens</a>
                        </div>
                      </li>
                        <li class="nav-item active">
                        <a class="nav-link" href="#" style="color:dimgray;font-weight:100"><b>Latest Arrivals</b></a>
                      </li>
                      <li class="nav-item active">
                        <a class="nav-link" href="#" style="color:dimgray;font-weight:100"><b>Services</b></a>
                      </li>
                      <li class="nav-item active">
                        <a class="nav-link" href="#" style="color:dimgray;font-weight:100"><b>On Sale</b></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="LookRoom.aspx" style="color:dimgray;font-weight:100"><b>Contact Us</b></a>
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
                                <span class="fas fa-shopping-cart" style="color:whitesmoke"></span> <span id="badge" runat="server" class="badge badge-secondary">0</span>
                          </a>
                        </div>
                    </div>
                  </div>
                </nav>
                <div class="container" style="padding: 2.5%">
                    <%--<div class="row">
                        <div class="col-12">
                            <hr />
                        </div>
                    </div>--%>
                    <div class="row">
                        <div class="col-lg-3 col-sm-12">
                            <div class="row form-check form-inline">
                                <div class="col-9 col-sm-9">
                                    <h5>Filters</h5>
                                </div>
                                <div class="col-3 col-sm-3">
                                    <a data-toggle="collapse" href="#collapseExample"><span class="fa fa-chevron-down"></span></a>
                                </div>
                            </div>
                            <hr />
                            <div class="collapse" id="collapseExample">
                                <div class="row" style="padding: 1.5%">
                                    <div class="col-lg-12">
                                        <label class="form-check-label text-muted" style="font-size: small">Select By Type</label>
                                        <div class="dropdown mr-1">
                                            <button id="sort11" type="button" class="all-btn btn btn-outline-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20" style="width: 100%">
                                                Select Category
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
                                                <a class="dropdown-item" href="#">Kiddies</a>
                                                <a class="dropdown-item" href="#">Sports</a>
                                                <a class="dropdown-item" href="#">Ladies</a>
                                                <a class="dropdown-item" href="#">Men</a>
                                                <a class="dropdown-item" href="#">Winter</a>
                                                <a class="dropdown-item" href="#">Camping</a>
                                                <a class="dropdown-item" href="#">Summer</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="padding: 1.5%">
                                    <div class="col-lg-12">
                                        <label class="form-check-label text-muted" style="font-size: small">Select By Price Range</label>
                                        <div class="dropdown mr-1">
                                            <button id="sort1" type="button" class="all-btn btn btn-outline-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20" style="width: 100%">
                                                Min Price
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
                                                <a class="dropdown-item" href="#">By Date(Ascending)</a>
                                                <a class="dropdown-item" href="#">By Date(Descending)</a>
                                                <a class="dropdown-item" href="#">By Price(Low to High)</a>
                                                <a class="dropdown-item" href="#">By Price(High to Low)</a>
                                                <a class="dropdown-item" href="#">Relavance</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="padding: 1.5%">
                                    <div class="col-lg-12">
                                        <div class="dropdown mr-1">
                                            <button id="sort2" type="button" class="all-btn btn btn-outline-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20" style="width: 100%">
                                                Max Price
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
                                                <a class="dropdown-item" href="#">By Date(Ascending)</a>
                                                <a class="dropdown-item" href="#">By Date(Descending)</a>
                                                <a class="dropdown-item" href="#">By Price(Low to High)</a>
                                                <a class="dropdown-item" href="#">By Price(High to Low)</a>
                                                <a class="dropdown-item" href="#">Relavance</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="padding: 1.5%">
                                    <div class="col-lg-12">
                                        <button id="btnSubmit" class="btn btn-warning" style="width: 100%">Submit</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-9">
                            <div class="row">
                                <div class="col-lg-4">
                                    <h4>9 results shown</h4>
                                </div>
                                <div class="col-lg-8"></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-sm-12">
                                    <div class="dropdown mr-1">
                                        <button id="sort" type="button" class="all-btn btn btn-outline-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="0,3">
                                            Sort By
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
                                            <a class="dropdown-item" href="#">By Date(Ascending)</a>
                                            <a class="dropdown-item" href="#">By Date(Descending)</a>
                                            <a class="dropdown-item" href="#">By Price(Low to High)</a>
                                            <a class="dropdown-item" href="#">By Price(High to Low)</a>
                                            <a class="dropdown-item" href="#">Relavance</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                </div>
                                <div class="col-lg-4 col-sm-12">
                                    <nav aria-label="Page navigation example" style="padding: 0.5%">
                                        <ul class="pagination justify-content-left">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1">Previous</a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#" style="color: gray">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#" style="color: gray">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#" style="color: gray">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" style="color: gray">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="wrapper">
                                        <asp:Repeater ID="rptActive" runat="server">
                                            <ItemTemplate>
                                                <div class="card" style="margin:2%">
                                                    <div class="card-body">
                                                        <img class="img-fluid" src="Media/r2.jpg" />
                                                        <hr />
                                                        <div class="row" style="text-align: center">
                                                            <div class="col-lg-12">
                                                                <div class="btn" style="background-color: gray; width: 1%"></div>
                                                                <div class="btn" style="background-color: bisque; width: 1%"></div>
                                                                <div class="btn" style="background-color: sandybrown; width: 1%"></div>
                                                                <br />
                                                                <asp:Label ID="Label3" runat="server" Text='<%#String.Format("{0}",Eval("_name")) %>' Font-Size="Small" ForeColor="#273956" /><br />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="text-align: center">
                                                            <div class="col-lg-12">
                                                                <asp:Label ID="lblPrice" runat="server" CssClass="h2" Text='<%#Eval("_price")%>'></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row" style="text-align: center">
                                                            <div class="col-lg-12">
                                                                <button class="btn btn-dark" aria-label="View" id="btnView" runat="server"><span class="fas fa-eye"></span><span class="tooltiptext">Quick View</span></button>
                                                                <asp:LinkButton CssClass="btn btn-dark" ID="btnAddTo" runat="server" CommandArgument='<%#Eval("_name") + "," +  Eval("SKU") + "," +  Eval("_price") + "," %>' OnCommand="btnAdd_Command"><span  class="fas fa-cart-plus"></span></asp:LinkButton>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="padding: 1.5%">
                                <div class="col-lg-8">
                                </div>
                                <div class="col-lg-4">
                                    <nav aria-label="Page navigation example" style="padding: 0.5%">
                                        <ul class="pagination justify-content-center">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1">Previous</a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#" style="color: steelblue">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#" style="color: steelblue">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#" style="color: steelblue">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" style="color: steelblue">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid bg-dark" style="padding:1.5%;">
            
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="row  text-center " style="text-align:center;color:whitesmoke">
                                <div class="col-lg-1" style="text-align:justify"></div>
                                <div class="col-lg-4 col-xs-12 col-sm-12" style="text-align:justify">
                                        <h6>What we offer</h6>
                                        <ul class="list-unstyled" style="color:whitesmoke">
                                            <li style="font-size:small"><span class="fa fa-credit-card"></span>&nbsp; Financial Services</li>
                                            <li style="font-size:small"><span class="fa fa-trophy"></span>&nbsp; Competitions</li>
                                        </ul>
                                    </div>
                                <div class="col-lg-4 col-xs-12" style="text-align:justify;">
                                        <h6>Get in touch</h6>
                                        <ul class="list-unstyled" style="color:whitesmoke">
                                            <li style="font-size:small"><span class="fab fa-twitter"></span> Twitter</li>
                                            <li style="font-size:small"><span class="fab fa-facebook"></span> Facebook</li>
                                            <li style="font-size:small"><span class="fab fa-linkedin"></span> LinkedIn</li>
                                        </ul>
                                    </div>
                                <div class="col-lg-3 col-xs-12" style="text-align:justify;">
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
                <div class="container-fluid text-center" style="background-color:black">
                    <div class="row text-center " style="text-align:center;color:gray;padding:0.05%">
                        <div class="col-lg-12" style="text-align:center">
                            <p class="text-white text-muted" style="font-size:xx-small">Created by <a style="text-decoration:none;color:lightgray" href="http://www.mfundo-falteni.online">Mfundo Falteni</a></p>
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
    .wrapper {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        grid-gap: 20px;
    }

    .card:hover {
        /*border: 0.5px solid dimgray;*/
        box-shadow: rgba(103, 92, 92, 0.15) 3px 3px;
    }

    .nav-link {
        color: orangered;
    }

    .all-btn {
        border: 0.5px solid lightgray;
        background-color: transparent;
        color: gray;
    }

        .all-btn:hover {
            border: 0.5px solid dimgray;
            background-color: transparent;
            color: dimgray;
        }
        /*#btnSubmit:hover{
        border:0.5px solid steelblue;
        background-color:transparent;
        color:steelblue;
    }*/
        .all-btn:active {
            border: 0.5px solid steelblue;
            background-color: transparent;
            color: steelblue;
        }




    @media only screen and (min-device-width: 720px) and (max-device-width: 767px) {
    }



    @media only screen and (min-device-width: 720px) and (max-device-width: 767px) {
    }

    @media only screen and (max-width: 767px) {
        .wrapper {
            display: block;
            grid-template-columns: repeat(1, 1fr);
            grid-gap: 15px;
        }
    }

    @media only screen and (max-width: 1366px) and (min-width: 768px) {
    }

    @media only screen and (max-width: 1920px) {
    }

    .btn .tooltiptext {
        font-size: xx-small;
        visibility: hidden;
        width: 25%;
        background-color: lightgray;
        color: dimgrey;
        text-align: center;
        border-radius: 6px;
        padding: 1px 0;
        /* Position the tooltip */
        position: absolute;
        z-index: 1;
        top: 40px;
        right: 55%;
    }

    .btn:hover .tooltiptext {
        visibility: visible;
    }
</style>
