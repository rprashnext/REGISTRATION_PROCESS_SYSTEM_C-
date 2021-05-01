<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course_REG.aspx.cs" Inherits="WebApplication3.Course_REG" %>

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
                    <h1 style="text-align:center;font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;color:white;background-color:royalblue">COURSE REGISTRATION FORM</h1>
                        <div class="container-lg" style="margin-left:25%">
                    <div class="col-lg-6" style="background-color:white">
                        <asp:Label ID="Label1" runat="server" Text="REGISTRATION_ID:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextREGISTRATION_ID" ForeColor="Red"></asp:RequiredFieldValidator>
                          <br />
                        <asp:TextBox ID="TextREGISTRATION_ID" CssClass="form-control" TextMode="Number" runat="server" ></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="Course Name:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextCourseName" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextCourseName" CssClass="form-control" runat="server" ></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Course duration:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextCourseduration" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextCourseduration" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button ID="Btn_REG" CssClass="btn-success btn-block"  runat="server" Text="Submit" OnClick="Btn_REG_Click"   />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                      </div>
                </div>
        </div>
    </form>
</body>
</html>
