using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart.Admin
{
    public partial class Product_Management : System.Web.UI.Page
    {
        DAL dAL = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getProducts();
            }
            
        }

        private void getProducts() {
            DataSet datatSet = new DataSet();
            datatSet = dAL.getProducts();
            rptProd.DataSource = datatSet;
            rptProd.DataBind();
        }

    }
}