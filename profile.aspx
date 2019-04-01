<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="mimi2.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div runat="server">
            <h1 runat="server">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;Enter the mail for forget</h1>
            <h1>&nbsp;</h1>
            <h1>HelllOOOO!!!!</h1>
            <p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Forget Password" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="change Password" OnClick="Button2_Click" />
            </p>
        </div>
    </form>
</body>
</html>
