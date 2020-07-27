using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Models;

namespace ShoppingCart
{
    public partial class Home : System.Web.UI.Page
    {
        int count = 0;
        List<Product> cart = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["Cart"] == null)
                {
                    Session["Cart"] = cart;
                }
                else
                {
                    cart = (List<Product>)Session["Cart"];
                }
                badge.InnerText = cart.Count + "";
                //getProducts();
            }
        }
        //TODO fetch departments//
        //TODO fetch departments//

      
    }
}