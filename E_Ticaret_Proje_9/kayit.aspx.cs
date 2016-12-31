using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class kayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.RemoveAll();

    }
    public void reskaydet()
    {

        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
        MySqlCommand cmd;

        string sorgu = "Select id from kullanicitablo where kadi=@kadi";
        cmd = new MySqlCommand(sorgu, cnn);
        cmd.Parameters.AddWithValue("@kadi", HttpContext.Current.Session["kullaniciadi"].ToString());
        cnn.Open();
        string id = "";
        MySqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {



            id = dr["id"].ToString();


        }



        string dosyaAdi = "ilk"; //Dosyanın adı
        byte[] dosyaIcerik = { 0 }; //System.IO.File.ReadAllBytes(fileName); bilgilerini binary formatta getirir
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
        cmd = new MySqlCommand("Insert Into resim Values(@id, @baslik, @resim)", con);
        cmd.Parameters.AddWithValue("@baslik", dosyaAdi);
        cmd.Parameters.AddWithValue("@resim", dosyaIcerik);
        cmd.Parameters.AddWithValue("@id", id);
        con.Open();
        if (cmd.ExecuteNonQuery() > 0)
            cnn.Close();

    }




    protected void Button1_Click2(object sender, EventArgs e)
    {
        string durum = "0";
        if (CheckBox1.Checked == true) durum = "1";
        string KullaniciAdi = TextBox1.Text;
        string ad = TextBox3.Text;
        string soyad = TextBox4.Text;
        string sifre = TextBox2.Text;
        string mail = TextBox5.Text;
        string telefon = TextBox6.Text;
        int id1 = 0;
        string sorgu = "Select id from kullanicitablo where kadi ='" + TextBox1.Text + "'";

        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        MySqlCommand cmd = new MySqlCommand(sorgu, cnn);
        cnn.Open();
        MySqlDataReader reader2 = cmd.ExecuteReader();
        while (reader2.Read())
        {
            id1 = Convert.ToInt32(reader2["id"].ToString());
        }
        cnn.Close();
        if (id1 == 0)
        {
            sorgu = "Insert into kullanicitablo(kadi,sifre,ad,soyad,email,telefon,firma) Values(@kullaniciadi1,@sifre1,@ad1,@soyad1,@mail1,@telefon1,@firma1)";
            cmd = new MySqlCommand(sorgu, cnn);

            cnn.Open();
            try
            {
                cmd.Parameters.AddWithValue("@kullaniciadi1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@sifre1", TextBox2.Text);
                cmd.Parameters.AddWithValue("@ad1", TextBox3.Text);
                cmd.Parameters.AddWithValue("@soyad1", TextBox4.Text);
                cmd.Parameters.AddWithValue("@mail1", TextBox5.Text);
                cmd.Parameters.AddWithValue("@telefon1", TextBox6.Text);
                cmd.Parameters.AddWithValue("@firma1", durum.Trim());

                cmd.ExecuteNonQuery();
                /////////////////////////////////
                //////////////////////////////////////


                //pnlKayit.Visible = false;
                //pnlDurum.Visible = true;

                Session.Add("kullaniciadi", TextBox1.Text);

                sorgu = "select id from kullanicitablo where kadi ='" + TextBox6.Text + "'";
                cmd = new MySqlCommand(sorgu, cnn);

                MySqlDataReader reader = cmd.ExecuteReader();

                Page page = HttpContext.Current.Handler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Basarıyla Kayıt Yapılmıştır.');window.location='giris.aspx';", true);



                cnn.Close();
                reskaydet();
            }
            catch (Exception exp)
            {
                Response.Write("<script>alert('Kayıdınız Yapılamamıştır.')</script>");

            }
        }


        else
        {
            Response.Write("<script>alert('Kullanıcı adını değiştirin')</script>");


        }

    }

}



