<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WitnessQ.aspx.cs" Inherits="CrimeManagement.WitnessQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            margin-left:38%;
            background-image:url('image8.jpg');
            background-size: cover;
        }
        .style1{
            margin-left:18%;
            
        }
        #Image1{
            float:right;
            margin-top:33%;
        }
        #Label5,#Label3,#Label4,#TypeID,#PlaceLabel,#LabelTime,#LabelDate,#Label2{
            background-color:lightgrey;
            color:black;
            border-radius: 5px 5px 5px 5px;
            cursor:pointer;
            position:relative;
            padding:4px;
            font-family: san-serif;
            border:none;
            font-size:16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Welcome " CssClass="style1"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Please answer the following questions:"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="What crime do you want to talk about?"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="TypeID" runat="server" Text="Type :" Font-Size="Larger" Font-Bold="True" Font-Names="Dutch801 XBd BT"></asp:Label>
            <asp:DropDownList ID="DropDownType" runat="server" Font-Size="Medium" Height="30px" Width="98px">
                <asp:ListItem>Murder</asp:ListItem>
                <asp:ListItem>Theft</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;<asp:Label ID="PlaceLabel" runat="server" Text="Place The Crime :" Font-Size="Larger" Font-Bold="True" Font-Names="Dutch801 XBd BT"></asp:Label>
            <asp:TextBox ID="PlaceBox" runat="server" Height="26px" Width="160px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LabelTime" runat="server" Text="Time :" Font-Size="Larger" Font-Bold="True" Font-Names="Dutch801 XBd BT"></asp:Label>
            <asp:TextBox ID="TimeBox" runat="server" TextMode="Time" Height="26px" Width="160px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LabelDate" runat="server" Text="Date :" Font-Size="Larger" Font-Bold="True" Font-Names="Dutch801 XBd BT"></asp:Label>
            <asp:TextBox ID="DateBox" runat="server" Height="26px" Width="160px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find Crime " BorderStyle="Solid" Font-Bold="True" Font-Size="Large" />
           &nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="cancel"  BorderStyle="Solid" Font-Bold="True" Font-Size="Large" OnClick="Button2_Click" Width="109px" />
            <br />
            <br />

        <asp:Label ID="Label2" runat="server" Text="More details :" Visible="False" Font-Size="Larger" Font-Bold="True" Font-Names="Dutch801 XBd BT"></asp:Label>
        <asp:TextBox ID="detailsBox" runat="server" Visible="false" Height="68px" Width="254px"></asp:TextBox>
        <br/>
        <asp:FileUpload Visible="false"  ID="FileUpload1" runat="server" onchange="this.form.submit()"/>
        <%--
            <asp:Button ID="FileBtn" runat="server" OnClick="Button1_Click" Text="Upload"/> 
            --%>

        <br/>
        <asp:Image ID="ImageContainer" runat="server" style="max-height:150px;"/>
        <br/>
        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text=""/>

        <asp:Button ID="SendBtn" runat="server" Text="Send" Visible="false" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Height="32px" Width="113px" OnClick="SendBtn_Click"/>
        <br/>
        
        <br/>
        <%-- <asp:Button ID="ImageID" runat="server" Text="Add Image"/> --%>

    </div>
</form>
</body>
</html>