using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class admin_event_new : System.Web.UI.Page
{
    int n;
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select count(*) as count from event_details", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            n = Convert.ToInt32(dr["count"].ToString());

        }
        dr.Close();

        int j = 1;
        int k = j + n;
        //String cname = Session["cname"] as String;
        cmd = new SqlCommand("insert into event_details values('" + k + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','0','0')", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Details saved sucessfully');window.location ='admin_home.aspx';",
true);
        // Response.Write("<Script> alert('Your details Are Saved!')</Script>");
        // Response.Redirect("user.aspx");
        con.Close();
    }
}