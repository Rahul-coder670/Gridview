<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowingDataFromDatabasetoGridView.aspx.cs" Inherits="GridView.ShowingDataFromDatabasetoGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <center> <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click" />
           <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Right">
           </asp:GridView>
        </center>
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Justify">
        </asp:GridView>
    </form>
</body>
</html>
