<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoginWithMSSql.Default" %>

<!DOCTYPE html>


<!-- https://www.youtube.com/watch?v=yBsl84hDtUg -->



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        Full Name
                    </td>
                    <td>
                        <asp:TextBox ID="fullname_tv" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Username
                    </td>
                    <td>
                        <asp:TextBox ID="username_tv" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password
                    </td>
                    <td>
                        <asp:TextBox ID="password_tv" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label id="results" runat="server" Text="" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button id="Button1" runat="server" Text="SignUp new user" OnClick="Button1_Click"/>
                        <asp:Button id="Button2" runat="server" Text="Login" OnClick="Button2_Click"/>
                    </td>
                </tr>
            </table>
            
            <br />

            <asp:GridView id="grid" runat="server"></asp:GridView>

        </div>
    </form>
</body>
</html>
