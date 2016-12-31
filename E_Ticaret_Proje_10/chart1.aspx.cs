using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chart1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        listedoldur();
    }

    protected void listedoldur()
    {
        MySqlConnection cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString);
        cnn.Open();

        MySqlDataAdapter da = new MySqlDataAdapter("select * from kullanicitablo", cnn);
        MySqlCommand cmd = new MySqlCommand();

                DataSet ds = new DataSet();
                da.Fill(ds, "kadi");

                DropDownList1.DataSource = ds.Tables[0];

                DropDownList1.DataTextField = ds.Tables[0].Columns[0].ToString();
              
                //DropDownList1.DataValueField = ds.Tables[0].Columns[0].ToString();
           
                DataBind();


                //foreach (ListItem li in DropDownList1.Items)
                //{
                //    TextBox1.Text = DropDownList1.SelectedItem.ToString();
                //}
                
    }
}