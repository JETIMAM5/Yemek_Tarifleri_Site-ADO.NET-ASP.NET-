using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Site_M_
{
    public partial class Kulllanici : System.Web.UI.MasterPage
    { 
        SQLConnection bgl = new SQLConnection();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();  
            DataList1.DataSource = oku;
            DataList1.DataBind();
            
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
