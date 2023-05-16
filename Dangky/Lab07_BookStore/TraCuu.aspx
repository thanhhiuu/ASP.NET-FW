<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TraCuu.aspx.cs" Inherits="Lab07_BookStore.TraCuu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="form-inline">
        Tên Sách: <asp:TextBox ID="txttensach" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:Button ID="btntracuu" runat="server" Text="Tra cứu" CssClass="btn btn-light" OnClick="btntracuu_Click"/>
    </div>
    <asp:SqlDataSource ID="dssach" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" DeleteCommand="DELETE FROM [Sach] WHERE [MaSach] = @MaSach" InsertCommand="INSERT INTO [Sach] ([TenSach], [MaCD], [MaNXB], [Dongia], [AnhBia], [Ngaycapnhat], [Soluotxem]) VALUES (@TenSach, @MaCD, @MaNXB, @Dongia, @AnhBia, @Ngaycapnhat, @Soluotxem)" SelectCommand="SELECT * FROM [Sach]" UpdateCommand="UPDATE [Sach] SET [TenSach] = @TenSach, [MaCD] = @MaCD, [MaNXB] = @MaNXB, [Dongia] = @Dongia, [AnhBia] = @AnhBia, [Ngaycapnhat] = @Ngaycapnhat, [Soluotxem] = @Soluotxem WHERE [MaSach] = @MaSach">
        <DeleteParameters>
            <asp:Parameter Name="MaSach" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenSach" Type="String" />
            <asp:Parameter Name="MaCD" Type="Int32" />
            <asp:Parameter Name="MaNXB" Type="Int32" />
            <asp:Parameter Name="Dongia" Type="Decimal" />
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="Ngaycapnhat" Type="DateTime" />
            <asp:Parameter Name="Soluotxem" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSach" Type="String" />
            <asp:Parameter Name="MaCD" Type="Int32" />
            <asp:Parameter Name="MaNXB" Type="Int32" />
            <asp:Parameter Name="Dongia" Type="Decimal" />
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="Ngaycapnhat" Type="DateTime" />
            <asp:Parameter Name="Soluotxem" Type="Int32" />
            <asp:Parameter Name="MaSach" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="gvSach" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaSach" DataSourceID="dssach" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="TenSach" HeaderText="Tên Sách" SortExpression="TenSach"/>
            <asp:ImageField DataImageUrlField="AnhBia" DataImageUrlFormatString="Uploads/Hinh_San_Pham/{0}" ControlStyle-Width="100px" HeaderText="Ảnh"/>
            <asp:BoundField DataField="Dongia" HeaderText="Đơn giá" SortExpression="Dongia" DataFormatString="{0:#,##0} Đồng"/>
            <asp:BoundField DataField="Ngaycapnhat" HeaderText="Ngày cập nhật" DataFormatString="{0:dd/MM/yyyy}" SortExpression="Ngaycapnhap"/>

            <asp:TemplateField HeaderText="Chọn tác vụ">
                    <ItemTemplate>
                        <asp:Button ID="btDelete" CommandName="Delete" runat="server" OnClientClick="return confirm('Bạn có chắc muốn xóa sách này ?')" Text="Xóa" CssClass="btn btn-danger" Onclik="btn_xoa"/>
                    </ItemTemplate>              
                </asp:TemplateField>
           
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:GridView>
</asp:Content>
