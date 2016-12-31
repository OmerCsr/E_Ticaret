using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form1 : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = true;
        Panel3.Visible = false;
        Gelen();
    
    }


    protected void Gelen()
    {
       

        String kAdi = Session["kadi"].ToString();

        string sorgu = "Select konu as Konu,mesaj as Mesaj,gonderen as 'Gönderen',tarih as Tarih , ilanId as 'İlan Numarası' from mesajlar where alici='" + kAdi + "' ";

        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
        
        MySqlCommand komut = new MySqlCommand();
        cnn.Open();
        komut.Connection = cnn;
        komut.CommandText = "Select konu as Konu,mesaj as Mesaj,gonderen as 'Gönderen',tarih as Tarih , ilanId as 'İlan Numarası' from mesajlar where alici='" + kAdi + "' ";
        komut.ExecuteNonQuery();
        MySqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            TextBox3.Text = dr["Gönderen"].ToString();
            TextBox4.Text = dr["İlan Numarası"].ToString();
            TextBox3.Visible = false;
            TextBox4.Visible = false;
        }
        cnn.Close();
    }
    protected void Cevap_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = false;       
    }
    protected void Mesaj_Click(object sender, EventArgs e)
    {

        string baslik = TextBox1.Text;
        string icerik = TextBox2.Text;
        string tarih = DateTime.Now.ToShortDateString();
        MySqlCommand cmd;

        String sorgu = "Insert into mesajlar(alici,gonderen,konu,mesaj,tarih,ilanId) Values(@alici1,@gonderen1,@konu1,@mesaj1,@tarih1,@ilanId1)";
        cmd = new MySqlCommand(sorgu, cnn);

        cnn.Open();
        try
        {
            cmd.Parameters.AddWithValue("@konu1", baslik);
            cmd.Parameters.AddWithValue("@mesaj1", icerik);
            cmd.Parameters.AddWithValue("@tarih1", tarih);
            cmd.Parameters.AddWithValue("@gonderen1", Session["kAdi"].ToString());
            cmd.Parameters.AddWithValue("@ilanId1", TextBox4.Text);
            cmd.Parameters.AddWithValue("@alici1", TextBox3.Text);
            cmd.ExecuteNonQuery();

            Page page = HttpContext.Current.Handler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('Mesajınız Gönderilmiştir.');window.location='form1.aspx';", true);



            cnn.Close();

        }
        catch (Exception exp)
        {
            Response.Write("<script>alert('Mesajınız Gönderilememiştir.')</script>");

        }

    }
    protected void gelen_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = true;
        Panel3.Visible = false;
    }
    protected void giden_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = false;
        Panel3.Visible = true;

        String kAdi = Session["kadi"].ToString();

        string sorgu = "Select konu as Konu,mesaj as Mesaj,tarih as Tarih , alici as 'Alıcı', ilanId as 'İlan Numarası' from mesajlar where gonderen='" + kAdi + "' ";

        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            DataList2.DataSource = dt;
            DataList2.DataBind();

        }

    }
}