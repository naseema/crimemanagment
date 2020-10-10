<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Police.aspx.cs" Inherits="CrimeManagement.Police" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Murders" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Thefts" />
&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Witness" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Search" />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="198px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Crime Type :"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Time :"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Date :"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Details:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" Text="Add Crime" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Crime Type" DataField="Crime Type" />
                    <asp:BoundField HeaderText="Location" DataField="Location" />
                    <asp:BoundField HeaderText="Date" DataField="Date" />
                    <asp:BoundField HeaderText="Time" DataField="Time" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Crime]"></asp:SqlDataSource>
            <br />
        </div>

    </form>
</body>
</html>
