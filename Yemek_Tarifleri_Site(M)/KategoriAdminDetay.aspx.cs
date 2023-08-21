using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Routing;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];
           if (Page.IsPostBack==false) {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler where kategoriid= @p1", BGL.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtKategoriAd.Text = dr[1].ToString();
                    TxtKategoriAdet.Text = dr[2].ToString();
                }
                BGL.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2  where Kategoriid=@p3",BGL.baglanti());
            komut.Parameters.AddWithValue("@p1",TxtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2",TxtKategoriAdet.Text);
            komut.Parameters.AddWithValue("@p3",id);
            komut.ExecuteNonQuery();
            BGL.baglanti().Close();
        }
    }
}