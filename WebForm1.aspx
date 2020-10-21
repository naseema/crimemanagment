<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CrimeManagement.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
  <form id="form1" runat="server">  
    <div>  
      
    </div>  
        <asp:FileUpload ID="FileUpload1" runat="server" />  
        <p>  
            <asp:Button ID="FileBtn" runat="server" OnClick="Button1_Click" Text="Upload"/> 
            
            &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Label"></asp:Label>  
        </p>
    </form>
</body>
</html>
