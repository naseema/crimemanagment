<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Suspects.aspx.cs" Inherits="CrimeManagement.Suspects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
            <asp:TextBox ID="SusName" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label2" runat="server" Text="Age :"></asp:Label>
            <asp:TextBox ID="SusAge" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label3" runat="server" Text="ID :"></asp:Label>
            <asp:TextBox ID="SusID" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label4" runat="server" Text="Residence :"></asp:Label>
            <asp:TextBox ID="SusResidence" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label5" runat="server" Text="Social Status :"></asp:Label>
            <asp:TextBox ID="SusStatus" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Date :"></asp:Label>
            <asp:TextBox ID="DateID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Crime ID :"></asp:Label>
            <asp:TextBox ID="CrimeID" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Suspects" />
            <br />

            <asp:GridView ID="GridSuspects" runat="server"
                OnRowCommand="graidSuspect_RowCommand" OnRowDeleting="graidSuspect_RowDeleting"
                OnSelectedIndexChanged="graidSuspect_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="ButDelete" runat="server" Text="Delete" CommandArgument='<%# Eval("ID") %>'  CommandName="DeleteSuspect"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
