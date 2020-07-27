<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_Management.aspx.cs" Inherits="ShoppingCart.Admin.Product_Management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title></title>
    <link href="../Content/Scrollbar.css" rel="stylesheet" />
  <link href="Sidebar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="Sidebar/css/simple-sidebar.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
  <link href="../Content/CSS_FAB/FAB.css" rel="stylesheet" />
    <style>
        .bod{
            background-color:whitesmoke;
            /*background-color: #fcfcfc;*/
            /*background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 80 40' width='80' height='40'%3E%3Cpath fill='%23eaeaea' fill-opacity='0.4' d='M0 40a19.96 19.96 0 0 1 5.9-14.11 20.17 20.17 0 0 1 19.44-5.2A20 20 0 0 1 20.2 40H0zM65.32.75A20.02 20.02 0 0 1 40.8 25.26 20.02 20.02 0 0 1 65.32.76zM.07 0h20.1l-.08.07A20.02 20.02 0 0 1 .75 5.25 20.08 20.08 0 0 1 .07 0zm1.94 40h2.53l4.26-4.24v-9.78A17.96 17.96 0 0 0 2 40zm5.38 0h9.8a17.98 17.98 0 0 0 6.67-16.42L7.4 40zm3.43-15.42v9.17l11.62-11.59c-3.97-.5-8.08.3-11.62 2.42zm32.86-.78A18 18 0 0 0 63.85 3.63L43.68 23.8zm7.2-19.17v9.15L62.43 2.22c-3.96-.5-8.05.3-11.57 2.4zm-3.49 2.72c-4.1 4.1-5.81 9.69-5.13 15.03l6.61-6.6V6.02c-.51.41-1 .85-1.48 1.33zM17.18 0H7.42L3.64 3.78A18 18 0 0 0 17.18 0zM2.08 0c-.01.8.04 1.58.14 2.37L4.59 0H2.07z'%3E%3C/path%3E%3C/svg%3E");*/
        }
    </style>
