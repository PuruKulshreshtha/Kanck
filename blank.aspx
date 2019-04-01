<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blank.aspx.cs" Inherits="mimi2.blank" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            hello bro
            <table>

            
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" /><br />
                            <asp:Label ID="Label1" runat="server" text='<%# Eval("C_Name") %>'></asp:Label>
                        </td>
                    </tr>
                    
                                                       </ItemTemplate>

            </asp:Repeater>

            </table>
            
        </div>
    </form>
</body>
</html>
