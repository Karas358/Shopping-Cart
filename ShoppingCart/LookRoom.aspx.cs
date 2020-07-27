using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Models;

namespace ShoppingCart
{
    public partial class LookRoom : System.Web.UI.Page
    {
        //List<TestData> cart = new List<TestData>();
        protected void Page_Load(object sender, EventArgs e)
        {
            ////if (!IsPostBack)
            ////{
            ////    if (Session["Cart"] == null)
            ////    {
            ////        Session["Cart"] = cart;
            ////    }
            ////    else
            ////    {
            ////        cart = (List<TestData>)Session["Cart"];
            ////    }
            ////    badge.InnerText = cart.Count + "";
            ////}
        }
    }
}