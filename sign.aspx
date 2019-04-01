<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign.aspx.cs" Inherits="mimi2.sign.sign" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Sign Up</title>
<style runat="server">

body{
margin: 0;
padding: 0;
border-radius:26px;
font-family:sans-serif;

}

.registration{
    position:absolute;
width:380px;
display:block;
border-radius:50px;
padding:10px;

top:50%;
left:50%;
transform:translate(-50%,-50%);
text-align:center;
background:#413c0b;
text-align:center;
color:white;
border:2px ;
}

.registration h1{
color:white;
font-family: Gloria Hallelujah cursive;
text-transform:uppercase;
font-weight:10000;

}


.registration input[type="text"], .registration input[type="password"],.registration input[type="email"]
{
border:0;
background:none;
display:block;
margin:6px auto;
text-align:center;
border:2px solid #3498db;
padding:14px 10px;
width:300px;
outline:none;
color:white;
border-radius:24px;
transition:0.25s;
}

.registration input[type="text"]:focus, .registration input[type="password"]:focus,.registration input[type="email"]:focus
{
width:350px;
border-color:#2ecc71;
}
.button{
border:0;
background: #413c0b;
display:block;
margin:8px auto;
text-align:center;
border:2px solid #3498db;
padding:10px 40px;
width:150px;
outline:none;
color:white;
border-radius:24px;
transition:0.25s;

}
.button:hover
{
background-color:powderblue;
font-weight:bold;
color:black;
font-family: Gloria Hallelujah cursive;
text-transform:uppercase;
}



</style>

</head>
<body runat="server" >
<img src="images/bg-01.jpg" style="position:fixed" height="100%" width="100%">
<div class="registration" runat="server" >
<form class="registration"  runat="server">
<h1>Sign Up</h1>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox><br>

    <asp:TextBox ID="TextBox2" runat="server" placeholder="E-mail"></asp:TextBox><br>

    <asp:TextBox ID="TextBox3" runat="server" placeholder="Mobile number"  maxlength="10"></asp:TextBox><br>

    <asp:TextBox ID="TextBox4" runat="server" placeholder="dd/mm/yyyy"  maxlength="10" required="required" title="Date Of Birth Required"></asp:TextBox><br>

    <asp:TextBox ID="TextBox5" runat="server" type="password"  placeholder="Password"></asp:TextBox><br>

    <asp:TextBox ID="TextBox6" runat="server" type="password"  placeholder="Confirm Password"></asp:TextBox><br>

    
        
    <asp:RadioButton ID="Male" runat="server" Text="Male" GroupName="1" />&nbsp;&nbsp;

    
        

    <asp:RadioButton ID="Female" runat="server" Text="Female" GroupName="1" />&nbsp;&nbsp;
    <asp:RadioButton ID="Others" runat="server" Text="Others" GroupName="1" />&nbsp;&nbsp;<br />

    
        

    <asp:CheckBox ID="CheckBox1" runat="server" /><span>I agree all the <a href="ppp" style="color:white;">terms and conditions</a>.</span><br>
    <asp:Button ID="Button1" CssClass="button" runat="server" Text="Submit" OnClick="Button1_Click" />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</form> 
</div>
</body>
</html>
