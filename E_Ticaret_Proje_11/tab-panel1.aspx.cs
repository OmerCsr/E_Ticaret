using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tab_panel1 : System.Web.UI.Page
{

    MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            IlanGoruntule(); // like GridView etc.
        }

       
    }

    private void IlanGoruntule()
    {
        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
        string kid = Session["kadi"].ToString();
        string sorgu = "Select kAdi,id as 'İlan Numarası',nereden as Nereden,bulunduguKat as 'Bulunduğu Kat',bAsansor as 'Bulunduğu Asansor',nereye as Nereye,gidecegiKat as 'Gideceği Kat',gAsansor as 'Gideceği Asansör',evinOdaSayisi as 'Evin Oda Sayısı',baslangicTarihi as 'Başlangıç Tarihi',bitisTarihi as 'Bitiş Tarihi' from ilanlar where kAdi='" + kid+"'";
        
        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();

        adp.Fill(dt);
        
        if(dt.Rows.Count > 0)
        {
           
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

    }
    protected void gvTest_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "yoksay")
        {
            
            string[] s = new string[GridView1.Rows.Count];
            string[] s2 = new string[GridView1.Rows.Count];
            int i = 0;
            foreach (GridViewRow satirbilgi in GridView1.Rows)
            {

                CheckBox chk = (CheckBox)satirbilgi.FindControl("chksec");
                if (chk != null & chk.Checked)
                {      
                    s[i] = satirbilgi.Cells[2].Text;
                    s2[i] = satirbilgi.Cells[3].Text;
                    i++;
                }
            }

            for (int l = 0; l < s.Length; l++)
            {
                cnn.Open();
                MySqlCommand cmd = new MySqlCommand();

                string komut = "delete from ilanlar where kAdi = '" + s[l] + "' and id ='"+s2[l]+"'";
            
                cmd = new MySqlCommand(komut, cnn);
               
                cmd.ExecuteNonQuery();

                cmd.Connection.Close();
                cnn.Close();
            }
            Response.Redirect(Request.RawUrl);

        }
    }
}