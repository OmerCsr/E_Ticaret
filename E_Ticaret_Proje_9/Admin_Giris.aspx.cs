using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Giris : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        string sorgu = "Select*from admin where kAdi=@kAdi AND sifre=@sifre";
        MySqlCommand cmd = new MySqlCommand(sorgu, cnn);
        cmd.Parameters.AddWithValue("@kAdi", txtkadi.Text);
        cmd.Parameters.AddWithValue("@sifre", txtsifre.Text);
        cnn.Open();

        MySqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session.Timeout = 300;
            Session.Add("GkAdi", dr["kAdi"].ToString());
            Response.Redirect("Admin.aspx");/*kullanıcı girişi sağlanınca sayfa yönlensin*/
        }
        else
        {
            Label1.Text = "KULLANICI GİRİŞİ SAĞLANAMADI";

        }
        cnn.Close();

    }
}