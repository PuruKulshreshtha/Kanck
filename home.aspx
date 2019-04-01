<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="mimi2.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Name:</h2><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <h2>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <h2>Phone:</h2><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <h2>Dob:</h2>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <h2>Gender:</h2><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
                <asp:ListItem>other</asp:ListItem>
            </asp:DropDownList>
            <h2>Password:</h2>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="signup" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="fb" Width="53px" OnClick="Button2_Click" />
            <br />


        </div>
    </form>
</body>
</html>
