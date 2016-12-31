using MySql.Data.MySqlClient;
using MySql.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class giris : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

    
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Request.Cookies["cerezim"] != null) //çerezimiz var ise
        //{
        //    HttpCookie kayitlicerez = Request.Cookies["cerezim"]; //ismini verdiğimiz çerezi yakalıyoruz
        //    Session["kadi"] = kayitlicerez.Values["kadi"]; //sessiona değeri atıyoruz
        //    Session["sifre"] = kayitlicerez.Values["sifre"]; //sessiona değeri atıyoruz
        //    Response.Redirect("default.aspx");
        //}
    }
    public void btngrs(object sender, EventArgs e)
    {
        string sorgu = "Select * from kullanicitablo where kadi=@kadi AND sifre=@sifre";



        MySqlCommand cmd = new MySqlCommand(sorgu, cnn);
        cmd.Parameters.AddWithValue("@kadi", txtkadi.Text);
        cmd.Parameters.AddWithValue("@sifre", txtsifre.Text);
        cnn.Open();

        MySqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Session.Timeout = 300;
            Session.Add("kadi", dr["kadi"].ToString());
            Session.Add("id", dr["id"].ToString());
            Session.Add("firma", dr["firma"].ToString());


            if (Convert.ToInt32(Session["firma"]) == 1)
            {
                Response.Redirect("Firma_Profil.aspx");
                Session.Timeout = 1;
            }
                
            else Response.Redirect("dashboard1.aspx");
            Session.Timeout = 1;
        }
        else Response.Write("<script>alert('Kullanıcı Adı veya Şifrenizi Yanlış Girdiniz!')</script>");
        
        //if (CheckBox1.Checked == true)
        //{
        //    HttpCookie cerez = new HttpCookie("cerezim"); //çerezimize isim verdik
        //    cerez.Values.Add("kadi", txtkadi.Text); //kullanıcıadı çerezine değeri atadık
        //    cerez.Values.Add("sifre", txtsifre.Text); //şifre çerezine değeri atadık
        //    cerez.Expires = DateTime.Now.AddDays(30); //çerezimizin geçerli olacağı süreyi girdik 30 gün
        //    Response.Cookies.Add(cerez); //çerezi ekledik
        //}

        cnn.Close();

    }
 
    
}