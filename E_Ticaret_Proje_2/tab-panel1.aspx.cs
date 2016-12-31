using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tab_panel1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        IlanGoruntule();
    }

    private void IlanGoruntule()
    {
        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
        string kid = Session["kadi"].ToString();
        string sorgu = "Select nereden as Nereden,bulunduguKat as BulunduğuKat,bAsansor as BulunduğuAsansor,nereye,gidecegiKat,gAsansor,evinOdaSayisi,baslangicTarihi,bitisTarihi from ilanlar where kAdi='" + kid+"'";
        
        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();

        adp.Fill(dt);
        
        if(dt.Rows.Count > 0)
        {
           
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

    }
}