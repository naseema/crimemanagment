<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CrimeManagment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:powderblue;
            margin-top:200px;

        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <table style="margin:auto;border:5px solid white;padding:30px">
           
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="UserName"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="login" OnClick="btnLogin_Click"/>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>