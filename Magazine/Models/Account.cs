using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Magazine.Models
{
    public class Account
    {
        public Account() {}

        public string email { get; set; }
        public string passWord { get; set; }

        public bool remember { get; set; }
    }
}