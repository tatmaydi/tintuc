namespace DataAccess.Framework
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class WizardMagazineDbContext : DbContext
    {
        public WizardMagazineDbContext() : base("name=MyDbcontext") { }

        public virtual DbSet<tbl_account> tbl_account { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<tbl_account>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_account>()
                .Property(e => e.password)
                .IsUnicode(false);
        }
    }
}
