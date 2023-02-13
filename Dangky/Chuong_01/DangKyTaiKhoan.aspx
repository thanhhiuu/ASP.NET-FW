<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyTaiKhoan.aspx.cs" Inherits="Chuong_01.DangKyTaiKhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 679px;
        }
        .auto-style2 {
            width: 287px;
            text-align:right;
        }
        .auto-style4 {
            height: 26px;
            text-align:center;
            color: blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="2">ĐĂNG KÝ TÀI KHOẢN SINH VIÊN&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Tên Đăng Nhập</td>
                    <td>
                        <asp:TextBox ID="txttendangnhap" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttendangnhap" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txttendangnhap" ErrorMessage="Phải là chữ" Operator="DataTypeCheck" ForeColor="Red">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mật Khẩu</td>
                    <td>
                        <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnhaplai" ControlToValidate="txtmatkhau" ErrorMessage="Mật khẩu không giống nhau" ForeColor="#FF3300">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nhập Lại Mật Khẩu</td>
                    <td>
                        <asp:TextBox ID="txtnhaplai" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplai" ErrorMessage="Mật khẩu không giống nhau" ForeColor="#FF3300">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Tuổi</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txttuoi" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="rvTuoi" runat="server" ErrorMessage="Phải trên 18 tuổi và nhỏ hơn 30 tuổi" ControlToValidate="txttuoi" ForeColor="Red" MaximumValue="30" MinimumValue="18" Type="Integer">(*)</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">Số Điện Thoại</td>
                    <td>
                        <asp:TextBox ID="txtSoDT" runat="server" TextMode="Phone"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSoDT" ErrorMessage="Sai số điện thoại" ForeColor="Red" ValidationExpression="0\d{9}">(*)</asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btndangky" runat="server" Text="Đăng ký" OnClick="btndangky_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbxuatthongtin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
