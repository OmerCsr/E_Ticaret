using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Firma_Arac_Kayit : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void kayitEt_Click(object sender, EventArgs e)
    {
        string Plaka = TextBox1.Text;
        string TrafigeCikisTarihi = TextBox2.Text;
        string Marka = TextBox3.Text;
        string ModelYili = TextBox4.Text;
        string Cinsi = TextBox5.Text;
        string Tipi = TextBox6.Text;
        string MuayeneSuresi = TextBox7.Text;
        string AzamiYuk = TextBox8.Text;
        string TicariAdı = TextBox9.Text;

        MySqlCommand cmd;

        String sorgu = "Insert into arackayit(kid,kAdi,plakaNo,trafigeCikisTarihi,marka,modelYili,cinsi,	tipi,muayeneGecerlilikSuresi,azariYukluAgirligi,ticariAdi) Values(@kid1,@kAdi1,@plakaNo1,@trafigeCikisTarihi1,@marka1,@modelYili1,@cinsi1,@tipi1,@muayeneGecerlilikSuresi1,@azariYukluAgirligi1,@ticariAdi1)";
        cmd = new MySqlCommand(sorgu, cnn);

        cnn.Open();
        try
        {
            cmd.Parameters.AddWithValue("@plakaNo1", Plaka);
            cmd.Parameters.AddWithValue("@trafigeCikisTarihi1", TrafigeCikisTarihi);
            cmd.Parameters.AddWithValue("@marka1", Marka);
            cmd.Parameters.AddWithValue("@modelYili1", ModelYili);
            cmd.Parameters.AddWithValue("@cinsi1", Cinsi);
            cmd.Parameters.AddWithValue("@tipi1", Tipi);
            cmd.Parameters.AddWithValue("@muayeneGecerlilikSuresi1", MuayeneSuresi);
            cmd.Parameters.AddWithValue("@azariYukluAgirligi1", AzamiYuk);
            cmd.Parameters.AddWithValue("@ticariAdi1", TicariAdı);
            cmd.Parameters.AddWithValue("@kid1", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@kAdi1", Session["kadi"].ToString());
            cmd.ExecuteNonQuery();

            Page page = HttpContext.Current.Handler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Aracınız Kayıt Edilmiştir.');window.location='Firma_Araclarim.aspx';", true);



            cnn.Close();

        }
        catch (Exception exp)
        {
            Response.Write("<script>alert('Araç Kayıdı Gerçekleştirilememiştir.')</script>");

        }
    }
}