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
    public partial class LOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_SUB_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\source\repos\WebApplication3\WebApplication3\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TBL_LOGIN3(EMAIL,PASSWORD)Values(@EMAIL,@PASSWORD)", con);
            cmd.Parameters.AddWithValue("EMAIL", TextEMAIL.Text);
            cmd.Parameters.AddWithValue("PASSWORD", TextPASSWORD.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label3.Text = "LOGIN SUCCESSFUL";
            Response.Redirect("~/INTM.aspx");
        }
    }
}