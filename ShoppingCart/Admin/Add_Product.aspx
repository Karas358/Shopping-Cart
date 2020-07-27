<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="ShoppingCart.Admin.AddProduct" %>

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
                  <a href="Product_Management.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:dimgray">
                  <h6 style="font-size:small"><i class="fa fa-list" style="color:dimgray"></i> Product Management</h6></a>
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
                  <h5 style="margin-left:20px">Product Management / Add Product</h5>
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
                                        <h5>New Product</h5>
                                    </div>
                                    <div class="col-lg-6">

                                    </div> 
                                    <div class="col-lg-2 text-right">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">SKU</label>
                                            <input type="email" class="form-control form-control-sm" id="txtSKU" runat="server" aria-describedby="emailHelp" placeholder="Enter SKU"/>
                                            <small class="form-text text-muted">A value unique only to the product.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Product Name</label>
                                            <input type="email" class="form-control  form-control-sm" id="txtProdName" runat="server" aria-describedby="emailHelp" placeholder="Enter Product Name"/>
                  
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Description</label>
                                            <textarea rows="3" class="form-control  form-control-sm" id="txtProdDesc" runat="server" aria-describedby="emailHelp" placeholder="Enter Product Description"></textarea>
                                            <small  class="form-text text-muted">A short description of the product.</small>
                                        </div>
                                       
                                        
                                        
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Category</label>
                                            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control  form-control-sm"></asp:DropDownList>
                                            <small class="form-text text-muted">Choose a matching category for your product</small>
                                        </div>
                                        <div class="form-group">
                                            <label>Price</label>
                                            <input type="currency" class="form-control  form-control-sm font-weight-bold" id="txtPrice" value="0" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label>Image</label><br />
                                            <div class="card text-center">
                                                <div class="card-body">
                                                    <span class="badge badge-warning">Upload image after saving product</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group text-right">
                                            <button id="btnSubmitProd" runat="server" onserverclick="btnSubmitProd_ServerClick" class="btn btn-warning btn-sm font-weight-bold">Submit</button>
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
        <script src="../JS/config.js"></script>
      <!-- /#wrapper -->
       <script src="../Calendar/js-codepen.js"></script> 
      <!-- Bootstrap core JavaScript -->
      <script src="Sidebar/vendor/jquery/jquery.min.js"></script>
      <script src="Sidebar/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
     <!-- Menu Toggle Script -->
    </form>
</body>
</html>

<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function () {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
<style>
    .card{
        border-radius:0%;
        /*box-shadow:rgba(103, 92, 92, 0.15) 3px 3px;*/
    }
    .card-inner:hover {
        transform:scale(1.02);
        border: solid lightgray 0.5px;
    }
    /*.cal{
        box-shadow:rgba(103, 92, 92, 0.15) 3px 3px;
    }
    .vl {
        border-left: 0.5px solid #1d3a4c;
        height: 65px;
    }
    .appleave{
        width:100%;
    }   

    .appleave:hover {
       background-color:rgba(144, 144, 144, 0.34);
    }*/   
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
    /*.btn-clear {
        color:rgb(122, 116, 116);
    }
    .btn-clear:hover {
        background-color:rgba(255, 255, 255, 0.00);
        color:rgb(122, 116, 116);
    }
    .label-input {
        color:rgb(122, 116, 116);
        font-size:small;
    }

    .btn-oval {
            border-radius:40px;
    }
    .btn-label {
      position: relative;
      left: 12px;
      display: inline-block;
      padding: 6px 12px;
      background: rgba(0, 0, 0, 0.15);
    }
.btn-labeled {
  padding-top: 0;
  padding-bottom: 0;
}*/

</style>
<script>
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    $("#btnNew").click(function (e) {
        e.preventDefault();

    });


    $(function () {
        $('.datepicker').datepicker(
            { format: 'mm-yyyy' }
        ).val();
    });

    $("#btnEx").click(function (e) {
        e.preventDefault();
        $('#myModal').modal();
    });



    function getEnd() {
        var s = document.getElementById('txtDateStart').value;
        var year = s.substring(0, 4);
        var month = s.substring(5, 7);
        var day = s.substring(8, 10);
        var dateEntered = new Date(year, month, day);
        var newDate = new Date();

        var ddl = document.getElementById('ddlContract').value;
        if (ddl == '6 Months') {

            newDate = dateEntered.setMonth(dateEntered.getMonth() + 6);
            document.getElementById('txtDateEnd').value = dateEntered.getDate() + "/" + dateEntered.getMonth() + "/" + dateEntered.getFullYear();
        }
        else if (ddl == '12 Months') {
            newDate = dateEntered.setMonth(dateEntered.getMonth() + 12);
            document.getElementById('txtDateEnd').value = dateEntered.getDate() + "/" + dateEntered.getMonth() + "/" + dateEntered.getFullYear();
        }
        else if (ddl == 'Permanent') {
            document.getElementById('txtDateEnd').value = "Permanent";
        }
    }
    function getDOB() {
        var not = document.getElementById('txtID').value;
        var century = not.substring(0, 2);
        var month = not.substring(2, 4);
        var day = not.substring(4, 6);
        document.getElementById('txtDOB').value = '19' + century + '-' + month + '-' + day;
    }
    function res(checkbox) {
        if (checkbox.checked) {
            document.getElementById("txtUnitP").value = document.getElementById("txtUnit").value;
            document.getElementById("txtComplexP").value = document.getElementById("txtComplex").value;
            document.getElementById("txtNumberP").value = document.getElementById("txtNumber").value;
            document.getElementById("txtStreetP").value = document.getElementById("txtStreet").value;
            document.getElementById("txtSurburbP").value = document.getElementById("txtSurburb").value;
            document.getElementById("txtCityP").value = document.getElementById("txtCity").value;
        }
        else {
            document.getElementById("txtUnitP").value = "";
            document.getElementById("txtComplexP").value = "";
            document.getElementById("txtNumberP").value = "";
            document.getElementById("txtStreetP").value = "";
            document.getElementById("txtSurburbP").value = "";
            document.getElementById("txtCityP").value = "";
        }
    }
    function ValidatorUpdateDisplay(val) {
        if (typeof (val.display) == "string") {
            if (val.display == "None") {
                return;
            }
            if (val.display == "Dynamic") {
                val.style.display = val.isvalid ? "none" : "inline";
                return;
            }
        }
        val.style.visibility = val.isvalid ? "hidden" : "visible";
        if (val.isvalid) {
            document.getElementById(val.controltovalidate).style.border = '1px solid lawngreen';
        }
        else {
            document.getElementById(val.controltovalidate).style.border = '1px solid red';
        }
    }

    $('.carousel').carousel({
        interval: 0
    })

  </script>

