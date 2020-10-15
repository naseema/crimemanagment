<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WitnessQ.aspx.cs" Inherits="CrimeManagement.WitnessQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome User !<br />
            What crime do you want to talk about?<br />
            Please answer the following questions:<br />
            <br />
            <asp:Label ID="LabelTypeC" runat="server" Text="Type The Crime :"></asp:Label>
            <br />
            <asp:CheckBox ID="MurderBox" runat="server" Text="Murders" />
            <br />
            <asp:CheckBox ID="TheftBox" runat="server" Text="Thefts" />
            <br />
            <br />
&nbsp;<asp:Label ID="PlaceLabel" runat="server" Text="Place The Crime :"></asp:Label>
            <asp:TextBox ID="PlaceBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LabelTime" runat="server" Text="Time :"></asp:Label>
            <asp:TextBox ID="TimeBox" runat="server" TextMode="Time"></asp:TextBox>
            <br />
            <asp:Label ID="LabelDate" runat="server" Text="Date :"></asp:Label>
            <asp:TextBox ID="DateBox" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go To The Second Page " />
            <br />
        </div>
    </form>
</body>
</html>
