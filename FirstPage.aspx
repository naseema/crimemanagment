<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="CrimeManagement.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
          font-family: cursive;
            font-size: 30px;
            text-align: center;
            background-color:lightgray;
        }
        #BtnWitness , #BtnPolice {
            margin: 90px 100px;
            width: 200px;
            height: 50px;
            background-color:cornflowerblue;
            border: black;
            font-family: "Times New Roman";
            font-size: 20px;
        }
        #Image1{
              width: 20%;
              height:20%;
              margin-top:30px;
              padding: 20px;
              float: right;
        }
        #Label1 {
            margin-left:20%;
            margin-right:35%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Are You Police Or Witness?"></asp:Label>
            <asp:Image ID="Image1" runat="server" 
                 src="https://www.gov.il/BlobFolder/news/police_assistant_commissioners_appointments2018/he/%D7%A1%D7%9E%D7%9C%20%D7%9E%D7%A9%D7%98%D7%A8%D7%94%20%D7%A8%D7%99%D7%91%D7%95%D7%A2.jpg"/>
               
            <asp:Button ID="BtnPolice" runat="server" Text="Police" OnClick="BtnPolice_Click" />
            <asp:Button ID="BtnWitness" runat="server" Text="Witness" OnClick="BtnWitness_Click" />
        </div>
    </form>
</body>
</html>
