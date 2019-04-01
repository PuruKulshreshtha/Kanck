<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="mimi2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center">Login</h1>
            <h2>UserEmail</h2>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <h2>Password</h2>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
