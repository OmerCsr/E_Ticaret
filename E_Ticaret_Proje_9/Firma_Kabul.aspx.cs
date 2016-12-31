using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Firma_Kabul : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        KabulEdilenTeklifler();
    }

    private void KabulEdilenTeklifler()
    {
        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        string kAdi = Session["kadi"].ToString();

        string sorgu = "SELECT kullanicitablo.ad,kullanicitablo.soyad,teklifler.ilanId,teklifler.fiyat,teklifler.kamyonPlaka,ilanlar.nereden FROM teklifler,kullanicitablo,ilanlar WHERE teklifler.ilanId=ilanlar.id and teklifler.AkAdi=kullanicitablo.kadi and teklifDurumu='1' and teklifler.kAdi='" + kAdi + "'";

        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();

        adp.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            GridView1.DataSource = dt;
            GridView1.DataBind();

        }


    }

}