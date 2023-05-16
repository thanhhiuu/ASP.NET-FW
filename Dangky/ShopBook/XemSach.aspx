<%@ Page Title="" Language="C#" MasterPageFile="~/ShopBook.Master" AutoEventWireup="true" CodeBehind="XemSach.aspx.cs" Inherits="ShopBook.XemSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row g-0 text-center">
        <div class="col-6 col-md-4 top-mr" style="height: 100vh;">
            <asp:Repeater ID="rvsach" runat="server" DataSourceID="dsloai">
                <ItemTemplate>
                    <a href="<%# Eval("MaCD", "XemSach.aspx?MaCD={0}") %>"><asp:Label runat="server" CssClass="btn btn-success my-2"  Width="200px" Text='<%# Eval("tenchude") %>'></asp:Label> <br /></a>         
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-sm-6 col-md-8" style="width: 60%">
            <div> 
                <asp:Label runat="server" ID="lblthongtinsach" CssClass="text-end">Chủ để tin học có 9 quyển sách</asp:Label>
            </div>
            <div>
                <asp:Repeater ID="rptHoa" runat="server" DataSourceID="dssach">
                    <ItemTemplate>
                        <div class="item">
                            <div class="item-grid">
                                <div class="img">
                                    <a href="#">
                                        <img id="img1" src='<%# Eval("AnhBia", "Bia_sach/{0}") %>' />
                                    </a>
                                </div>
                                <div class="text-sach">
                                    <asp:Label runat="server" ID="lbTenHoa"  Width="200px" CssClass="text-center" Text='<%#Eval("TenSach") %>'></asp:Label>
                                    <br />
                                    Giá Bán:
                            <asp:Label CssClass="text-info text-center" runat="server" ID="lbGia"  Text='<%# Eval("DonGia", "{0: #,##0} vnđ") %>'></asp:Label>
                                    <br />
                                    <br />
                                    <div>
                                         <a class="btn btn-success">Buy</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>


        </div>
    </div>
    <asp:SqlDataSource ID="dsloai" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>"
        ProviderName="<%$ ConnectionStrings:BookStoreDBConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dssach" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
        SelectCommand="SELECT * FROM [Sach] WHERE ([MaCD] = @MaCD)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="5" Name="MaCD" QueryStringField="MaCD" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
