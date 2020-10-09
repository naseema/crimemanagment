<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Witness.aspx.cs" Inherits="CrimeManagement.Witness" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color: antiquewhite;
        }
        #Label2{
            font-size: x-large;
            font-family: 'Times New Roman', Times, serif;
        }
        #Label1 , #Label3 , #Label4 , #Label5 {
            margin-left:35%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="The crime you want to talk about:"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name or type of crime"></asp:Label>
            <asp:TextBox ID="Textplace" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="A place of crime"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="date and time"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Other"></asp:Label>

            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
     
            <br />
            <br />
     
        </div>
    </form>
</body>
</html>
