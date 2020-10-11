<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Police.aspx.cs" Inherits="CrimeManagement.Police" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Murders"/>
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Thefts"/>
        &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Witness"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Search" OnClick="Button4_Click"/>
        &nbsp;<asp:TextBox ID="SearchID" runat="server" Width="198px"></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="Label1" runat="server" Text="Crime Type :"></asp:Label>
        <asp:TextBox ID="TB_CrimeType" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="Label2" runat="server" Text="Time :"></asp:Label>
        <asp:TextBox ID="TimeID" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Date :"></asp:Label>
        <asp:TextBox ID="DateID" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Place :"></asp:Label>
        <asp:TextBox ID="PlaceID" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="Label4" runat="server" Text="Details:"></asp:Label>
        <asp:TextBox ID="TB_Details" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Button ID="Button5" runat="server" Text="Add Crime" OnClick="Button5_Click"/>

        <br/>
        <br/>

        <%-- Crimes --%>

        <asp:GridView id="grid_crimes" runat="server"
                      OnRowCommand="GridCrimes_RowCommand"
                      OnRowDeleting="GridCrimes_OnRowDeleting" OnSelectedIndexChanged="grid_crimes_SelectedIndexChanged">
            <Columns>

                <asp:HyperLinkField Text="View"
                                    DataNavigateUrlFields="ID"
                                    DataNavigateUrlFormatString="~/ViewCrime.aspx?id={0}"/>


                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button runat="server" ID="btndelete" Text="Delete" CommandArgument='<%# Eval("ID") %>' CommandName="DeleteCrime"/>
                    </ItemTemplate>
                </asp:TemplateField>

                <%--add other data fields here--%>
            </Columns>

        </asp:GridView>
        <br />
    </div>
</form>
</body>
</html>