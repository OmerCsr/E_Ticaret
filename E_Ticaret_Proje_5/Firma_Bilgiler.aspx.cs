using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Firma_Bilgiler : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    public static int durum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GuncellemeGetir();
        }

    }
    protected void kayitEt_Click(object sender, EventArgs e)
    {
        string kAdi = Session["kadi"].ToString();
        cnn.Open();

        if (durum == 0)
        {
            string kayit = "update firmabilgileri set firmaAdi='" + TextBox1.Text.Trim() + "', ad='" + TextBox2.Text.Trim() + "',soyad='" + TextBox3.Text.Trim() + "',vergiDairesi='" + TextBox4.Text.Trim() + "',vergiNo='" + TextBox5.Text.Trim() + "',adres='" + TextBox6.Text.Trim() + "',il='" + TextBox7.Text.Trim() + "',ilce='" + TextBox8.Text.Trim() + "',postaKodu='" + TextBox9.Text.Trim() + "',telefon='" + TextBox10.Text.Trim() + "',fax='" + TextBox11.Text.Trim() + "',webAdresi='" + TextBox12.Text.Trim() + "',email='" + TextBox13.Text.Trim() + "',aracSayisi='" + TextBox14.Text.Trim() + "' where kAdi='" + kAdi + "'";
            // müşteriler tablomuzun ilgili alanlarını değiştirecek olan güncelleme sorgusu.
            MySqlCommand komut = new MySqlCommand(kayit, cnn);
            //Sorgumuzu ve baglantimizi parametre olarak alan bir SqlCommand nesnesi oluşturuyoruz.

            //Parametrelerimize Form üzerinde ki kontrollerden girilen verileri aktarıyoruz.
            komut.ExecuteNonQuery();
            Page page = HttpContext.Current.Handler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Firma Bilgileriniz Güncellenmiştir.');window.location='Firma_Bilgiler.aspx';", true);
            Response.Redirect("Firma_Bilgiler.aspx");
        }
        else
        {
            MySqlCommand cmd1;

            String sorgu = "Insert into firmabilgileri(kid,kAdi,firmaAdi,ad,soyad,vergiDairesi,vergiNo,adres,il,	ilce,postaKodu,telefon,fax,webAdresi,email,aracSayisi) Values(@kid1,@kAdi1,@firmaAdi1,@ad1,@soyad1,@vergiDairesi1,@vergiNo1,@adres1,@il1,@ilce1,@postaKodu1,@telefon1,@fax1,@webAdresi1,@email1,@aracSayisi1)";
            cmd1 = new MySqlCommand(sorgu, cnn);
            cmd1.Parameters.Add("@kAdi", cmd1).Value = Session["kAdi"];

            //MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            //MySqlDataReader dr1 = cmd.ExecuteReader();

            try
            {

                cmd1.Parameters.AddWithValue("@firmaAdi1", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@ad1", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@soyad1", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@vergiDairesi1", TextBox4.Text);
                cmd1.Parameters.AddWithValue("@vergiNo1", TextBox5.Text);
                cmd1.Parameters.AddWithValue("@adres1", TextBox6.Text);
                cmd1.Parameters.AddWithValue("@il1", TextBox7.Text);
                cmd1.Parameters.AddWithValue("@ilce1", TextBox8.Text);
                cmd1.Parameters.AddWithValue("@postaKodu1", TextBox9.Text);
                cmd1.Parameters.AddWithValue("@telefon1", TextBox10.Text);
                cmd1.Parameters.AddWithValue("@fax1", TextBox11.Text);
                cmd1.Parameters.AddWithValue("@webAdresi1", TextBox12.Text);
                cmd1.Parameters.AddWithValue("@email1", TextBox13.Text);
                cmd1.Parameters.AddWithValue("@aracSayisi1", TextBox14.Text);
                cmd1.Parameters.AddWithValue("@kid1", Session["id"].ToString());
                cmd1.Parameters.AddWithValue("@kAdi1", Session["kadi"].ToString());

                cmd1.ExecuteNonQuery();
                durum = 0;

                Page page = HttpContext.Current.Handler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Firma Bilgileri Kayıt Edilmiştir.');window.location='Firma_Bilgiler.aspx';", true);
            }
            catch (Exception exp)
            {
                Response.Write("<script>alert('Firma Bilgileri Kayıt Edilememiştir.')</script>");

            }

        }

        //Veritabanında değişiklik yapacak komut işlemi bu satırda gerçekleşiyor.
        cnn.Close();





    }

    protected void GuncellemeGetir()
    {
        cnn.Open();

        string kayit = "SELECT * from firmabilgileri where kAdi=@kAdi";
        //kullanıcıAdı parametresine bağlı olarak kullanıcı bilgilerini çeken MySql kodu
        MySqlCommand komut = new MySqlCommand(kayit, cnn);
        komut.Parameters.Add("@kAdi", komut).Value = Session["kAdi"];

        MySqlDataAdapter da = new MySqlDataAdapter(komut);
        MySqlDataReader dr = komut.ExecuteReader();
        if (dr.Read()) //Sadece tek bir kayıt döndürüleceği için while kullanmadım.
        {

            //lblMusterino.Text = dr["musterino"].ToString();
            TextBox1.Text = dr["firmaAdi"].ToString();
            TextBox2.Text = dr["ad"].ToString();
            TextBox3.Text = dr["soyad"].ToString();
            TextBox4.Text = dr["vergiDairesi"].ToString();
            TextBox5.Text = dr["vergiNo"].ToString();
            TextBox6.Text = dr["adres"].ToString();
            TextBox7.Text = dr["il"].ToString();
            TextBox8.Text = dr["ilce"].ToString();
            TextBox9.Text = dr["postaKodu"].ToString();
            TextBox10.Text = dr["telefon"].ToString();
            TextBox11.Text = dr["fax"].ToString();
            TextBox12.Text = dr["webAdresi"].ToString();
            TextBox13.Text = dr["email"].ToString();
            TextBox14.Text = dr["aracSayisi"].ToString();

            cnn.Close();
        }
        string a = TextBox1.Text.Trim();
        if (a == "") durum = 1;
    }

}