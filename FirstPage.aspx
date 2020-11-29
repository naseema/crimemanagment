<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="CrimeManagement.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin-top: 10%;
            font-size: 30px;
            text-align: center;
            background-image:url('image5.jpg');
            background-size:cover; 
        }
        #BtnWitness , #BtnPolice {
            margin: 90px 100px;
            width: 200px;
            height: 50px;
            background-color: darkseagreen;
            border-radius: 30px;
            border: black;
            font-family: "Times New Roman";
            font-size: 20px;
            margin-top: 5%;
        }
        #Label1 {
            margin-left:35%;
            margin-right:35%; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Are You Police Or Witness?" ForeColor="Black" Font-Bold="True"></asp:Label>
            <asp:Button ID="BtnPolice" runat="server" Text="Police" OnClick="BtnPolice_Click" />
            <asp:Button ID="BtnWitness" runat="server" Text="Witness" OnClick="BtnWitness_Click" />
        </div>
    </form>
</body>
</html>
