<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PolicPage.aspx.cs" Inherits="CrimeManagement.PolicPage" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 285px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            &nbsp;
            <asp:Button ID="ButMrders" runat="server" Text="Murders" />
&nbsp;
            <asp:Button ID="BuThefts" runat="server" Text="Thefts" />
&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Witness" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Search" />
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
            <br />
&nbsp;&nbsp;
            &nbsp;
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter a crime:"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Crime Type :"></asp:Label>
&nbsp;<asp:TextBox ID="CrimeTypeID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Time :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<br />
            <asp:Label ID="Label5" runat="server" Text="Date :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Details :"></asp:Label>
&nbsp;<asp:TextBox ID="DetailsID" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Save" Width="79px" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
