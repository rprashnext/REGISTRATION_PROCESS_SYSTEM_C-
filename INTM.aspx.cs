using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class INTM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_CR_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Course_REG.aspx");
        }

        protected void Btn_VCR_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View_Course_REG.aspx");
        }

        protected void Btn_LOGOUT_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LOGIN.aspx");
        }
    }
}