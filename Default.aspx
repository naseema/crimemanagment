<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CrimeManagement.Default" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Full Name
                </td>
                <td>
                    <asp:TextBox ID="fullname_tv" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                    Username
                </td>
                <td>
                    <asp:TextBox ID="username_tv" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="password_tv" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Label id="results" runat="server" Text=""/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button id="Button1" runat="server" Text="SignUp new user" OnClick="Button1_Click"/>
                    <asp:Button id="Button2" runat="server" Text="Login" OnClick="Button2_Click"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button id="ShowAllUsers" runat="server" Text="Show All Users" OnClick="ShowAllUsers_Click"/>
                    <asp:Button id="ShowAllCrimes" runat="server" Text="Show All Crimes" OnClick="ShowAllCrimes_Click"/>
                    <asp:Button id="ShowAllCrimesReports" runat="server" Text="Show All Crimes Reports" OnClick="ShowAllCrimesReports_Click"/>
                </td>
            </tr>
        </table>

        <br/>

        <asp:GridView id="grid_users" runat="server">
        </asp:GridView>

        <br/>


        <asp:TextBox ID="SearchCrimeTB" placeholder="Enter crime desciption..." runat="server"/>
        
        <asp:Button id="SearchCrime" runat="server" Text="Search" OnClick="SearchCrime_Click"/>


        <%-- Crimes --%>

        <asp:GridView id="grid_crimes" runat="server" AutoGenerateColumns="true"
                      OnRowCommand="GridCrimes_RowCommand"
                      OnRowDeleting="GridCrimes_OnRowDeleting">
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

        <asp:GridView id="grid" runat="server"/>

    </div>
</form>
</body>
</html>