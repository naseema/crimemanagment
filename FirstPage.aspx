<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="CrimeManagement.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin-top: 15%;
            font-size: 30px;
            text-align: center;
            background-image:url('image6.jpg');
            background-size:cover; 
        }
        #BtnWitness , #BtnPolice {
            margin: 90px 100px;
            width: 200px;
            height: 50px;
            background-color:cornflowerblue;
            border: black;
            font-family: "Times New Roman";
            font-size: 20px;
            margin-top: 10%;
        }
        #Label1 {
            margin-left:30%;
            margin-right:35%;
            text-shadow: 2px 2px 5px blue;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Are You Police Or Witness?" ForeColor="White"></asp:Label>
            <asp:Button ID="BtnPolice" runat="server" Text="Police" OnClick="BtnPolice_Click" />
            <asp:Button ID="BtnWitness" runat="server" Text="Witness" OnClick="BtnWitness_Click" />
        </div>
    </form>
</body>
</html>
