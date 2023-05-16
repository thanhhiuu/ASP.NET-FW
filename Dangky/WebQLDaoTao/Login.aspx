 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebQLDaoTao.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server"  style="height: 100vh; width: 100vw;">
        <div class="text-center" style=" border: 1px solid #000; width: 300px; position:relative; top: 50%; left: 50%; transform: translate(-50%, -50%);">
            <asp:Label runat="server" Font-Size="30px" Font-Bold="true" CssClass=" " >Login</asp:Label>      <br />
            <asp:TextBox runat="server" ID="txtTenDangNhap" placeholder="username" CssClass=""></asp:TextBox> <br /> <br />
            <asp:TextBox runat="server" ID="txtMatKhau" placeholder="username" CssClass=""></asp:TextBox> <br /> <br />
            <asp:Button runat="server" ID="btnlogin" CssClass="btn btn-success" Text="Login" Width="100px" OnClick="btnlogin_Click" />
        </div>
    </form>
</body>
</html>
