using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ui1 : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ilanVer_Click(object sender, EventArgs e)
    {
        string durum = "0";
        string durum2 = "0";
        string Nereden = TextBox1.Text;
        string Nereye = TextBox2.Text;
        string Tasinilan = TextBox3.Text;
        string Tasinan = TextBox4.Text;
        string Oda = TextBox5.Text;
        string Bitis = TextBox6.Text;
        string tarih = DateTime.Now.ToShortDateString();
        //string Baslangic = TextBox5.Text;
        if (CheckBox1.Checked == true) durum = "1";
        if (CheckBox2.Checked == true) durum2 = "1";
        MySqlCommand cmd;

        String sorgu = "Insert into ilanlar(kid,kAdi,nereden,bulunduguKat,bAsansor,nereye,gidecegiKat,gAsansor,evinOdaSayisi,baslangicTarihi,bitisTarihi) Values(@kid1,@kAdi1,@nereden1,@bulunduguKat1,@bAsansor1,@nereye1,@gidecegiKat1,@gAsansor1,@evinOdaSayisi1,@baslangicTarihi,@bitisTarihi)";
            cmd = new MySqlCommand(sorgu, cnn);

            cnn.Open();
            try
            {
                cmd.Parameters.AddWithValue("@nereden1", Nereden);
                cmd.Parameters.AddWithValue("@bulunduguKat1", Tasinilan);
                cmd.Parameters.AddWithValue("@bAsansor1", durum);
                cmd.Parameters.AddWithValue("@nereye1", Nereye);
                cmd.Parameters.AddWithValue("@gidecegiKat1", Tasinan);
                cmd.Parameters.AddWithValue("@gAsansor1", durum2);
                cmd.Parameters.AddWithValue("@evinOdaSayisi1", Oda);
                cmd.Parameters.AddWithValue("@baslangicTarihi", tarih );
                cmd.Parameters.AddWithValue("@bitisTarihi", Bitis);
                cmd.Parameters.AddWithValue("@kid1", Session["id"].ToString());
                cmd.Parameters.AddWithValue("@kAdi1", Session["kadi"].ToString());
                cmd.ExecuteNonQuery();

                Page page = HttpContext.Current.Handler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Basarıyla Kayıt Yapılmıştır.');window.location='tab-panel1.aspx';", true);



                cnn.Close();

            }
            catch (Exception exp)
            {
                Response.Write("<script>alert('Kayıdınız Yapılamamıştır.')</script>");

            }
        }



    }
