using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", BGL.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}