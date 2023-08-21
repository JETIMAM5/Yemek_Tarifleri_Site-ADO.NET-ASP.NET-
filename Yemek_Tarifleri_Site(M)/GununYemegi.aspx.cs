using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Tarifleri_Site_M_
{

    public partial class GununYemegi : System.Web.UI.Page
    {
        SQLConnection bgl = new SQLConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Durum=1", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

        }
    }
}