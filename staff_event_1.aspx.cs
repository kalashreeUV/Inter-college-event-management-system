using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class staff_event_1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|Datadirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        String id = Session["id"] as string;
        cmd = new SqlCommand("select id	,event_name,contact,email,student_name,roll_no,college,department,year	 from student_booking where event_id='" + id + "'", con);
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