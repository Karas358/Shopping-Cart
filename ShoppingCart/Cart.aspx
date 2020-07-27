<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ShoppingCart.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart | Cart</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <script src="https://kit.fontawesome.com/e39550dccd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet'/>
    <link href="Style/common.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
            <button class="navbar-toggler btn btn-outline-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto" >
                    <li class="nav-item">
                    <a class="nav-link" href="Home.aspx" style="font-weight:bold" onmouseover="this.style.color='red'" onmouseout="this.style.color='gray'">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" style="color:dimgray;font-weight:100;" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                        <button class="btn btn-dark" >
                            <span class="fas fa-shopping-cart" style="color:whitesmoke"></span> <span id="badge" runat="server" class="badge badge-secondary">0</span>
                        </button>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container" style="padding:2.5%">
            <div class="row">
                <div class="col-12">
                    <hr />
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"><h4>Shopping Cart</h4></div>
                    <div class="col-lg-9"></div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-9">
                       <%-- <div class="row">
                            <div class="col-lg-2"><h5>Product</h5></div>
                            <div class="col-lg-3"><h5>Description</h5></div>
                            <div class="col-lg-2"><h5>Price</h5></div>
                            <div class="col-lg-3"><h5>Qty</h5></div>
                            <div class="col-lg-2"><h5>Subtotal</h5></div>
                        </div>
                        <hr />--%>
                        <asp:Repeater ID="rptActive" runat="server">
                            <ItemTemplate>
                                <div  style="padding:0.5%">
                                    
                                
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-4 col-sm-12">
                                                <img class="img-fluid" src="Media/r2.jpg"/>
                                            </div>
                                            <div class="col-lg-6 col-sm-12 text-left">
                                                <asp:Label ID="Label3" runat="server" Text='<%#String.Format("{0}",Eval("Name")) %>' Font-Size="Large" ForeColor="#273956" />

                                                
                                                <div class="form-group">
                                                    <small class="form-text text-muted">Price</small>
                                                    <asp:Label ID="lblPrice" runat="server" CssClass="h6" Text='<%#"R " + Eval("Price")+ ".00" %>'></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <small class="form-text text-muted">Sub Total</small>
                                                    <asp:Label ID="lblSubTotal" runat="server" CssClass="h6" Text='<%#"R " +Eval("SubTotal")+ ".00" %>'></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <small class="form-text text-muted">Qty</small>
                                                    <div class="input-group mb-2 w-100">
                                                        <div class="input-group-prepend">
                                                          <asp:LinkButton ID="btnMinus" runat="server" CssClass="btn btn-dark btn-sm" CommandArgument='<%#Eval("Qty") + "," + Eval("Price") + "," + Eval("ProductID")%>' OnCommand="btnMinus_Command"><span class="fas fa-minus"></span></asp:LinkButton>
                                                        </div>
                                                        <input type="number" class="form-control form-control-sm w-75" id="inlineFormInputGroup" value='<%#Eval("Qty")%>''/>
                                                        <div class="input-group-append">
                                                          <asp:LinkButton ID="btnPlus" runat="server" CssClass="btn btn-dark btn-sm" CommandArgument='<%#Eval("Qty") + "," + Eval("Price") + "," + Eval("ProductID")%>' OnCommand="btnPlus_Command"><span class="fas fa-plus"></span></asp:LinkButton>
                                                          <%--//<button class="btn btn-dark"></button>--%>
                                                        </div>
                                                    </div>
                                                </div>

                                                
                                                
                                            </div>
                                            <div class="col-2"></div>
                                            
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="col-lg-3">
                        <div class="row">
                            <div class="col-lg-6">
                                <h3>Summary</h3>
                            </div>
                            <div class="col-lg-6">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 text-left">
                                <h6>Exc.VAT </h6>
                                <h6>VAT</h6>
                                <h6>Subtotal</h6>
                            </div>
                            <div class="col-lg-6 text-right">
                                <h6 id="lblExcVAT" runat="server">R 0.00</h6>
                                <h6 id="lblVAT" runat="server">R 0.00</h6>
                                <h6 id="lblSubT" runat="server">R 0.00</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <button class="btn btn-success" style="width:100%"><span class="fa fa-lock"></span> Secure Checkout</button>
                            </div>
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
    </form>
</body>
</html>
<style>
    .dropdown-item:hover {
    color: steelblue;
}
</style>