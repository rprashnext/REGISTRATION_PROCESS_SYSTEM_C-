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
    public partial class Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\source\repos\WebApplication3\WebApplication3\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TBL_REG2(Name,DOB,GENDER,MobileNo,Address,Email,RGN_DT,DistrictName,TalukName) values(@Name, @DOB, @GENDER,@MobileNo,@Address,@Email,@RGN_DT,@DistrictName,@TalukName)", con);
            cmd.Parameters.AddWithValue("Name", TextName.Text);
            cmd.Parameters.AddWithValue("DOB", TextDOB.Text);
            cmd.Parameters.AddWithValue("GENDER", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("MobileNo", TextMobileNo.Text);
            cmd.Parameters.AddWithValue("Address", TextAddress.Text);
            cmd.Parameters.AddWithValue("Email", TextEmail.Text);
            cmd.Parameters.AddWithValue("RGN_DT", TextRGN_DT.Text);
            cmd.Parameters.AddWithValue("DistrictName", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("TalukName", DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery();
            con.Close();
            Label10.Text = "Registration Successful" +TextRGN_DT.Text;
            Response.Redirect("~/LOGIN.aspx");
        }
    }
}