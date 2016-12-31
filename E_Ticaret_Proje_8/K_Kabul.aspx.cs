using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class K_Kabul : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        KabulEttigiTeklifler();
    }

    private void KabulEttigiTeklifler()
    {
        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        string kAdi = Session["kadi"].ToString();

        string sorgu = "SELECT kullanicitablo.ad as Ad,kullanicitablo.soyad as Soyad,teklifler.ilanId as 'İlan Numarası',teklifler.fiyat as Fiyat,teklifler.kamyonPlaka as 'Kamyon Plaka',ilanlar.nereden as 'Nereden' FROM teklifler,kullanicitablo,ilanlar WHERE teklifler.ilanId=ilanlar.id and teklifler.kAdi=kullanicitablo.kadi and teklifler.teklifDurumu='1' and teklifler.AkAdi='" + kAdi + "'";

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