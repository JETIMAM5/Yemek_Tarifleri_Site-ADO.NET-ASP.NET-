using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {



            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack==false)
            {

                SqlCommand komut = new SqlCommand("Select Yorumad,YorumMail,Yorumicerik,YemekAd From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where Yorumid=@p1", BGL.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();

                }
                BGL.baglanti().Close();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set  Yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", BGL.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            BGL.baglanti().Close();
        }
    }
}
