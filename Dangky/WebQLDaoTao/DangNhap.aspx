<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebQLDaoTao.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/index.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="width: 500px;"> 
        <h1>Log in </h1>
        <form >
            <div class="main">
                <asp:TextBox runat="server" CssClass="input input-group" Font-Size="20px" placeholder="Enter username" ID="txtTenDangNhap"></asp:TextBox>
                <span></span>
                <asp:Label runat="server"></asp:Label>
            </div>
            <div class="main">
                <asp:TextBox runat="server" CssClass="input input-group" Font-Size="20px" placeholder="Password" TextMode="Password" ID="txtMatKhau"></asp:TextBox>
                <span></span>
                <asp:Label runat="server" ></asp:Label>
            </div>
            <div class="pass">Don't have an account ? <a href="#">Create</a></div>
            <asp:Button runat="server" ID="btnlogin" Width="100%" Text="Login" CssClass="btn btn-success" OnClick="btnlogin_Click"/>
                
            <div class="sign_up">Not a member? <a href="#">Sign up here</a></div>
            <asp:Label runat="server" ID="lbThongBao" CssClass="px-2 text-center mt-5" Font-Size="25px" Width="100%" ForeColor="Red" ></asp:Label>
        </form>
    </div>
    </form>
</body>
</html>
