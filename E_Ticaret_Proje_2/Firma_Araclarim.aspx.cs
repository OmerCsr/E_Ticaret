using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Firma_Araclarim : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        IlanGoruntule();
    }

    private void IlanGoruntule()
    {
       
        string kid = Session["kadi"].ToString();
        string sorgu = "Select plakaNo as 'Plaka No',trafigeCikisTarihi as 'Trafiğe Çıkış Tarihi',marka as 'Marka',modelYili as 'Model Yılı',cinsi as 'Cinsi',tipi as 'Tipi',muayeneGecerlilikSuresi as 'Muayene Geçerlilik Suresi',azariYukluAgirligi as 'Azari Yüklü Ağırlığı',ticariAdi as 'Ticari Adı' from arackayit where kAdi='" + kid + "'";

        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();

        adp.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            GridView2.DataSource = dt;
            GridView2.DataBind();

        }

    }
}