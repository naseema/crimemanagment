<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CrimeManagment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body{
            background-image:url('image1.jpg');
            background-size:cover; 
        }
        }
        #Image1{
              width: 35%;
              height:30%;
              margin-top:-25%;
              padding: 20px;
              margin-left: 30%;
              border: 0px solid #555;
              border-radius: 100px;
    
              
        }
        #btnLogin{
            margin-left:90%;
            margin-top:30%;
        }
        .loginbox{
            position: absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            width:350px;
            height:350px;
            padding:80px,40px;
            box-sizing:border-box;
            background: rgba(0,0,0,0.5);
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="loginbox">
        <table style="margin:auto;/*border:5px solid white;*/padding:30px">
            <asp:Image ID="Image1" runat="server"
                 src="imageP2.jpg"/>
        
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