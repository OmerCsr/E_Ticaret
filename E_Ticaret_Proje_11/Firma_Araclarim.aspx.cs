using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Firma_Araclarim : System.Web.UI.Page
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

        string kid = Session["kadi"].ToString();
        string sorgu = "Select plakaNo as 'Plaka No',trafigeCikisTarihi as 'Trafiğe Çıkış Tarihi',marka as 'Marka',modelYili as 'Model Yılı',cinsi as 'Cinsi',tipi as 'Tipi',muayeneGecerlilikSuresi as 'Muayene Geçerlilik Suresi',azariYukluAgirligi as 'Azari Yüklü Ağırlığı',ticariAdi as 'Ticari Adı' from arackayit where kAdi='" + kid + "'";

        MySqlDataAdapter adp = new MySqlDataAdapter(sorgu, cnn);
        DataTable dt = new DataTable();

        adp.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            GridView2.DataSource = dt;
            GridView2.DataBind();

        }

    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "yoksay")
        {

            string[] s = new string[GridView2.Rows.Count];
            int i = 0;
            foreach (GridViewRow satirbilgi in GridView2.Rows)
            {

                CheckBox chk = (CheckBox)satirbilgi.FindControl("chksec");
                if (chk != null & chk.Checked)
                {
                    s[i] = satirbilgi.Cells[2].Text;
                    i++;
                }
            }

            for (int l = 0; l < s.Length; l++)
            {
                cnn.Open();
                MySqlCommand cmd = new MySqlCommand();

                string komut = "delete from arackayit where plakaNo = '" + s[l] + "'";

                cmd = new MySqlCommand(komut, cnn);

                cmd.ExecuteNonQuery();

                cmd.Connection.Close();
                cnn.Close();
            }
            Response.Redirect(Request.RawUrl);
        }
    }
}