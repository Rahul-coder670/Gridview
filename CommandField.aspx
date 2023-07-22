<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommandField.aspx.cs" Inherits="GridView.CommandField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
                 <Columns>
                      <asp:BoundField HeaderText="EMP ID" DataField="Id" ReadOnly="true" />
                      <asp:BoundField HeaderText="EMP Name" DataField="Name" />
                      <asp:BoundField HeaderText="EMP Email" DataField="Email" />
                      <asp:BoundField HeaderText="EMP City" DataField="City" />
                      <asp:CommandField ShowEditButton="true" ShowDeleteButton="true"/>
                    </Columns> 
            </asp:GridView>
        </div>
    </form>
</body>
</html>
