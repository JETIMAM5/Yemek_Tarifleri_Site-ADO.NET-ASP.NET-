using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["kategoriid"];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Kategoriid=@p1",BGL.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}