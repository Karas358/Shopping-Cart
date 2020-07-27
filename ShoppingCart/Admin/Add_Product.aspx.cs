using ShoppingCart.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        DAL dAL = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCategories();
            }
            
        }

        public void getCategories()
        {
            DataSet ds = new DataSet();
            ds = dAL.getCategories();
            ddlCategory.DataSource = ds;
            ddlCategory.DataValueField = "CategoryUnique";
            ddlCategory.DataTextField = "_name";
            ddlCategory.DataBind();
        }

        protected void btnSubmitProd_ServerClick(object sender, EventArgs e)
        {
            Product product = new Product();
            product.SKU = txtSKU.Value;
            product.Name = txtProdName.Value;
            product.Description = txtProdDesc.Value;
            String valuePrice = txtPrice.Value;
            valuePrice = valuePrice.Substring(4);
            valuePrice = valuePrice.Substring(0, valuePrice.Length - 3);
                //.Substring(4, valuePrice.Length);
            product.Price = decimal.Parse(valuePrice);
            product.Category = ddlCategory.SelectedItem.Value;
            string res = dAL.newProduct(product);
        }
    }
}