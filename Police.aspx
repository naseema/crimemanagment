<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Police.aspx.cs" Inherits="New.Police" %>

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
            <asp:Button ID="murdersBTn" runat="server" OnClick="murdersBTn_Click" Text="Murders" />
&nbsp;
            <asp:Button ID="theftsBTn" runat="server" OnClick="theftsBTn_Click" Text="Thefts" />
&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Witness claims" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="search "></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
            <br />
&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Welcome Mr"></asp:Label>
&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="What crime do you want to talk about:"></asp:Label>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Murders" />
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Thefts" />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Go" />
            <br />
        </div>
    </form>
</body>
</html>
