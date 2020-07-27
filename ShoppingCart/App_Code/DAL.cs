using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using ShoppingCart.Models;

namespace ShoppingCart
{
    public class DAL
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["WebConnectionString"].ConnectionString.ToString());
        SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
        SqlCommand sqlCommand;
        DataSet ds;
        public DataSet getProducts()
        {
            try
            {
                sqlCommand = new SqlCommand("usp_getAllProducts", con);
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlDataAdapter.SelectCommand = sqlCommand;
                ds = new DataSet();
                sqlDataAdapter.Fill(ds);
            }
            catch (SqlException e){             }
            //catch (Exception e){}
            return ds;        
        }
        public DataSet getCategories()
        {
            try {
                sqlCommand = new SqlCommand("usp_getCategories", con);
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlDataAdapter.SelectCommand = sqlCommand;
                ds = new DataSet();
                sqlDataAdapter.Fill(ds);
            } catch (SqlException e) { }
            //catch(Exception e){            }
            return ds;
        }
        public String newProduct(Product product)
        {
            try {
                sqlCommand = new SqlCommand("usp_newProduct", con);
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@SKU", product.SKU);
                sqlCommand.Parameters.AddWithValue("@_name", product.Name);
                sqlCommand.Parameters.AddWithValue("@_description", product.Description);
                sqlCommand.Parameters.AddWithValue("@CategoryUnique", product.Category);
                sqlCommand.Parameters.AddWithValue("@_price", product.Price);
                sqlDataAdapter.SelectCommand = sqlCommand;
                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();    
            }
            catch(Exception e)
            {

            }
            return "";
        }
    }
}