</head>
<body style="background-color:whitesmoke">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />         
        <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="border-right bg-dark" id="sidebar-wrapper" style="color:lightgray;">         <%--background-color:rgb(17, 19, 55)">--%>
        <%--<img src="../Media/Back2Back.png" class="img-fluid sidebar-heading" style="background-color:rgba(245, 240, 240, 0);text-align:center;padding:3.1%;height:5%;width:5%"/>--%>
        <h3 id="txtNameU" runat="server" class="sidebar-heading" style="background-color:rgba(245, 240, 240, 0);text-align:center;padding:3%">Admin Panel</h3>
        <hr style="background-color:gray"/>
        <div class="list-group list-group-flush">
          <ul class="list-group list-group-flush">
              <li class="side-btn" >
                  <a href="Dashboard.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:lightgray;font-size:xx-small">
                  <h6 style="font-size:small"><i class="fa fa-dashboard" style="color:lightgray"></i> Dashboard</h6></a>
              </li>
               <li class="side-btn" >
                  <a href="Sales_Management.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:lightgray;font-size:xx-small">
                  <h6 style="font-size:small"><i class="fa fa-dashboard" style="color:lightgray"></i> Sales Management</h6></a>
              </li>
              <li class="side-btn" style="background-color:rgb(225, 196, 17);">
                  <a href="Product_Management.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:dimgrey">
                  <h6 style="font-size:small"><i class="fa fa-list" style="color:dimgrey"></i> Product Management</h6></a>
              </li>
              <li class="side-btn">
                  <a href="../Login.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:lightgray">
                  <h6 style="font-size:small"><i class="fa fa-sign-out" style="color:lightgray"></i> Logout</h6></a>
              </li>
          </ul>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->   
    <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="background-color:white">
                  <button class="btn btn-outline-secondary" id="menu-toggle" style="border-radius:0%"><i class="fa fa-bars" aria-hidden="true"></i></button>
                  <h5 style="margin-left:20px">Product Management</h5>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>
                  <div class="form-inline">
                    <div class="dropdown dropleft" style="margin-right:-400px;padding:0.008%">
                        <img class="img-fluid rounded-circle circle-bg" src="../Media/me.png" style="height:8%;width:8%" data-toggle="dropdown"/>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#"><i class="fa fa-user" style="color:gray"></i> Profile</a>
                            <a class="dropdown-item" href="#"><i class="fa fa-cog" style="color:gray"></i> Settings</a>
                            <a class="dropdown-item" href="#"><i class="fa fa-sign-out" style="color:gray"></i>Logout</a>
                            <hr />
                            <a class="dropdown-item"><h6  id="txtNameUL" runat="server">Username Surname</h6></a>
                        </div>
                    </div>
                </div>
            </nav>        
            <div class="container-fluid bod" style="border-color:lightgray;padding:0.5%">
                
                <div class="row" style="padding:0.5%">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row" >
                                    <div class="col-lg-4">
                                        <h5>Product Grid</h5>
                                    </div>
                                    <div class="col-lg-6">

                                    </div> 
                                    <div class="col-lg-2 text-right">
                                        <a href="Add_Product.aspx" class="btn btn-warning" style="border:none;border-radius:0%"><span class="fa fa-plus"></span> Add Product</a>
                                    </div>
                                </div>
                                <br />
                                <div class="row" style="padding:0.5%">
                                    <div class="col-lg-2">
                                        <h6 class="d-inline">Department</h6>
                                        <div class="dropdown d-inline">
                                            <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton111" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Department
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Kiddies</a>
                                            <a class="dropdown-item" href="#">Shelves</a>
                                            <a class="dropdown-item" href="#">Desks</a>
                                            <a class="dropdown-item" href="#">Tables</a>
                                            <a class="dropdown-item" href="#">Waal Art</a>
                                            <a class="dropdown-item" href="#">Shoe Boxes</a>
                                            <a class="dropdown-item" href="#">Automens</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <h6 class="d-inline">Category</h6>
                                        <div class="dropdown d-inline">
                                            <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton11" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Category
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Kiddies</a>
                                            <a class="dropdown-item" href="#">Shelves</a>
                                            <a class="dropdown-item" href="#">Desks</a>
                                            <a class="dropdown-item" href="#">Tables</a>
                                            <a class="dropdown-item" href="#">Waal Art</a>
                                            <a class="dropdown-item" href="#">Shoe Boxes</a>
                                            <a class="dropdown-item" href="#">Automens</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <h6 class="d-inline">Min Price</h6>
                                        <div class="dropdown d-inline">
                                            <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Min Price
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Kiddies</a>
                                            <a class="dropdown-item" href="#">Shelves</a>
                                            <a class="dropdown-item" href="#">Desks</a>
                                            <a class="dropdown-item" href="#">Tables</a>
                                            <a class="dropdown-item" href="#">Waal Art</a>
                                            <a class="dropdown-item" href="#">Shoe Boxes</a>
                                            <a class="dropdown-item" href="#">Automens</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <h6 class="d-inline">Max Price</h6>
                                        <div class="dropdown d-inline">
                                            <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Max Price
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Kiddies</a>
                                            <a class="dropdown-item" href="#">Shelves</a>
                                            <a class="dropdown-item" href="#">Desks</a>
                                            <a class="dropdown-item" href="#">Tables</a>
                                            <a class="dropdown-item" href="#">Waal Art</a>
                                            <a class="dropdown-item" href="#">Shoe Boxes</a>
                                            <a class="dropdown-item" href="#">Automens</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2"></div>
                                    <div class="col-lg-2 text-right">
                                        <h5>12 Products shown</h5>
                                    </div>
                                </div>
                                <div class="row" style="padding:0.5%">
                                    <div class="col-lg-12">
                                        <div class="wrapper">
                                            <asp:Repeater ID="rptProd" runat="server">
                                            <ItemTemplate>
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <img class="img-fluid" src="../Media/r2.jpg" />
                                                            <div class="row" style="text-align:center">
                                                                <div class="col-lg-12">
                                                                    <div class="btn" style="background-color:gray;width:1%"></div>
                                                                    <div class="btn" style="background-color:bisque;width:1%"></div>
                                                                    <div class="btn" style="background-color:sandybrown;width:1%"></div><br />
                                                                    <asp:Label ID="Label51" runat="server" Text='<%# Eval("_name") %>' Font-Size="Small" ForeColor="#273956"/><br />
                                                                </div>
                                                            </div>
                                                            <div class="row" style="text-align:center">
                                                                <div class="col-lg-12">
                                                                    <asp:Label ID="Label12" runat="server" Text='<%#"R " +  Eval("_price") %>' CssClass="h6"/><br />
                                                                </div>
                                                            </div>
                                                            <div class="row" style="text-align:center">
                                                                <div class="col-lg-12 mx-auto">
                                                                    <button class="btn btn-outline-secondary">
                                                                        <span class="fa fa-edit"></span>
                                                                    </button>
                                                                    <button class="btn btn-outline-secondary">
                                                                        <span class="fa fa-remove"></span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
      </div>
      <!-- /#wrapper -->
       <script src="../Calendar/js-codepen.js"></script> 
      <!-- Bootstrap core JavaScript -->
      <script src="Sidebar/vendor/jquery/jquery.min.js"></script>
      <script src="Sidebar/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
     <!-- Menu Toggle Script -->
    </form>
</body>
</html>
<style>
     .wrapper {
        display: grid;
        grid-template-columns: repeat(6, 1fr);
        grid-gap: 20px;
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


    .card{
        border-radius:0%;
        /*box-shadow:rgba(103, 92, 92, 0.15) 3px 3px;*/
    }
    .card-inner:hover {
        transform:scale(1.02);
        border: solid lightgray 0.5px;
    }
  
    .circle-bg{
        border-color:rgba(1, 19, 107, 0.61);
        border-radius:50%;
        
    }
    .btn-circle{
        border-color:rgba(255, 255, 255, 0.00);
        color:white;
        position:absolute;  
        border-radius:50%;
        background-color:springgreen;
    }
    .btn-circle :hover {
        border-color:rgba(255, 255, 255, 0.00);
        background-color:cadetblue;
    }
    .side-btn {
        border-color:rgb(26, 25, 25);
    }
    .side-btn:hover {
        background-color:rgba(137, 128, 128, 0.33);
    }
   

</style>
<script>
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    $("#btnNew").click(function (e) {
        e.preventDefault();

    });


   
  </script>
