<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLNhanVien.aspx.cs" Inherits="Project_01.QLNhanVien" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><title></title></head><body><form id="form1" runat="server">
        <div>
            <h1 style="color: green; text-align: center;">QUẢN LÝ NHÂN VIÊN</h1>
            <hr />
                
        </div>
        <asp:SqlDataSource ID="dsNhanVien" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
            DeleteCommand="DELETE FROM [QLNhanVien] WHERE [MaNV] = @MaNV" 
            InsertCommand="INSERT INTO [QLNhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" SelectCommand="SELECT * FROM [QLNhanVien]" UpdateCommand="UPDATE [QLNhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
            <DeleteParameters>
                <asp:Parameter Name="MaNV" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HoNV" Type="String" />
                <asp:Parameter Name="TenNV" Type="String" />
                <asp:Parameter Name="Phai" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="NgaySinh" />
                <asp:Parameter Name="NoiSinh" Type="String" />
                <asp:Parameter Name="MaPhong" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoNV" Type="String" />
                <asp:Parameter Name="TenNV" Type="String" />
                <asp:Parameter Name="Phai" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="NgaySinh" />
                <asp:Parameter Name="NoiSinh" Type="String" />
                <asp:Parameter Name="MaPhong" Type="Int32" />
                <asp:Parameter Name="MaNV" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div style="width: 80%; margin: auto;">
        <asp:GridView runat="server" ID="gvNhanVien"
            AutoGenerateColumns="False" 
            DataKeyNames="MaNV" DataSourceID="dsNhanVien" 
            CellPadding="10" ForeColor="#333333" 
            GridLines="None" Width="100%" 
            AllowPaging="True" PageSize="5">

            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaNV" HeaderText="MaNV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
                <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV" />
                <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV" />
                <asp:TemplateField HeaderText="Phái"> 
                    <ItemTemplate>
                        <asp:Label ID="lbPhai" runat="server" Text='<%# (bool)Eval("Phai") == true ? "Nam" : "Nữ" %>'>

                        </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList runat="server" ID="drphai" SelectedValue='<%# Bind("Phai") %>'>
                            <asp:ListItem Value="True">Nam</asp:ListItem>
                            <asp:ListItem Value="False">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
                <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
                <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
                <asp:CommandField ButtonType="Button" ShowEditButton="true" EditText="Sửa" UpdateText="Ghi" CancelText="Bỏ qua"/>
                <asp:TemplateField HeaderText="Tác Vụ">
                    <ItemTemplate>
                        <asp:Button ID="btndelete" runat="server" Text="Detele"
                            CommandName="Delete" 
                            OnClientClick="return confirm('Ban co dong y xoa khong'); "/>
                    </ItemTemplate>
                    <EditItemTemplate>

                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>

            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />

        </asp:GridView>
        </div>
    </form>
</body>
</html>
