using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
public partial class student_event_1 : System.Web.UI.Page
{
    int n;
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        String id = Session["id"]as string;
        TextBox2.Text = Session["uname"] as string;
        con.Open();
        cmd = new SqlCommand("select * from event_details where id='" + Session["id"].ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Label1.Text = dr["id"].ToString();
            Label2.Text = dr["event_name"].ToString();
            Label3.Text = dr["co_ordinator"].ToString();
            Label4.Text = dr["event_type"].ToString();
            Label5.Text = dr["description"].ToString();
            Label6.Text = dr["event_date"].ToString();
            Label7.Text = dr["event_time"].ToString();
            Label8.Text = dr["contact"].ToString();
            Label9.Text = dr["email"].ToString();

        }
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        String name = Session["uname"] as String;
        con.Open();
        cmd = new SqlCommand("select count(*) as count from student_details", con);
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
        cmd = new SqlCommand("insert into student_booking values('" + k + "','" + Label1.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + Label4.Text + "','" + Label5.Text + "','" + Label6.Text + "','" + Label7.Text + "','" + Label8.Text + "','" + Label9.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','0','0')", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Register sucessfully');window.location ='student_home.aspx';",
true);
        // Response.Write("<Script> alert('Your details Are Saved!')</Script>");
        // Response.Redirect("user.aspx");
        con.Close();
    }
}