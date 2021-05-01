<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="WebApplication3.LOGIN" %>

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
                <div class="col-lg-12">
                    <h1 style="text-align:center;font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;color:white;background-color:royalblue">LOGIN FORM</h1>
                    <div class="container-lg" style="margin-left:15%">
                         <div class="col-lg-6" style="background-color:white;border-bottom:ridge">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextEMAIL" ForeColor="Red"></asp:RequiredFieldValidator>
                             <asp:Label ID="Label1"  runat="server" Text="EMAIL:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder"></asp:Label>
                             <asp:TextBox ID="TextEMAIL" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                             <br />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextPASSWORD" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:Label ID="Label2"  runat="server" Text="PASSWORD:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder"></asp:Label>
                             <asp:TextBox ID="TextPASSWORD" CssClass="form-control" TextMode="Password"  runat="server"></asp:TextBox>
                            <br />
                             <asp:Button ID="Btn_SUB" CssClass=" btn btn-primary btn-block" runat="server" Text="LOG_IN" OnClick="Btn_SUB_Click" />
                             <br />
                             <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                       </div>  
                </div>
                    <asp:Panel ID="Panel1" runat="server">
                        <a href="REG.aspx">REGISTRATION</a>
                    </asp:Panel>

            </div>
        </div>
    </div>
    </form>
</body>
</html>
