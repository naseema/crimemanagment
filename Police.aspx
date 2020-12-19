<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Police.aspx.cs" Inherits="CrimeManagement.Police" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
           
        }
        body{
             background-image:url('image7.jpg');
            background-size:cover; 
        }
        #Button4 , #SearchID{
           float:right;
        }
        #grid_crimes{
            margin-left:35%;
            margin-top:-25%;
            border:none;

        }
        #CrimeByCity{
            margin-left:40%;
        }
        #Label6{
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
        #btndelete{
            border-color:#333333;
            background-color:#666666;
            color:white;
        }
        #Image1{
            margin-left:45%;
            margin-top:-5%;
            border-radius: 5px 5px 5px 5px;
            border:none;
        }
        .Style1{
            background-color:#336699;
        }
        .Style2{
            color:#003366;
        }
        #Image2{
            width: 3%;
            height:2%;
            float:left;
            border:none;
            border-radius: 100px;
        }
        #PoliceName{
            margin-top:0.5%;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <%--<asp:Label ID="Pname" runat="server" Text="Welcome User :" Font-Bold="True" Font-Size="Larger"></asp:Label>--%>
          <asp:Image ID="Image2" runat="server" src="image17.jpg" />
       &nbsp; <asp:TextBox ID="PoliceName" runat="server" Height="26px" Enabled="False" Width="84px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Text="Search Crime" OnClick="Button4_Click" BackColor="#666666" BorderColor="#333333" BorderStyle="Solid" Font-Names="Franklin Gothic Demi" Font-Size="Medium" ForeColor="White" Height="28px" Width="110px"/>
        <asp:TextBox ID="SearchID" runat="server" Width="198px" BorderStyle="Solid" Height="20px" CssClass="auto-style1"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" BackColor="#666666" BorderColor="#333333" BorderStyle="Solid" Font-Names="Franklin Gothic Demi" Font-Size="Medium" ForeColor="White" Height="33px" OnClick="Button6_Click" Text="Suspects Page" Width="150px" />
         &nbsp;<br />
         <br />
        <asp:Image ID="Image1" runat="server" src="imageP1.jpg" Height="200px" Width="200px" />
        <br/>
        <br />
        <br />
        <br/>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Introducing a new crime : " ForeColor="Black" Font-Bold="True" Font-Italic="False" Font-Names="Franklin Gothic Demi Cond" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="Label1" runat="server" Text="Crime Type :" ForeColor="Black" Font-Bold="True" Font-Italic="False" Font-Names="Franklin Gothic Demi Cond" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"></asp:Label>
        &nbsp;&nbsp;<asp:DropDownList ID="TB_CrimeType" runat="server" Height="30px" Width="100px">
            <asp:ListItem>Murder</asp:ListItem>
            <asp:ListItem>Theft</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Time :" ForeColor="Black" Font-Bold="True" Font-Names="Franklin Gothic Demi Cond"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TimeID" runat="server" TextMode="Time" Height="22px" Width="120px" ></asp:TextBox>
        <br />
        <br/>
         &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="Date :" ForeColor="Black" Font-Bold="True" Font-Names="Franklin Gothic Demi Cond"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="DateID" runat="server" TextMode="Date" Height="22px" Width="124px"></asp:TextBox>
        <br />
        <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Text="Place :" ForeColor="Black" Font-Bold="True" Font-Names="Franklin Gothic Demi Cond"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PlaceID" runat="server" Height="22px" Width="121px"></asp:TextBox>
        <br />
        <br/>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Text="Details:" ForeColor="Black" Font-Bold="True" Font-Names="Franklin Gothic Demi Cond"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TB_Details" runat="server" Height="22px" Width="124px"></asp:TextBox>
        <br />
        <br/>
        <br />
         &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="Button5" runat="server" Text="Add Crime" OnClick="Button5_Click" BackColor="#666666" BorderColor="#333333" BorderStyle="Solid" ForeColor="White" Height="33px" Width="150px" Font-Names="Franklin Gothic Demi" Font-Size="Medium"/>


        <%-- Crimes --%>

        <asp:GridView id="grid_crimes" runat="server"
                      OnRowCommand="GridCrimes_RowCommand"
                      OnRowDeleting="GridCrimes_OnRowDeleting" OnSelectedIndexChanged="grid_crimes_SelectedIndexChanged" ForeColor="Black" Height="200px" Width="300px" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" BorderColor="#003366" BorderStyle="Double">
            <Columns>

                <asp:HyperLinkField Text="View"
                                    DataNavigateUrlFields="ID" ControlStyle-CssClass="Style2"
                                    DataNavigateUrlFormatString="~/ViewCrime.aspx?id={0}"/>


                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button runat="server" ID="btndelete" CssClass="Style1" Text="Delete" CommandArgument='<%# Eval("ID") %>' CommandName="DeleteCrime"/>
                    </ItemTemplate>
                </asp:TemplateField>

                <%--add other data fields here--%>
            </Columns>

            <EditRowStyle Font-Bold="True" />

            <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Size="Medium" ForeColor="White" />
            <RowStyle BackColor="#CCCCCC" />

        </asp:GridView>
        <br />

            <asp:GridView id="CrimeByCity" runat="server"
                   ForeColor="Black" Height="200px" Width="300px" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" BorderColor="#003366" BorderStyle="Double">
        
                <Columns>
                    <asp:BoundField DataField="crime_ratio" DataFormatString="{0:0.00}% " HeaderText="crime_ratio" />

                </Columns>
                 <EditRowStyle Font-Bold="True" />

            <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Size="Medium" ForeColor="White" />
            <RowStyle BackColor="#CCCCCC" />
        </asp:GridView>
    </div>
</form>
</body>
</html>