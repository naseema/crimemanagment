<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Police.aspx.cs" Inherits="CrimeManagement.Police" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <asp:Label ID="Pname" runat="server" Text="Welcome User :" Font-Bold="True" Font-Size="Larger"></asp:Label>

        <asp:TextBox ID="PoliceName" runat="server" Height="26px"></asp:TextBox>
        <br />
        <br />
        <br />

        <asp:Button ID="Button4" runat="server" Text="Search Crime" OnClick="Button4_Click" BackColor="#666666" BorderColor="#333333" BorderStyle="Solid" Font-Names="Franklin Gothic Demi" Font-Size="Medium" ForeColor="White" Height="28px" Width="110px"/>
        <asp:TextBox ID="SearchID" runat="server" Width="198px" BorderStyle="Solid" Height="20px" CssClass="auto-style1"></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="Label1" runat="server" Text="Crime Type :" ForeColor="Black" Font-Bold="True" Font-Italic="False" Font-Names="Franklin Gothic Demi Cond" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"></asp:Label>
        <asp:TextBox ID="TB_CrimeType" runat="server" Height="22px"></asp:TextBox>
        <br />
        <br/>
        <asp:Label ID="Label2" runat="server" Text="Time :" ForeColor="Black" Font-Bold="True" Font-Names="Franklin Gothic Demi Cond"></asp:Label>
        <asp:TextBox ID="TimeID" runat="server" Height="22px"></asp:TextBox>
        <br />
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Date :" ForeColor="Black" Font-Bold="True" Font-Names="Franklin Gothic Demi Cond"></asp:Label>
        <asp:TextBox ID="DateID" runat="server" Height="22px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Place :" ForeColor="Black" Font-Bold="True" Font-Names="Franklin Gothic Demi Cond"></asp:Label>
        <asp:TextBox ID="PlaceID" runat="server" Height="22px"></asp:TextBox>
        <br />
        <br/>
        <asp:Label ID="Label4" runat="server" Text="Details:" ForeColor="Black" Font-Bold="True" Font-Names="Franklin Gothic Demi Cond"></asp:Label>
        <asp:TextBox ID="TB_Details" runat="server" Height="22px"></asp:TextBox>
        <br/>
        <br/>
        <asp:Button ID="Button5" runat="server" Text="Add Crime" OnClick="Button5_Click" BackColor="#666666" BorderColor="#333333" BorderStyle="Solid" ForeColor="White" Height="33px" Width="150px" Font-Names="Franklin Gothic Demi" Font-Size="Medium"/>

        &nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" BackColor="#666666" BorderColor="#333333" BorderStyle="Solid" Font-Names="Franklin Gothic Demi" Font-Size="Medium" ForeColor="White" Height="33px" OnClick="Button6_Click" Text="Suspects Page" Width="150px" />

        <br/>
        <br/>

        <%-- Crimes --%>

        <asp:GridView id="grid_crimes" runat="server"
                      OnRowCommand="GridCrimes_RowCommand"
                      OnRowDeleting="GridCrimes_OnRowDeleting" OnSelectedIndexChanged="grid_crimes_SelectedIndexChanged" BackColor="#99CCFF" BorderColor="#666666" BorderStyle="Solid" ForeColor="Black" Height="200px" Width="300px">
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