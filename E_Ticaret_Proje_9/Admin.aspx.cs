using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        object kullanici = Session["GkAdi"];
        if (kullanici == null)
        {
            Response.Redirect("Admin_Giris.aspx");
        }
        else
        {
            lblKullaniciAdi.Text = kullanici.ToString();
        }
        Panel1.Visible = false;
    }

    protected void Kullanıcılar_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
}