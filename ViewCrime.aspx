<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCrime.aspx.cs" Inherits="CrimeManagement.ViewCrime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 247px;
        }
        body{
            background-color: lightsteelblue;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="auto-style1">
        <br/>
        <asp:Label ID="Label1" runat="server" Text="Crime ID :" Font-Bold="True" ForeColor="Black"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Bold="False"></asp:TextBox>
        <br/>
        <asp:Label ID="Label2" runat="server" Text="Details :" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br/>
        &nbsp;<asp:Label ID="Label3" runat="server" Text="Place :" Font-Bold="True"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Time :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br/>

        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Date :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

        <br/>
        <br />
        <asp:Label ID="Label6" runat="server" Text="The sayings of the witnesses" Font-Bold="True" Font-Names="Rockwell Condensed" Font-Size="Large"></asp:Label>
        <br />
        <br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC">
            <Columns>

                <%--<asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button ID="ButDelete" runat="server" Text="Delete"/>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Details" HeaderText="Details" />
                <asp:TemplateField HeaderText="IMG">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Visible='<%# Eval("wimage").ToString().Length > 0 %>'  ImageUrl='<%# "data:image;base64, " + Eval("wimage") %>' style="max-height:50px;"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br/>
        <br/>
    

        <br/>

                <%-- Add suspects--%>
        <asp:Label ID="Label7" runat="server" Text="Search and Add new suspect to this crime" Font-Bold="True" Font-Names="Rockwell Condensed" Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="FilterSusbectTB" runat="server" OnTextChanged="FilterSusbectTB_TextChanged" placeholder="Search suspect by name"
                     AutoPostBack="true"/>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridViewAddSuspects" runat="server" OnRowCommand="Suspects_RowCommand" BorderColor="Black" BackColor="#CCCCCC">
            <Columns>
                <asp:TemplateField HeaderText="Add Suspect">
                    <ItemTemplate>
                        <asp:Button ID="ButAddSuspect" runat="server" Text="Add" CommandName="AddSuspect" CommandArgument='<%# Eval("ID") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <br/>
        <%-- Show suspects--%>
        <br/>
      
        <asp:GridView ID="GridViewSuspects" runat="server" OnRowCommand="Suspects_RowCommand" BorderColor="Black" BackColor="#CCCCCC">
            <Columns>
                <asp:TemplateField HeaderText="Delete Suspect">
                    <ItemTemplate>
                        <asp:Button ID="ButDeleteSuspect" runat="server" Text="Delete" CommandName="DeleteSuspect" CommandArgument='<%# Eval("crimeId") + "," + Eval("SuspectsID") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ChangeCommitStatus">
                    <ItemTemplate>
                        <asp:Button ID="ChangeCommitStatus" runat="server" Text='<%# int.Parse(Eval("is_committed").ToString()) == 0 ? "Change to  committed" : " Change to uncommitted"  %>' CommandName="ChangeCommitStatus" CommandArgument='<%# Eval("crimeId") + "," + Eval("SuspectsID") + "," + Eval("is_committed") %>'/>
                        
                        <%--
                        <asp:CheckBox ID="ChangeCommitStatusc" runat="server" Checked='<%# int.Parse(Eval("is_committed").ToString()) == 0 ? false : true  %>' runat="server" OnCheckedChanged="chkApproved_CheckedChanged" AutoPostBack="true"  Text="IsCommited" CommandName="ChangeCommitStatus" CommandArgument='<%# Eval("crimeId") + "," + Eval("SuspectsID") + "," + Eval("is_committed") %>'/>
                        --%>
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</form>
</body>
</html>