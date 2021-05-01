<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Course_REG.aspx.cs" Inherits="WebApplication3.View_Course_REG" %>

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
    </head>
<body style="background-color:gainsboro">
    <form id="form1" runat="server">
         <div class="container-lg" style="margin-left:5%;">
            <div class="row">
                <div class="col-lg-12" style="background-color:gainsboro;margin-top:15%">
                    <center>
                            <div>
           <asp:GridView ID="GridView1" CssClass = "Grid" runat="server" OnRowDeleting="OnRowDeleting" AutoGenerateColumns = "false" OnRowDataBound = "OnRowDataBound">
    <Columns>
        <asp:BoundField DataField="REGISTRATION_ID" HeaderText="REGISTRATION_ID" />
        <asp:BoundField DataField="CourseName" HeaderText="CourseName" />
        <asp:BoundField DataField="Courseduration" HeaderText="Courseduration" />
        <asp:CommandField ShowDeleteButton="true" ButtonType="Button" />
    </Columns>
     <HeaderStyle Font-Bold="true" Font-Size="XX-Large"  BackColor="Gainsboro" />
     <RowStyle Font-Bold="true" Font-Size="XX-Large" />
     <SortedAscendingCellStyle BackColor="AliceBlue" />
</asp:GridView>
                    </div>
                        </center>
                    <br />
                    <center><asp:Button ID="Btn_GoToGrid" CssClass="btn-primary" runat="server" Text="GoToGrid" OnClick="Btn_GoToGrid_Click" /></center>
                   </div>
             </div>
        </div>
    </form>
</body>
</html>
