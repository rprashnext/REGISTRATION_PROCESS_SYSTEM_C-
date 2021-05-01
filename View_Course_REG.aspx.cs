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
using System.Data;
namespace WebApplication3
{
    public partial class View_Course_REG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!this.IsPostBack)
                {
                    DataTable dt = new DataTable();
                    dt.Columns.AddRange(new DataColumn[4] { new DataColumn("id", typeof(int)),
                        new DataColumn("REGISTRATION_ID", typeof(string)),
                        new DataColumn("CourseName",typeof(string)),
                        new DataColumn ("Courseduration",typeof(int))});
                    dt.Rows.Add(1, "10001", ".NET PROGRAMING",1);
                    dt.Rows.Add(2, "10002", "ELEMENTS OF WEB DESIGNING",1);
                    dt.Rows.Add(3, "10003", "Advanced Windows Programming",2);
                    dt.Rows.Add(4, "10004", "Android Ios Development", 3);
                    dt.Rows.Add(5, "10005", "Devops", 4);
                    dt.Rows.Add(6, "10006", "Javascript", 6);
                    ViewState["dt"] = dt;
                    BindGrid();
                }
            }
        }
        protected void BindGrid()
        {
            GridView1.DataSource = ViewState["dt"] as DataTable;
            GridView1.DataBind();
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[0].Text;
                foreach (Button button in e.Row.Cells[2].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                    }
                }
            }
        }
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            DataTable dt = ViewState["dt"] as DataTable;
            dt.Rows[index].Delete();
            ViewState["dt"] = dt;
            BindGrid();
        }
        protected void Btn_GoToGrid_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reports.aspx");
        }

    }
}