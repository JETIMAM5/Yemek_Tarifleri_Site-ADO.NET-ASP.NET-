using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];
            SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where Yemekid=@p1", BGL.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            BGL.baglanti().Close();


            //Yorumları Listeleme

            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where Yemekid=@p2",BGL.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader DR2 = komut2.ExecuteReader();
            DataList2.DataSource = DR2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Yorumlar (YorumAd,YorumMail,Yorumicerik,yemekid) values (@p1,@p2,@p3,@p4)",BGL.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut.Parameters.AddWithValue("@p4",yemekid);

            komut.ExecuteNonQuery();
            BGL.baglanti().Close();   
        }
    }
}