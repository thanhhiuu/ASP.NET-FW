<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemSach.aspx.cs" Inherits="Lab07_BookStore.XemSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Xem Sách
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="xemsach">
        <div class="menu">
            <asp:SqlDataSource ID="dschude" runat="server"
                ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>"
                SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>

             <div id="tieude">
                Chủ Đề Sách
            </div>
            <asp:Repeater ID="rptchudesach" runat="server" DataSourceID="dschude">
                <ItemTemplate>
                    <a href='<%# Eval("macd","XemSach.aspx?macd={0}") %>'>
                        <div class="btn-light">
                            <%# Eval("tenchude") %>
                        </div>
                    </a>
                </ItemTemplate>
            </asp:Repeater>        
        </div>
        <div class="content">
            <asp:SqlDataSource ID="dsSachtheoloai" runat="server" 
                ConnectionString="<%$ConnectionStrings:BookStoreDBConnectionString %>" 
                SelectCommand="SELECT * FROM [Sach] WHERE ([MaCD] = @MaCD)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="5" Name="MaCD" QueryStringField="macd" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div id="thongbao">
                <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
            </div>
            <div class="data_items" style="margin-left: 40px">
                <asp:Repeater ID="rptSach" runat="server" DataSourceID="dsSachtheoloai">
                    <ItemTemplate>
                        <div class="item">
                            <div class="i">
                                <a href="#">
                                    <img src='<%# Eval("AnhBia", "Uploads/Hinh_San_Pham/{0}") %>' />
                                </a>
                            </div>
                            <div class="t">
                                <div id="datmua">
                                    <a href="#" class="btn btn-success">Đặt Mua
                                </a>
                                </div>
                                <div id="tensach">
                                    <asp:Label ID="lbltensach" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                                </div>
                                <div id="gia">
                                    Giá:
                                    <asp:Label ID="lbldongia" CssClass="vn" runat="server" Text='<%# Eval("DonGia","{0: #,##0 VNĐ}") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
