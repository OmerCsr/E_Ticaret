using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Firma_Bilgiler : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        //GuncellemeGetir();

    }
    protected void kayitEt_Click(object sender, EventArgs e)
    {
        cnn.Open();

        MySqlCommand cmd;

        String sorgu = "Insert into firmabilgileri(kid,kAdi,firmaAdi,ad,soyad,vergiDairesi,vergiNo,adres,il,	ilce,postaKodu,telefon,fax,webAdresi,email,aracSayisi) Values(@kid1,@kAdi1,@firmaAdi1,@ad1,@soyad1,@vergiDairesi1,@vergiNo1,@adres1,@il1,@ilce1,@postaKodu1,@telefon1,@fax1,@webAdresi1,@email1,@aracSayisi1)";
        cmd = new MySqlCommand(sorgu, cnn);

        try
        {
            cmd.Parameters.AddWithValue("@firmaAdi1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ad1", TextBox2.Text);
            cmd.Parameters.AddWithValue("@soyad1", TextBox3.Text);
            cmd.Parameters.AddWithValue("@vergiDairesi1", TextBox4.Text);
            cmd.Parameters.AddWithValue("@vergiNo1", TextBox5.Text);
            cmd.Parameters.AddWithValue("@adres1", TextBox6.Text);
            cmd.Parameters.AddWithValue("@il1", TextBox7.Text);
            cmd.Parameters.AddWithValue("@ilce1", TextBox8.Text);
            cmd.Parameters.AddWithValue("@postaKodu1", TextBox9.Text);
            cmd.Parameters.AddWithValue("@telefon1", TextBox10.Text);
            cmd.Parameters.AddWithValue("@fax1", TextBox11.Text);
            cmd.Parameters.AddWithValue("@webAdresi1", TextBox12.Text);
            cmd.Parameters.AddWithValue("@email1", TextBox13.Text);
            cmd.Parameters.AddWithValue("@aracSayisi1", TextBox14.Text);
            cmd.Parameters.AddWithValue("@kid1", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@kAdi1", Session["kadi"].ToString());
            cmd.ExecuteNonQuery();

            Page page = HttpContext.Current.Handler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Firma Bilgileri Kayıt Edilmiştir.');window.location='Firma_Bilgiler.aspx';", true);



            cnn.Close();

        }
        catch (Exception exp)
        {
            Response.Write("<script>alert('Firma Bilgileri Kayıt Edilememiştir.')</script>");

        }
    }

    //protected void GuncellemeGetir()
    //{
    //    cnn.Open();
    //    string kayit = "SELECT * from firmabilgileri where id=@id";
    //    //kullanıcıAdı parametresine bağlı olarak kullanıcı bilgilerini çeken MySql kodu
    //    MySqlCommand komut = new MySqlCommand(kayit, cnn);
    //    komut.Parameters.Add("@id", komut).Value = Session["id"];

    //    MySqlDataAdapter da = new MySqlDataAdapter(komut);
    //    MySqlDataReader dr = komut.ExecuteReader();
    //    if (dr.Read()) //Sadece tek bir kayıt döndürüleceği için while kullanmadım.
    //    {
      
    //        //lblMusterino.Text = dr["musterino"].ToString();
    //        TextBox1.Text = dr["firmaAdi"].ToString();
    //        TextBox2.Text = dr["ad"].ToString();
    //        TextBox3.Text = dr["soyad"].ToString();
    //        TextBox4.Text = dr["vergiDairesi"].ToString();
    //        TextBox5.Text = dr["vergiNo"].ToString();
    //        TextBox6.Text = dr["adres"].ToString();
    //        TextBox7.Text = dr["il"].ToString();
    //        TextBox8.Text = dr["ilçe"].ToString();
    //        TextBox9.Text = dr["postaKodu"].ToString();
    //        TextBox10.Text = dr["telefon"].ToString();
    //        TextBox11.Text = dr["fax"].ToString();
    //        TextBox12.Text = dr["webAdresi"].ToString();
    //        TextBox13.Text = dr["email"].ToString();
    //        TextBox14.Text = dr["aracSayisi"].ToString();
    //        cnn.Close();
    //    }
    //}
}