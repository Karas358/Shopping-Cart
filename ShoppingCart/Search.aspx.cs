using ShoppingCart.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
//using ShoppingCart.App_Code;


namespace ShoppingCart
{
    public partial class Test : System.Web.UI.Page
    {
        List<Product> cart = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Cart"] == null)
                {
                    Session["Cart"] = cart;
                }
                else
                {
                    cart = (List<Product>)Session["Cart"];
                }
                badge.InnerText = cart.Count + "";
                getProducts();
            }
        }
        private void getProducts()
        {
            DAL dAL = new DAL();
            DataSet ds = new DataSet();
            ds = dAL.getProducts();
            rptActive.DataSource = ds;
            rptActive.DataBind();


            //List<Product> testDatas = new List<Product>();            
            //for (int x = 0; x < 9; x++)
            //{
            //    Product product = new Product();
            //    product.Name = "Upholstery Couch Single Seater";
            //    product.SKU = x + "-445KHB";
            //    product.Qty = 1;
            //    product.Price = 250 * x;
            //    product.SubTotal = product.Qty * product.Price;
            //    testDatas.Add(product);
            //}
            //rptActive.DataSource = testDatas;
            //rptActive.DataBind();
        }
        protected void btnAdd_Command(object sender, CommandEventArgs e)
        {
            string[] arg = new string[5];
            arg = e.CommandArgument.ToString().Split(',');
            Product product = new Product();
            product.Name = arg[0];
            product.SKU = arg[1];
            product.Price = decimal.Parse(arg[2]);
            product.Qty = Int32.Parse(arg[3]);
            product.SubTotal = decimal.Parse(arg[4]);
            if(Session["Cart"] == null)
            {
                cart = (List<Product>)Session["Cart"];
                cart.Add(product);
            }
            else
            {
                cart = (List<Product>)Session["Cart"];
                cart.Add(product);
            }
            badge.InnerText = cart.Count + "";
            Session["Cart"] = cart;   
        }
    }
}