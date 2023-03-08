<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project_01.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: red; text-align: center;">Demo Quản Lý Nhân Viên</h1>
            <hr />
            <div style="width:400px; margin: auto;">
                <asp:Panel runat="server" GroupingText="Chức Năng">
                    <div style="text-align: center;">
                        <br />
                        <div>
                            <asp:HyperLink runat="server" ID="hlqlnhanvien" NavigateUrl="~/QLNhanVien.aspx" Text="Quản Lý Nhân Viên"></asp:HyperLink>
                        </div>
                        <br />
                        <div>
                            <asp:HyperLink runat="server" ID="hlqlphong" NavigateUrl="~/QLPhong.aspx" Text="Quản Lý Phòng"></asp:HyperLink>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html> 
