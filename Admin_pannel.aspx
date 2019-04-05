<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_pannel.aspx.cs" Inherits="mimi2.Admin_pannel" %>

<html>
<head>
    <title>Admin Pannel</title>
<style type="text/css">
.container
{
width:380px;

color:pink;
border-radius:25px;
 font-family:"arial"

}

.container1
{
width:400px;
height:50%;

display:box;
background:grey;
color:dark pink;
border-radius:25px;
font-family:"Comic sans MSs"

}


.split
{
height:100%;
width:50%;
position:fixed;
z-index:1;
top:0;
overflow-x:hidden;
padding-top:20px;
}

.left
{
left:50%;
top:20%;
text-align:center;
left:0;

}

.right
{
right:0;

text-align:center;
top:30%;
color:white;

}
.container1 input[type="text"]
{
border:0;
background:white;
display:block;
margin:8px auto;
text-align:center;
border:2px solid #3498db;
padding:14px 10px;
width:300px;
outline:none;
color:black;
border-radius:24px;
transition:0.25s;
}

.container1 input[type="text"]:focus
{
width:320px;
border-color:#2ecc71;
}
.button1{
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
<body background="images\bg-01.jpg" width="70%">
    <form runat="server">
<div class="split left">
<div class="container">
<h1>IDs FOR:-</h1>
<pre>
<h2>SINGER          :	1</h2>
<h2>PHOTOGRAPHER    :	2</h2>
<h2>ACTOR           :	3</h2>
<h2>PAINTER         :	4</h2>
<h2>DANCER          :	5</h2></pre>


</div>
</div>
<div class="split right">
<div class="container1">

<br>

<h1>ADMIN PORTAL</h1>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter the ID "></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter the Attribute"></asp:TextBox>
    <div><asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <asp:Button ID="Button1" Cssclass="button" runat="server" Text="Submit" OnClick="Button1_Click" /></div>
    <asp:Button ID="Button2" CssClass="button" runat="server" Text="Log Out" OnClick="Button2_Click" />
</div>
</div>
        </form>
</body>
</html>