using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SQLConnection BGL = new SQLConnection();
        protected void Page_Load(object sender, EventArgs e)
        
        
        {
            Panel1.Visible = false;
            Panel2.Visible = false;

            //Onaylı Yorumları Dataliste çekme 
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=1",BGL.baglanti());
            SqlDataReader dr = komut .ExecuteReader();  
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Onaysız Yorumları Dataliste çekme
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=0",BGL.baglanti());
            SqlDataReader dr2   = komut2.ExecuteReader();   
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible=false;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel1.Visible=true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel1.Visible=false;
        }
    }
}