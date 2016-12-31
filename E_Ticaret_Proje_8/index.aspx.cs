using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void image1_click(object sender, EventArgs e)
    {
        Response.Redirect("giris.aspx");
    }

    protected void MesajGonder_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress(TextBox2.Text);// Mailin kimden gönderileceğini yazdık
        mail.To.Add(new MailAddress("omercsr1994@gmail.com"));// Mailin kime gönderileceğini yazdık
        mail.Subject = "İletişim Formu";
        mail.SubjectEncoding = System.Text.Encoding.GetEncoding(1254);
        mail.Body = "Ad Soyad : " + TextBox1.Text + "\n";
        mail.Body += "Telefon : " + TextBox3.Text + "\n";
        mail.Body += "Email : " + TextBox2.Text + "\n";
        mail.Body += "Mesaj : " + TextBox4.Text;
        mail.BodyEncoding = System.Text.Encoding.GetEncoding(1254);

        mail.IsBodyHtml = false;

        mail.Priority = MailPriority.High;

        try
        {
            SmtpClient client = new SmtpClient();
            NetworkCredential guvenlikKarti = new NetworkCredential("omercsr1994@gmail.com", "05372026396");//Kendi mail adresimizi ve şifremizi yazdık
            client.Credentials = guvenlikKarti;
            client.Port = 587;
            client.Host = "smtp.gmail.com"; // Mail sunucumuzun adresini yazdık
            client.EnableSsl = true;
            client.Send(mail);
            lblSonuc.Text = "Mesajınız Gönderildi";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        catch
        {
            lblSonuc.Text = "Hata Oluştu";
        }

    }
}