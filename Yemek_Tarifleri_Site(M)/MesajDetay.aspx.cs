using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class MesajDetayaspx : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            if (Page.IsPostBack == false)
            {


                SqlCommand komut = new SqlCommand("Select * From Tbl_Mesajlar where Mesajid=@p1", BGL.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[4].ToString();
                }
                BGL.baglanti().Close();
            }

        }
    }
}