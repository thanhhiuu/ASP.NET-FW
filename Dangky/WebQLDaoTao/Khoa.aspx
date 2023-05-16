<%@ Page Title="" Language="C#" MasterPageFile="~/LayOutDaoTao.Master" AutoEventWireup="true" CodeBehind="Khoa.aspx.cs" Inherits="WebQLDaoTao.Khoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <div class="container">
        <h3 class="">THÊM MỚI KHOA</h3> <br />
        <br />
        <asp:Label runat="server" ID="lblMaKH">Mã Khoa: </asp:Label>
        <asp:TextBox runat="server" ID="txtMaKH" ></asp:TextBox> <br /> <br />
        <asp:Label runat="server" ID="lblTenKH">Tên Khoa: </asp:Label>
        <asp:TextBox runat="server" ID="txtTenKH" ></asp:TextBox> <br /> <br />
        <asp:Button Text="Thêm" CssClass="btn btn-success" runat="server" />
        <br />
        <br />
        <br />
    </div>
    <div class="container">
        <h3 class="">DANH SÁCH KHOA</h3>
        <hr />
        <asp:GridView runat="server" ID="gvKhoa" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Mã Khoa" DataField="MaKH" />
                <asp:BoundField HeaderText="TenKH" DataField="TenKH" />
                <asp:TemplateField HeaderText="Chọn Tác Vụ">
                        <ItemTemplate>
                            <asp:Button Text="Sửa" CommandName="Edit" ID="btnSua" CssClass="btn btn-info" runat="server" />
                            <asp:Button Text="Xóa" CssClass="btn btn-danger" ID="btnXoa" CommandName="Delete" OnClientClick="return comfirm('Bạn có chắc chắn muốn xóa ?')" runat="server" />
                        </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button runat="server" Text="Ghi" CommandName="Update" ID="btnGhi" CssClass="btn btn-success" />
                        <asp:Button Text="Không" ID="btnKhong" CommandName="Cancel" CssClass="btn btn-danger" runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
