<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CrimeManagment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body{
            background-image:url('image3.jpg');
            background-size:cover; 
        }
       
        #Image2{
              width: 35%;
              height:45%;
              margin-top:-32%;
              padding: 20px;
              margin-left:26%;
              border: 0px solid #555;
              border-radius: 100px;
    
              
        }
        #btnLogin{
            margin-left:60%;
            margin-top:30%;
            border: 0px solid #555;
            border-radius: 100px;
            background-color:rgba(0, 57, 124, 0.8);
            
        }
          .Label2{
            margin-left:30%;
        }
        .loginbox{
            position: absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            width:400px;
            height:300px;
            padding:80px,40px;
            box-sizing:border-box;
            background: rgba(0, 75, 120, 0.5);
            border-radius: 5px 5px 5px 5px;
            border:none;
        }
    </style>
</head>
<body>
<form id="form1" runat="server"> 
    <div class="loginbox">
          <table style="margin:auto;/*border:5px solid white;*/padding:30px">
     <asp:Image ID="Image2" runat="server"
                src="imageP2.jpg"/>
              <br />
              <br />
     <asp:Label ID="Label2" runat="server" Text="Police Login" CssClass="Label2" Font-Size="X-Large" Font-Bold="True" ForeColor="black"></asp:Label>
             
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="UserName" Font-Size="X-Large" Font-Bold="True" ForeColor="black"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtUserName" runat="server" Height="20px" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Password" Font-Size="X-Large" Font-Bold="True" ForeColor="black"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Height="20px" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="150px" Height="30px" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" ForeColor="Black"/>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>