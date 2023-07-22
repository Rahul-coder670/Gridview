<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataListControl.aspx.cs" Inherits="GridView.DataListControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:DataList ID="DataList1" runat="server" BorderStyle="Solid" GridLines="Both" RepeatColumns="3">
                 <ItemTemplate>
        <table class = "table">
            <tr>
                <th colspan="2">
                    <b><%# Eval("Name") %></b>
                </th>
            </tr>
            <tr>
                <td colspan="2">
                    <%# Eval("Email") %>,
                    <%# Eval("City") %><br />
                   
                </td>
            </tr>
           
           
        </table>
    </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
