<%@ Page Title="" Language="C#" MasterPageFile="~/LatOut.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="ShopHoa.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Gior hang</h1>
    <asp:GridView ID="gvGioHang" runat="server" CssClass="table table-bordered" AutoGenerateColumns="false">
        <Columns>
            <asp:ImageField DataImageUrlField="hinh" DataImageUrlFormatString="image/{0}" HeaderText="Anh san pham" ControlStyle-Width="150px"></asp:ImageField>
            <asp:BoundField HeaderText="Ten San Pham" DataField="TenSP"/>
            <asp:BoundField HeaderText="Gia" DataField="DonGia" DataFormatString="{0: #,##0} đ"/>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox runat="server" ID="txtsoluong" Text='<%# Eval("soluong") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Thanh tien" DataField="Thanhtien" DataFormatString="{0: #,##0}đ" />
            <asp:CommandField ShowDeleteButton="true" ButtonType="Button" HeaderText="X" />
        </Columns>
    </asp:GridView>
    <div class="text-right">
        Tổng thành tiền: <asp:Label runat="server" ID="lblthanhtien" Text=''></asp:Label>
    </div>
</asp:Content>
