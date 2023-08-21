using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        SQLConnection bgl = new SQLConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler",bgl.baglanti());
            SqlDataReader reader = komut.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();
        }
    }
}