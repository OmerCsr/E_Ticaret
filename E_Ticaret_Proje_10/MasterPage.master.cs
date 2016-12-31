using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        object kullanici = Session["kadi"];
        if (kullanici == null)
        {
            Response.Redirect("giris.aspx");
        }
        else
        {
            lblKullaniciAdi.Text = kullanici.ToString();
        }

      
    }
}
