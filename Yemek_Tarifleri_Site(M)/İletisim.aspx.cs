using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class İletisim : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Mesajlar (MesajGonderen,MesajBaslik,MesajMail,Mesajicerik) values (@p1,@p2,@p3,@p4)",BGL.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut.Parameters.AddWithValue("@p4",TextBox4.Text);
            komut.ExecuteNonQuery();
            BGL.baglanti().Close();

        }
    }
}