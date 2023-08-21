using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SQLConnection bgl = new SQLConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert Into Tbl_Tarifler(TaridAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
            komut.Parameters.AddWithValue("@t1",TxtTarifAdi.Text);
            komut.Parameters.AddWithValue("@t2",TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@t3",TxtYapilis.Text);
            komut.Parameters.AddWithValue("@t4",FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5",TxtTarifOneren.Text);
            komut.Parameters.AddWithValue("@t6",TxtMail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır");

        }
    }
}