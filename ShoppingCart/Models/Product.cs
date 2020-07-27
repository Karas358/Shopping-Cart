﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingCart.Models
{
    public class Product
    {
        
        public string SKU { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Category { get; set; }
        public decimal Price { get; set; }
        public byte[] Image { get; set; }
        public int Qty { get; set; }
        public decimal SubTotal { get;set; }
    }
}