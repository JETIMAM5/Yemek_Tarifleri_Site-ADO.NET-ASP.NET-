using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        string islem = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", BGL.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            //YEMEK LİSTESİ
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler",BGL.baglanti());
            SqlDataReader dr = komut.ExecuteReader();   
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete From Tbl_Yemekler Where Yemekid=@p1",BGL.baglanti());
                komut2.Parameters.AddWithValue("@p1",id);
                komut2.ExecuteNonQuery();
                BGL.baglanti().Close();
            }

            //KATEGORİ LİSTESİ 
         
          
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
            Panel3.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible=false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("Insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)",BGL.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            BGL.baglanti().Close();

            //Kategori Sayısını Arttırma 
            SqlCommand komut2 = new SqlCommand("Update Tbl_Kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1",BGL.baglanti());
            komut2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            BGL.baglanti().Close(); 

        }
    }
}