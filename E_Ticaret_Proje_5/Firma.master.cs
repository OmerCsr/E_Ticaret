using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Firma : System.Web.UI.MasterPage
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
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
