<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paging.aspx.cs" Inherits="GridView.Paging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageIndex="8">
            </asp:GridView>
           <center> <asp:Button ID="Button1" runat="server" Text="Show GridView" OnClick="Button1_Click" /></center>
        </div>
    </form>
</body>
</html>
