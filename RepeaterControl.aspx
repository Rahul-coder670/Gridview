<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterControl.aspx.cs" Inherits="GridView.RepeaterControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>  
                <table class="tblcolor">  
                    <tr> <b>   <td>  Name   </td>                             
                            <td>  Email </td>                              
                            <td> City </td> 
                          </b> 
                        </tr>                         
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr class="tblrowcolor">  
                    <td> <%#  Eval("Name")%>  </td>  
                    <td> <%#  Eval("Email")%> </td>  
                    <td  <%#  Eval("City")%>  </td>  
                </tr>  
            </ItemTemplate> 
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
