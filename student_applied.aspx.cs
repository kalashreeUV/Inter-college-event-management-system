using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class student_applied : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        String uname = Session["uname"] as string;
        cmd = new SqlCommand("select event_id,event_name,co_ordinator,type,description,event_date,event_time,contact,email from student_booking where roll_no='" + uname + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}