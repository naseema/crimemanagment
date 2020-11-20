<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CrimeManagment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:powderblue;
        }
        #Image1{
              width: 15%;
              height:15%;
              margin-top:1%;
              padding: 20px;
              border: 2px solid white;
              border-radius: 5px;
              margin-left: 42%;
              
        }
        #btnLogin{
            margin-left:90%;
            margin-top:30%;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <table style="margin:auto;/*border:5px solid white;*/padding:30px">
            <asp:Image ID="Image1" runat="server"
                 src="https://www.gov.il/BlobFolder/news/police_assistant_commissioners_appointments2018/he/%D7%A1%D7%9E%D7%9C%20%D7%9E%D7%A9%D7%98%D7%A8%D7%94%20%D7%A8%D7%99%D7%91%D7%95%D7%A2.jpg"/>
               
           
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="UserName" Font-Size="X-Large" Font-Bold="True"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtUserName" runat="server" Height="20px" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Password" Font-Size="X-Large" Font-Bold="True"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Height="20px" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="77px" Height="30px" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" ForeColor="Black"/>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>