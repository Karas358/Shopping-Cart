using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Models;

namespace ShoppingCart
{
    public partial class Cart : System.Web.UI.Page
    {
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
                    badge.InnerText = cart.Count + "";
                    Summarize();
                    Clean();
                }
            }
        }
        private void Clean()
        {
            cart = (List<Product>)Session["Cart"];
            if(cart.Count > 1)
            {
                for (int x = 0; x < cart.Count - 1; x++)
                {
                    if (cart[x].SKU == cart[x + 1].SKU)
                    {
                        cart.RemoveAt(x + 1);
                        cart[x].Qty = cart[x].Qty + 1;
                        cart[x].SubTotal = cart[x].Price * cart[x].Qty;
                    }
                    
                }
            }
          

            rptActive.DataSource = cart;
            rptActive.DataBind();

        }

        protected void btnPlus_Command(object sender, CommandEventArgs e)
        {
            string[] arg = new string[2];
            arg = e.CommandArgument.ToString().Split(',');
            Product product = new Product();
            product.SKU = arg[2];
            cart = (List<Product>)Session["Cart"];
            product = cart.Find(x => x.SKU.Equals(product.SKU));
            int h = cart.IndexOf(product);
            product.Qty = Int32.Parse(arg[0]) + 1;
            product.Price = decimal.Parse(arg[1]);
            product.SubTotal = product.Qty * product.Price;
            cart[h] = product;
            Summarize();
            rptActive.DataSource = cart;
            rptActive.DataBind();
        }
        private void Summarize() 
        {
            //float GT;
            decimal t = 0;
            cart = (List<Product>)Session["Cart"];
            for(int x = 0; x < cart.Count; x++)
            {
               t = t + cart[x].SubTotal;
            }
            decimal vat = (decimal)(0.14 * (double)t);
            lblSubT.InnerText = "R " + t + ".00";
            lblVAT.InnerText = "R " + vat + ".00";
            lblExcVAT.InnerText = "R " + (t - vat) + ".00";
            
        }

        protected void btnMinus_Command(object sender, CommandEventArgs e)
        {
            string[] arg = new string[2];
            arg = e.CommandArgument.ToString().Split(',');
            Product product = new Product();
            product.SKU = arg[2];
            cart = (List<Product>)Session["Cart"];
            product = cart.Find(x => x.SKU.Equals(product.SKU));
            int h = cart.IndexOf(product);
            if (product.Qty >= 2)
            {
                product.Qty = Int32.Parse(arg[0]) - 1;
            }
            else
            {
                product.Qty = 1;
            }
            product.Price = decimal.Parse(arg[1]);
            product.SubTotal = product.Qty * product.Price;
            
            cart[h] = product;
            Summarize();
            rptActive.DataSource = cart;
            rptActive.DataBind();
        }
    }
}