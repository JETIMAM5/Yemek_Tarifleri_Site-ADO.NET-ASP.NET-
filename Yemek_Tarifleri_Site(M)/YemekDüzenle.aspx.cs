using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        string id = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Yemekid= @p1", BGL.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                BGL.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", BGL.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/"+FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4 ,YemekResim=@p5 where yemekid=@p6",BGL.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", "~/Resimler/"+FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p6" ,id);
            komut.ExecuteNonQuery();
            BGL.baglanti().Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TÜM YEMEKLERİN DURUMUNU FALSE YAPTIK
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set durum=0",BGL.baglanti());
            komut.ExecuteNonQuery();
            BGL.baglanti().Close();

            //GÜNÜN YEMEĞİ İÇİN İD YE GÖRE DURUMU TRUE YAPALIM
            SqlCommand komut2 = new SqlCommand("Update Tbl_yemekler set durum=1 where yemekid=@p1",BGL.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            BGL.baglanti().Close();


        }
    }
}
