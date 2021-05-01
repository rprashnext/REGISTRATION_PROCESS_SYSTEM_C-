<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REG.aspx.cs" Inherits="WebApplication3.Form1" %>

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
                    <h1 style="text-align:center;font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;color:white;background-color:royalblue">REGISTRATION FORM</h1>
                        <div class="container-lg" style="margin-left:25%">
                    <div class="col-lg-6" style="background-color:white">
                        <asp:Label ID="Label1" runat="server" Text="Name:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextName" ForeColor="Red"></asp:RequiredFieldValidator>
                          <br />
                        <asp:TextBox ID="TextName" CssClass="form-control" runat="server" ></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="DOB:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextDOB" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextDOB" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="GENDER:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                      <br />
                    <asp:Label ID="Label4" runat="server" Text="Mobile No:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextMobileNo" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextMobileNo" CssClass="form-control" TextMode="Phone" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Address:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextAddress" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Email:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextEmail" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="RGN_DT:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="TextRGN_DT" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextRGN_DT" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="DistrictName:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Select District Name" Value="select" Selected="True"> </asp:ListItem>
                            <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>
                            <asp:ListItem Text="Mysore" Value="Mysore"></asp:ListItem>
                            <asp:ListItem Text="HUbli" Value="Hubli"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="TalukName:" style="font-family:'Times New Roman';font-size:xx-large;font-weight:bolder;"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Select Taluk Name" Value="select" Selected="True"> </asp:ListItem>
                            <asp:ListItem Text="Trimakudalu" Value="Trimakudalu"></asp:ListItem>
                            <asp:ListItem Text="Narasipura" Value="Narasipura"></asp:ListItem>
                            <asp:ListItem Text="Nanjangud" Value="Nanjangud"></asp:ListItem>
                            <asp:ListItem>Sira</asp:ListItem>
                            <asp:ListItem>Madhughri</asp:ListItem>
                            <asp:ListItem>RR Nagar</asp:ListItem>
                            <asp:ListItem>Gubbi</asp:ListItem>
                            <asp:ListItem>Anekal</asp:ListItem>
                            <asp:ListItem>Krishnarajapuram</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Button ID="Button1" CssClass="btn-success btn-block"  runat="server" Text="Submit" OnClick="Button1_Click"  />
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                      </div>
                </div>
        </div>
    </form>
</body>
</html>
