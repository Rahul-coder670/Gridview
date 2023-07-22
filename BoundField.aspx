<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoundField.aspx.cs" Inherits="GridView.BoundField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
             <Columns>
                      <asp:BoundField HeaderText="EMP ID" DataField="Id" />
                      <asp:BoundField HeaderText="EMP Name" DataField="Name" />
                      <asp:BoundField HeaderText="EMP Email" DataField="Email" />
                      <asp:BoundField HeaderText="EMP City" DataField="City" />
                       
                    </Columns> 
        </asp:GridView>
    </form>
</body>
</html>
