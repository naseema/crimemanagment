<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WitnessQ.aspx.cs" Inherits="CrimeManagement.WitnessQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            margin-left:35%;
            background-color:darkseagreen;
        }
        .style1{
            margin-left:18%;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Welcome " CssClass="style1"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="What crime do you want to talk about?"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Please answer the following questions:"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="TypeID" runat="server" Text="Type :" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="DropDownType" runat="server" Font-Size="Medium" Height="30px" Width="98px">
                <asp:ListItem>Murder</asp:ListItem>
                <asp:ListItem>Theft</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;<asp:Label ID="PlaceLabel" runat="server" Text="Place The Crime :" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="PlaceBox" runat="server" Height="26px" Width="160px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LabelTime" runat="server" Text="Time :" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TimeBox" runat="server" TextMode="Time" Height="26px" Width="160px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LabelDate" runat="server" Text="Date :" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="DateBox" runat="server" Height="26px" Width="160px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find Crime " BorderStyle="Solid" Font-Bold="True" Font-Size="Large" />
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="More details :" Visible="False" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="detailsBox" runat="server" Visible="false" Height="26px" Width="160px"></asp:TextBox>
            <br />
            <br />
             <asp:FileUpload ID="FileUpload1" runat="server" />  
        <p>  
            <asp:Button ID="FileBtn" runat="server" OnClick="Button1_Click" Text="Upload"/> 
            
            &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Label"></asp:Label>  
        </p>
            <asp:Button ID="SendBtn" runat="server" Text="Send" Visible="false" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Height="32px" Width="113px" OnClick="SendBtn_Click" />
            <br />
            
            <asp:GridView ID="GridView1" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="Delete">
                          <ItemTemplate>
                              <asp:Button ID="DeleteID" runat="server" Text="Delete" />
                          </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="ImageID" runat="server" Text="Add Image" />
        </div>
    </form>
</body>
</html>


