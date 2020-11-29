<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Suspects.aspx.cs" Inherits="CrimeManagement.Suspects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
             background-image:url('image0.jpg');
            background-size:cover; 
        }
       .Style{
           margin-left:35%;
           margin-top:12%;
       }
       .Style2{
           margin-left:20%;
       }
       #Button1{
           border: 5px solid #555;
           border-radius: 100px;
           margin-left:8%;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Style">
            <asp:Label ID="Label1" runat="server" Text="Name :" Font-Bold="True" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SusName" runat="server" Height="25px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Age :" Font-Bold="True" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SusAge" runat="server" Height="25px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label3" runat="server" Text="ID :" Font-Bold="True" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SusID" runat="server" Height="25px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Text="Residence :" Font-Bold="True" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SusResidence" runat="server" Height="25px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label5" runat="server" Text="Social Status :" Font-Bold="True" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SusStatus" runat="server" Height="25px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Date :" Font-Bold="True" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="DateID" runat="server" Height="25px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Crime ID :" Font-Bold="True" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CrimeID" runat="server" Height="25px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Suspects" Font-Bold="True" BackColor="#999999" Height="37px" Width="189px" />
            <br />
            <br />
            <br />
            </div>

            <div class="Style2">
            <asp:GridView ID="GridSuspects" runat="server"
                OnRowCommand="graidSuspect_RowCommand" OnRowDeleting="graidSuspect_RowDeleting"
                OnSelectedIndexChanged="graidSuspect_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#333333" BorderStyle="Double" BorderWidth="5px" ForeColor="Black">
                <Columns>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="ButDelete" runat="server" Text="Delete"  CommandName="DeleteSuspect" CommandArgument='<%# Eval("ID") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
