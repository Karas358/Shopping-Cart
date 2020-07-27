using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShoppingCart.Models;
using System.Web.SessionState;
using System.Data;

namespace ShoppingCart
{
    public class Actions
    {
        public int getPage(DataTable dataTable)
        {
            int current = 1;
            int totalSize = dataTable.Rows.Count;
            int pageSize = 9;
            int totalPages = (int)Math.Ceiling((decimal)totalSize/(decimal)pageSize);
            
            if(current < 1)
            {
                current = 1;
            }else if(current > totalPages)
            {
                current = totalPages;
            }
            
            return 0;


        }
        
    }
}