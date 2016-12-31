using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Firma_Tum_Ilanlar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        IlanGoruntule();
    }

    private void IlanGoruntule()
    {
        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        string sorgu = "Select kAdi,nereden as Nereden,bulunduguKat as 'Bulunduğu Kat',bAsansor as 'Bulunduğu Asansör',nereye as 'Nereye',gidecegiKat as 'Gideceği Kat',gAsansor as 'Gideceği Asansör',evinOdaSayisi as 'Evin Oda Sayısı',baslangicTarihi as 'Başlangıç Tarihi ',bitisTarihi as 'Bitiş Tarihi' from ilanlar ";

        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();

        adp.Fill(dt);

        if (dt.Rows.Count > 0)
        {
   
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }


    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow || e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[2].Visible = false;
        }
    }

    protected void gvTest_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "mesaj")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            Panel1.Visible = true;
            Panel2.Visible = false;
            TextBox1.Text = Session["kadi"].ToString();
            string deger = HttpUtility.HtmlDecode(GridView1.Rows[index].Cells[2].Text.ToString()); 

            TextBox2.Text = deger;
        }
        else if (e.CommandName == "teklif")
        {
        
        }
    }
   
    protected void MesajGonder_Click(object sender, EventArgs e)
    {
        Response.Redirect("Firma_Profil.aspx");
    }
}