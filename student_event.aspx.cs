using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class student_event : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select id,event_name,event_type,event_date,event_time from event_details", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String id = GridView2.SelectedRow.Cells[1].Text;
        Session["id"] = id;
        String uu = Session["uname"] as string;
        con.Open();
        cmd = new SqlCommand("select * from student_booking  where roll_no='" + uu + "' and event_id='" + id + "' ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Response.Write("<Script> alert('Already Registered') </Script>"); 
        }
        else
        {
            Response.Redirect("student_event_1.aspx");
            
        }
        con.Close();
       
    }
}