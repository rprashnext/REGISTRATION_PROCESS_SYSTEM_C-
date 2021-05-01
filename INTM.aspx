<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INTM.aspx.cs" Inherits="WebApplication3.INTM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>STUDENT</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Content/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
    </style>
</head>
<body style="background-color:gainsboro">
    <form id="form1" runat="server">
        <div class="container-lg">
            <div class="row">
                <div class="col-lg-12" style="margin-left:41%;margin-bottom:145%">
                    <asp:Button ID="Btn_CR" CssClass="btn  btn-primary btn-block" runat="server" Text="Course_REG" OnClick="Btn_CR_Click" />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Btn_VCR" CssClass="btn btn-success btn-block" runat="server" Text="View_Course_REG" OnClick="Btn_VCR_Click" />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Btn_LOGOUT" CssClass="btn  btn-danger  btn-block" runat="server" Text="LOGOUT" OnClick="Btn_LOGOUT_Click" />
                    <br />
                    <br />
                    <br />
        </div>
      </div>
    </div>
    </form>
</body>
</html>
