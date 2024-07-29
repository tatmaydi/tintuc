namespace DataAccess.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_account
    {
        public int id { get; set; }

        [Column(TypeName = "text")]
        public string email { get; set; }

        [Column(TypeName = "text")]
        public string password { get; set; }
    }
}
