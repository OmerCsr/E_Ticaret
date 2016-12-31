using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blank1 : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        
        if (!Page.IsPostBack)
        {
            GelenTeklifler(); // like GridView etc.
        }

    }

    string[,] silinecekler;
    private void GelenTeklifler()
    {
        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);

        String kAdi = Session["kadi"].ToString();

        string sorgu = "Select kAdi, ilanId as 'İlan Numarası',fiyat as 'Teklif',kamyonPlaka from teklifler where AkAdi='" + kAdi + "'";

        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();

        adp.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            GridView1.DataSource = dt;
            GridView1.DataBind();

        }


    }



    protected void gvTest_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "bilgiler")
        {

            Panel1.Visible = false;
            Panel2.Visible = true;

            String kAdi = Session["kadi"].ToString();

            string sorgu2 = "SELECT teklifler.ilanId as 'İlan Numarası',arackayit.trafigeCikisTarihi as 'Trafiğe Çıkış Tarihi',arackayit.marka as Marka ,arackayit.modelYili as ' Model Yılı',arackayit.cinsi as Cinsi,arackayit.tipi as 'Tipi ',arackayit.muayeneGecerlilikSuresi as 'Muayene Geçerlilik Süresi',arackayit.azariYukluAgirligi as 'Azari Yüklü Ağırlığı',arackayit.ticariAdi as 'Ticari Adı',firmabilgileri.firmaAdi as 'Firma Adı',firmabilgileri.ad as Ad,firmabilgileri.soyad as Soyad,firmabilgileri.il as 'İl',firmabilgileri.ilce as 'İlce',firmabilgileri.telefon as Telefon,firmabilgileri.fax as Fax,firmabilgileri.webAdresi as 'Web Adresi',firmabilgileri.email as 'Email',firmabilgileri.aracSayisi as 'Araç Sayısı',teklifler.fiyat as Teklifi,teklifler.kamyonPlaka as 'Kamyon Plakası' FROM teklifler,firmabilgileri,arackayit where teklifler.kamyonPlaka=arackayit.plakaNo and firmabilgileri.kAdi=arackayit.kAdi and teklifler.AkAdi='" + kAdi + "'";

            MySqlDataAdapter adp = new MySqlDataAdapter(sorgu2, cnn);
            DataTable dt = new DataTable();

            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                GridView2.DataSource = dt;
                GridView2.DataBind();

            }

        }
        else if (e.CommandName == "yoksay")
        {

            string[] s = new string[GridView1.Rows.Count] ;
            string[] s2 = new string[GridView1.Rows.Count];
            string[] s3 = new string[GridView1.Rows.Count];
            string[] s4 = new string[GridView1.Rows.Count];
            int i = 0;
            foreach (GridViewRow satirbilgi in GridView1.Rows)
            {
                CheckBox chk = (CheckBox)satirbilgi.FindControl("chksec");
                if (chk != null & chk.Checked)
                {
                    s[i] = satirbilgi.Cells[4].Text;
                    s2[i] = satirbilgi.Cells[5].Text;
                    s3[i] = satirbilgi.Cells[6].Text;
                    s4[i] = satirbilgi.Cells[7].Text;
                    i++;
                   
                }
            }
            
            for (int z = 0; z < s.Length; z++)
            {
                cnn.Open();
                MySqlCommand cmd = new MySqlCommand();

                string komut = "delete from teklifler where kAdi='" + s[z] + "' and ilanId = '" + s2[z] + "' and fiyat='" + s3[z] + "' and kamyonPlaka='"+s4[z]+"'";
                
                cmd = new MySqlCommand(komut, cnn);
    
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                cnn.Close();
            }
            Response.Redirect(Request.RawUrl);
            
            

        }
        else if (e.CommandName == "kabul")
        {
            string[] s5 = new string[GridView1.Rows.Count];
      
            int i = 0;
            foreach (GridViewRow satirbilgi in GridView1.Rows)
            {
                CheckBox chk = (CheckBox)satirbilgi.FindControl("chksec");
                if (chk != null & chk.Checked)
                {
                    s5[i] = satirbilgi.Cells[5].Text;
               
                    i++;

                }
            }

            for (int z = 0; z < s5.Length; z++)
            {
                cnn.Open();
                MySqlCommand cmd = new MySqlCommand();

                string komut = "update teklifler set teklifDurumu='1' where ilanId='" + s5[z] + "'";

                cmd = new MySqlCommand(komut, cnn);
     
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                cnn.Close();
            }
            Response.Redirect(Request.RawUrl);

        }


    }

}
