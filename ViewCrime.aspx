<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCrime.aspx.cs" Inherits="CrimeManagement.ViewCrime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 247px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="ID Crime"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:GridView ID="GridViewCrime" runat="server" DataKeyNames="CID"
                OnRowDeleting="gridViewCrime_OnRowDeleting" 
                OnSelectedIndexChanged="gridViewCrime_SelectedIndexChanged" OnRowCommand="gridViewCrime_RowCommand">
                <Columns>
                    <asp:CommandField HeaderText="Update" ShowSelectButton="True" />
                    <asp:CommandField HeaderText="Delete" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
