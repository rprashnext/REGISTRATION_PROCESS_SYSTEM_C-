using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
namespace WebApplication3
{
    public partial class Course_REG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_REG_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\source\repos\WebApplication3\WebApplication3\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into COURSE_REG(REGISTRATION_ID,CourseName,Courseduration)values(@REGISTRATION_ID,@CourseName,@Courseduration)", con);
            cmd.Parameters.AddWithValue("REGISTRATION_ID", TextREGISTRATION_ID.Text);
            cmd.Parameters.AddWithValue("CourseName", TextCourseName.Text);
            cmd.Parameters.AddWithValue("Courseduration", TextCourseduration.Text);
            cmd.ExecuteNonQuery();
            con.Close();
                Label3.Text = "COURSE REGISTERED SUCCESSFULLY" + TextREGISTRATION_ID.Text;
                Response.Redirect("~/View_Course_REG.aspx");
        }
    }
}