<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales_Management.aspx.cs" Inherits="ShoppingCart.Admin.Dashboard" %>

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
        <h2 id="txtNameU" runat="server" class="sidebar-heading" style="background-color:rgba(245, 240, 240, 0);text-align:center;padding:3%">Admin Panel</h2>
        <hr style="background-color:gray"/>
        <div class="list-group list-group-flush">
          <ul class="list-group list-group-flush">
              <li class="side-btn" >
                  <a href="Dashboard.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:lightgray;font-size:xx-small">
                  <h6 style="font-size:small"><i class="fa fa-dashboard" style="color:lightgray"></i> Dashboard</h6></a>
              </li>
              <li class="side-btn"style="background-color:rgb(225, 196, 17);">
                  <a href="Sales_Management.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:dimgray">
                  <h6 style="font-size:small"><i class="fa fa-list" style="color:dimgray"></i> Sales Management</h6></a>
              </li>
              <li class="side-btn">
                  <a href="Product_Management.aspx" class="list-group-item list-group-item-action" style="background-color:rgba(245, 240, 240, 0);color:lightgray">
                  <h6 style="font-size:small"><i class="fa fa-sign-out" style="color:lightgray"></i> Product Management</h6></a>
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
                  <h5 style="margin-left:20px">Sales Management</h5>
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
                                        <h5>On Sale</h5>
                                    </div>
                                    <div class="col-lg-6">

                                    </div> 
                                    <div class="col-lg-2 text-right">
                                        <button class="btn btn-warning" style="border:none;border-radius:0%"><span class="fa fa-plus"></span> Add Product</button>
                                    </div>
                                </div>
                                <br />
                                <div class="row" style="padding:0.5%">
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="padding:0.5%">
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="padding:0.5%">
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="card" style="border-radius:15px">
                                            <img class="card-img" src="../Media/r2.jpg" style="border-radius:15px"/>
                                            <div class="card-img-overlay d-flex flex-column justify-content-center" style="color:whitesmoke;border-radius:15px">
                                                <br />
                                                <br/>
                                                <h4 class="card-title">Name</h4>
                                                <h6 class="card-subtitle mb-2">Price</h6>
                                                <div class="badge badge-pill badge-danger" style="background-color:rgba(129, 5, 5, 0.66);color:whitesmoke"><h5>20% Off</h5></div>
                                                <br />
                                                <div class="form-group text-right">
                                                    <button class="btn btn-outline-light btn-sm badge-pill" style="border-color:whitesmoke;font-weight:bold">Remove <span class="fa fa-times"></span></button>
                                                </div>
                                            </div>
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
    .card-img-overlay {
  background-color: rgba(0, 0, 0, 0.4);
}

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
<style>
    .calendarWrapper{
    background-color:#4CCAEF;
    padding:10px;
    display:inline-block;
}

.myCalendar {  
    background-color: #f2f2f2;  
    width: 156px;  
    border:none !important;
}  
    .myCalendar a {  
    text-decoration: none;  }  
.myCalendar .myCalendarTitle {  
    font-weight: bold;  
    height:40px;line-height:40px;
    background-color:#4CCAEF;
    color:#ffffff;
    border:none !important;
}  
.myCalendar th.myCalendarDayHeader  
{
    height:25px;

}
.myCalendar tr{  
    border-bottom: solid 1px #ddd;
} 

.myCalendar table tr {
    border-bottom: none !important;    
}
.myCalendar tr:last-child td{  
    border-bottom: none;
}
.myCalendar tr td.myCalendarDay, .myCalendar tr th.myCalendarDayHeader{  
    border-right: solid 1px #ddd;
}
.myCalendar tr td:last-child.myCalendarDay, .myCalendar tr th:last-child.myCalendarDayHeader {  
    border-right: none;
}

  .myCalendar td.myCalendarDay:nth-child(7) a{color:#c52e2e !important;}
.myCalendar .myCalendarNextPrev {  
    text-align: center;  
}  

.myCalendar .myCalendarNextPrev a  {font-size:1px;}
.myCalendar .myCalendarNextPrev:nth-child(1) a{color:#4CCAEF!important;background:url("prevMonth.png") no-repeat center center;}
.myCalendar .myCalendarNextPrev:nth-child(1) a:hover,.myCalendar .myCalendarNextPrev:nth-child(3) a:hover{background-color:transparent;}
.myCalendar .myCalendarNextPrev:nth-child(3) a{color:#4CCAEF!important;background:url("nextMonth.png") no-repeat center center;}
.myCalendar td.myCalendarSelector a {  
    background-color: #25bae5;  
}  

.myCalendar .myCalendarDayHeader a,
.myCalendar .myCalendarDay a,   
.myCalendar .myCalendarSelector a,  
.myCalendar .myCalendarNextPrev a {  
    display: block;  
    line-height: 20px;  
}  
.myCalendar .myCalendarToday {  
    background-color: #f2f2f2; 
   -webkit-box-shadow: 1px 1px 8px 1px #8f8f8f;
        box-shadow: 1px 1px 8px 1px #8f8f8f;
        display:inline-block;
    width:22px !important;
    height:19px !important;
border:2px solid #f2f2f2;
margin-left:-1px;
margin-top:-1px;
position:relative;}
.myCalendar .myCalendarToday a{color:#25bae5 !important; font-weight:bold;}
.myCalendar .myCalendarToday a:after{content:"TODAY"; color:#000; font-size:0.5em;display:inline-block;pointer-events:none; 
width:100%; float:left;}
.myCalendar .myCalendarDay a:hover,   
.myCalendar .myCalendarSelector a:hover {  
    background-color: #25bae5;  
}
</style>