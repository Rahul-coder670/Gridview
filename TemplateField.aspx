<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TemplateField.aspx.cs" Inherits="GridView.TemplateField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                 <Columns>
                      <asp:BoundField HeaderText="EMP ID" DataField="Id" HeaderStyle-BackColor="Red" ItemStyle-BackColor="Green" />
                      <asp:TemplateField HeaderText="EMP Name">
                           <ItemTemplate>
                              <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("name") %>'></asp:LinkButton>
                           </ItemTemplate>
                      </asp:TemplateField>
                      <asp:BoundField HeaderText="EMP Email" DataField="Email" />
                      <asp:BoundField HeaderText="EMP City" DataField="City" />                       
                   </Columns>                 
            </asp:GridView>
        </div>
    </form>
</body>
</html>
