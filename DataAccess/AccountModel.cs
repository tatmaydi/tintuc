using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.Framework;
using System.Data.Sql;
using System.Data.SqlClient;
namespace DataAccess
{
    public class AccountModel
    {
        private WizardMagazineDbContext context = null;
        public AccountModel()
        {
            context = new WizardMagazineDbContext();
        }
        public bool login(string email, string password)
        {
            object[] sqlParams =
            {
                new SqlParameter("@email", email),
                new SqlParameter("@password", password),
            };
            var res = context.Database.SqlQuery<bool>("accountlogin @email, @password", sqlParams).SingleOrDefault();
            return res;
        }
    }
}
