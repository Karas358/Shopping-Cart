<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ShoppingCart.Admin.Dashboard1" %>

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
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body style="background-color:whitesmoke">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />         
        <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div class="border-right bg-dark" id="sidebar-wrapper" style="color:lightgray;">         <%--background-color:rgb(17, 19, 55)">--%>
            <%--<img src="../Media/Back2Back.png" class="img-fluid sidebar-heading" style="background-color:rgba(245, 240, 240, 0);text-align:center;padding:3.1%;height:5%;width:5%"/>--%>
            <h2 id="txtNameU" runat="server" class="sidebar-heading" style="background-color:rgba(245, 240, 240, 0);text-align:center;padding:3%">Admin Panel</h2>
            <hr style="background-color:gray"/>
            <div class="list-group list-group-flush">
              <ul class="list-group list-group-flush">
                  <li class="side-btn" style="background-color:rgb(225, 196, 17);" >
                      <a href="Dashboard.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:dimgray;font-size:xx-small">
                      <h6 style="font-size:small"><i class="fa fa-dashboard" style="color:dimgray"></i> Dashboard</h6></a>
                  </li>
                   <li class="side-btn" >
                      <a href="Sales_Management.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:lightgray;font-size:xx-small">
                      <h6 style="font-size:small"><i class="fa fa-dashboard" style="color:lightgray"></i> Sales Management</h6></a>
                  </li>
                  <li class="side-btn" >
                      <a href="Product_Management.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:lightgray">
                      <h6 style="font-size:small"><i class="fa fa-list" style="color:lightgray"></i> Product Management</h6></a>
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
                  <h5 style="margin-left:20px">Dashboard</h5>
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
            <div class="container-fluid" style="border-color:lightgray;padding:0.3%;">
                <div class="row" style="padding:0.5%">
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <h4>Users</h4><br />
                                    </div>
                                    <div class="col-lg-4">
                                        <h4>58</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>+8 New Registrations</p>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-9">
                                        <h4>Visits Today</h4><br />
                                        <p>+150 Last Month</p>
                                    </div>
                                    <div class="col-lg-3">
                                        <h4>8</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-7">
                                        <h4>Sold</h4><br />
                                        <p>+10 Returns</p>
                                    </div>
                                    <div class="col-lg-5">
                                        <h4>58</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <h4>Profit</h4><br />
                                    </div>
                                    <div class="col-lg-6">
                                        <h4>R 250K</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>R 17K Last Month</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="padding:0.5%;">
                    <div class="col-lg-9">
                        <div class="card" style="height:100%">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                       <h5>Daily Sales</h5> 
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <canvas id="myChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h5>Sales by Category</h5>
                                <canvas id="myChart1"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="padding:0.5%">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h5>Sales by Department</h5>
                                <asp:Literal ID="litChart" runat="server"></asp:Literal>
                                <%--<canvas id="myChart1" style="width:90%"></canvas>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h5>Order Summary</h5>
                                <canvas id="myChart2" style="width:90%"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <!-- /#page-content-wrapper -->
        </div>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
        <script src="Sidebar/chart_file.js"></script>
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
    .card{
        border-radius:0%;
        /*box-shadow:rgba(103, 92, 92, 0.15) 3px 3px;*/
    }
    .card-inner:hover {
        transform:scale(1.02);
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

