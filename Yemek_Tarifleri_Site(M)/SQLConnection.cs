using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site_M_
{
    public class SQLConnection
    {
        public SqlConnection baglanti()
        {
        SqlConnection baglan = new SqlConnection("Data source=5JETIMAM8\\SQLEXPRESS;Initial Catalog=Dbo_Yemektarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}