using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dashboard1 : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["kadi"]) == "")
        {
            Response.Redirect("giris.aspx");
            Response.End();
        }
        Convert.ToString(Session["id"]);
        BilgileriGetir();
        resgoster();
       
    }

    protected void Btn1_click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

    }

    protected void Btn2_click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        resgoster();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileContent != null)
        {
            string dosyaAdi = FileUpload1.FileName; //Dosyanın adı
            byte[] dosyaIcerik = FileUpload1.FileBytes; //Dosyanın bilgilerini binary formatta getirir
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
            MySqlCommand cmd = new MySqlCommand("update resim set baslik=@baslik, resim=@resim where id=" + Session["id"], con);
            cmd.Parameters.AddWithValue("@baslik", dosyaAdi);
            cmd.Parameters.AddWithValue("@resim", dosyaIcerik);
            con.Open();
            if (cmd.ExecuteNonQuery() > 0)
                lblMesaj.Text = "Dosya başarıyla yüklendi";
            con.Close();
            resgoster();


        }

    }
    protected void lnkcikis_Click(object sender, EventArgs e)
    {

    }
    public void resgoster()
    {



        MySqlDataAdapter myAdapter1 = new MySqlDataAdapter("SELECT resim FROM resim WHERE id = " + Session["id"], ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
        DataTable dt = new DataTable();
        myAdapter1.Fill(dt);

        foreach (DataRow row in dt.Rows)
        {
            // Get the byte array from image file
            byte[] imgBytes = (byte[])row["resim"];

            // If you want convert to a bitmap file

            try
            {
                TypeConverter tc = TypeDescriptor.GetConverter(typeof(Bitmap));
                Bitmap MyBitmap = (Bitmap)tc.ConvertFrom(imgBytes);

                string imgString = Convert.ToBase64String(imgBytes);
                //Set the source with data:image/bmp

                res.Src = String.Format("data:image/Bmp;base64,{0}\"", imgString);
                Img1.Src = String.Format("data:image/Bmp;base64,{0}\"", imgString); 
            }
            catch
            {
                res.Src = "/assets/img/find_user.png";
                Img1.Src = "/assets/img/find_user.png";
            }
            
        }

    }

    protected void BilgileriGetir()
    {
        cnn.Open();
        string kayit = "SELECT * from kullanicitablo where id=@id";
        //kullanıcıAdı parametresine bağlı olarak kullanıcı bilgilerini çeken sql kodu
        MySqlCommand komut = new MySqlCommand(kayit, cnn);
        komut.Parameters.Add("@id", komut).Value = Session["id"];
        MySqlDataAdapter da = new MySqlDataAdapter(komut);
        MySqlDataReader dr = komut.ExecuteReader();
        if (dr.Read()) //Sadece tek bir kayıt döndürüleceği için while kullanmadım.
        {

            lblkadi.Text = dr["kadi"].ToString();
            lblisim.Text = dr["ad"].ToString();
            lblsoyad.Text = dr["soyad"].ToString();
            lblEmail.Text = dr["email"].ToString();
            lbltelefon.Text = dr["telefon"].ToString();

        }
        cnn.Close();
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        GuncellemeGetir();
    }
    protected void GuncellemeGetir()
    {
        cnn.Open();
        string kayit = "SELECT * from kullanicitablo where id=@id";
        //kullanıcıAdı parametresine bağlı olarak kullanıcı bilgilerini çeken sql kodu
        MySqlCommand komut = new MySqlCommand(kayit, cnn);
        komut.Parameters.Add("@id", komut).Value = Session["id"];

        MySqlDataAdapter da = new MySqlDataAdapter(komut);
        MySqlDataReader dr = komut.ExecuteReader();
        if (dr.Read()) //Sadece tek bir kayıt döndürüleceği için while kullanmadım.
        {
            //lblMusterino.Text = dr["musterino"].ToString();
            Txtkadi.Text = dr["kadi"].ToString();
            TxtSifre.Text = dr["sifre"].ToString();
            TxtAd.Text = dr["ad"].ToString();
            TxtSoyad.Text = dr["soyad"].ToString();
            TxtEmail.Text = dr["email"].ToString();
            TxtTel.Text = dr["telefon"].ToString();
            cnn.Close();
        }
    }
        protected void Button5_Click(object sender, EventArgs e)
    {
        cnn.Open();
        string kayit = "update kullanicitablo set kadi='" +Txtkadi.Text.Trim() +"', sifre='"+TxtSifre.Text.Trim()+"',ad='"+TxtAd.Text.Trim()+"',soyad='"+TxtSoyad.Text.Trim()+"',email='"+TxtEmail.Text.Trim()+"',telefon='"+TxtTel.Text.Trim()+"' where id="+Session["id"].ToString() ;
        // müşteriler tablomuzun ilgili alanlarını değiştirecek olan güncelleme sorgusu.
        MySqlCommand komut = new MySqlCommand(kayit, cnn);
        //Sorgumuzu ve baglantimizi parametre olarak alan bir SqlCommand nesnesi oluşturuyoruz.
        
        //Parametrelerimize Form üzerinde ki kontrollerden girilen verileri aktarıyoruz.
        komut.ExecuteNonQuery();
        //Veritabanında değişiklik yapacak komut işlemi bu satırda gerçekleşiyor.
        cnn.Close();
        BilgileriGetir();
        HttpContext.Current.Session["kadi"] = Txtkadi.Text;
        Response.Redirect(Request.RawUrl);

    }

}