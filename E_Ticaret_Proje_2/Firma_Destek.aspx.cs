using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Firma_Destek : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void MesajGonder_Click(object sender, EventArgs e)
    {
        string Konu = TextBox1.Text;
        string Mesaj = TextBox2.Text;

        MySqlCommand cmd;

        String sorgu = "Insert into destek(kid,kAdi,Konu,Mesaj) Values(@kid1,@kAdi1,@Konu1,@Mesaj1)";
        cmd = new MySqlCommand(sorgu, cnn);

        cnn.Open();
        try
        {
            cmd.Parameters.AddWithValue("@Konu1", Konu);
            cmd.Parameters.AddWithValue("@Mesaj1", Mesaj);
            cmd.Parameters.AddWithValue("@kid1", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@kAdi1", Session["kadi"].ToString());
            cmd.ExecuteNonQuery();

            Page page = HttpContext.Current.Handler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Bildiriminiz ilgili kişilere iletilmiştir...');window.location='dashboard1.aspx';", true);



            cnn.Close();

        }
        catch (Exception exp)
        {
            Response.Write("<script>alert('Destek Mesajı Gönderilememiştir.')</script>");

        }
    }
}