using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blank1 : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        GelenTeklifler();
   
    }


    private void GelenTeklifler()
    {
        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        String kAdi = Session["kadi"].ToString();

        string sorgu = "Select ilanId as 'İlan Numarası',fiyat as 'Teklif' from teklifler where AkAdi='" + kAdi + "'";

        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();

        adp.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }

    protected void gvTest_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "bilgiler")
        {

            Panel1.Visible = false;
            Panel2.Visible = true;

            String kAdi = Session["kadi"].ToString();

  string sorgu2 = "SELECT teklifler.ilanId as 'İlan Numarası',arackayit.trafigeCikisTarihi,arackayit.marka,arackayit.modelYili,arackayit.cinsi,arackayit.tipi,arackayit.muayeneGecerlilikSuresi,arackayit.azariYukluAgirligi,arackayit.ticariAdi,firmabilgileri.firmaAdi,firmabilgileri.ad,firmabilgileri.soyad,firmabilgileri.il,firmabilgileri.ilce,firmabilgileri.telefon,firmabilgileri.fax,firmabilgileri.webAdresi,firmabilgileri.email,firmabilgileri.aracSayisi,teklifler.fiyat,teklifler.kamyonPlaka FROM teklifler,firmabilgileri,arackayit where teklifler.kamyonPlaka=arackayit.plakaNo and firmabilgileri.kAdi=arackayit.kAdi and teklifler.AkAdi='" + kAdi + "'";

            MySqlDataAdapter adp = new MySqlDataAdapter(sorgu2, cnn);
            DataTable dt = new DataTable();

            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                GridView2.DataSource = dt;
                GridView2.DataBind();

            }
        }

    }



}