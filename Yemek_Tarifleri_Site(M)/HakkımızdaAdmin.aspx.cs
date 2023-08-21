using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.WebSockets;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class HakkımızdaAdmin : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", BGL.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                BGL.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update tbl_hakkimizda set metin=@p1", BGL.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            BGL.baglanti().Close();

        }
    }
}