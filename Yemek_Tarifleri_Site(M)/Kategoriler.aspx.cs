using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];

            }
            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler",BGL.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete from Tbl_Kategoriler where kategoriid=@p1",BGL.baglanti());
                komut2.Parameters.AddWithValue("@p1",id);
                komut2.ExecuteNonQuery();
                BGL.baglanti().Close();
            }


            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Kategoriler (KategoriAd) values (@p1)",BGL.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            BGL.baglanti().Close();
        }
    }
}