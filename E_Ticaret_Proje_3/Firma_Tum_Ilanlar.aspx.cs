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
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        IlanGoruntule();
    }

    private void IlanGoruntule()
    {
        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        string sorgu = "Select id,kAdi,nereden as Nereden,bulunduguKat as 'Bulunduğu Kat',bAsansor as 'Bulunduğu Asansör',nereye as 'Nereye',gidecegiKat as 'Gideceği Kat',gAsansor as 'Gideceği Asansör',evinOdaSayisi as 'Evin Oda Sayısı',baslangicTarihi as 'Başlangıç Tarihi ',bitisTarihi as 'Bitiş Tarihi' from ilanlar ";

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
            e.Row.Cells[3].Visible = false;
            
        }
    }

    protected void gvTest_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "teklif")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            Panel1.Visible = true;
            Panel2.Visible = false;
            //TextBox1.Text = Session["kadi"].ToString();
            string alıcıdeger = HttpUtility.HtmlDecode(GridView1.Rows[index].Cells[2].Text.ToString());
            string iddegeri = HttpUtility.HtmlDecode(GridView1.Rows[index].Cells[3].Text.ToString());
            TextBox3.Text = alıcıdeger;
            TextBox4.Text = iddegeri;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
        }
        else if (e.CommandName == "mesaj")
        {
        
        }
    }
   
    protected void TeklifVer_Click(object sender, EventArgs e)
    {
        string Fiyat = TextBox1.Text;
        string Plaka = TextBox2.Text;

        MySqlCommand cmd;

        String sorgu = "Insert into teklifler(kid,kAdi,AkAdi,ilanId,fiyat,kamyonPlaka) Values(@kid1,@kAdi1,@AkAdi1,@ilanId1,@fiyat1,@kamyonPlaka1)";
        cmd = new MySqlCommand(sorgu, cnn);

        cnn.Open();
        try
        {
            cmd.Parameters.AddWithValue("@fiyat1", Fiyat);
            cmd.Parameters.AddWithValue("@kamyonPlaka1", Plaka);
            cmd.Parameters.AddWithValue("@kid1", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@kAdi1",Session["kAdi"].ToString()) ;
            cmd.Parameters.AddWithValue("@ilanId1", TextBox3.Text);
            cmd.Parameters.AddWithValue("@AkAdi1", TextBox4.Text);
            cmd.ExecuteNonQuery();

            Page page = HttpContext.Current.Handler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Teklifiniz Gönderilmiştir.');window.location='Firma_Tum_Ilanlar.aspx';", true);



            cnn.Close();

        }
        catch (Exception exp)
        {
            Response.Write("<script>alert('Teklif Yapılamamıştır.')</script>");

        }

    }
}