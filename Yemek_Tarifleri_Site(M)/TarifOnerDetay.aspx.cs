using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.InteropServices;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler Where Tarifid=@p1", BGL.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox4.Text = dr[1].ToString();
                    TextBox5.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox7.Text = dr[5].ToString();
                    TextBox8.Text = dr[6].ToString();

                }
                BGL.baglanti().Close();

                //KATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", BGL.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //  Durum Güncelleme
            SqlCommand komut = new SqlCommand("Update Tbl_tarifler set tarifdurum=1 Where Tarifid=@p1", BGL.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            BGL.baglanti().Close();


            //Yemeği Ana sayfaya ekleme 
            SqlCommand komut2 = new SqlCommand("Insert into tbl_yemekler(yemekad,yemekmalzeme,yemektarif,kategoriid) values (@p1,@p2,@p3,@p4)", BGL.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox4.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox5.Text);
            komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            BGL.baglanti().Close();
        }
    }
}