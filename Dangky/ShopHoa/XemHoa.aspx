<%@ Page Title="" Language="C#" MasterPageFile="~/LatOut.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="ShopHoa.XemHoa" %>

<asp:Content ID="ctxemhoa" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Danh sách Loại --%>
    <div class="form-inline m-2">
        Chọn Loại Hoa:
        <asp:DropDownList runat="server" AutoPostBack="true" ID="drLoai" DataSourceID="dsloai" DataTextField="TenLoai" DataValueField="MaLoai"></asp:DropDownList>
    </div>

    <%-- Danh sách hoa (Layout) --%>
    <div>
        <asp:Repeater ID="rptHoa" runat="server" DataSourceID="dsHoa">
            <ItemTemplate>
                <div class="item">
                    <div class="item-grid">
                        <div class="img">
                            <a href="#">
                                <img id="img1" src='<%# Eval("Hinh", "image/{0}") %>' />
                            </a>
                        </div>
                        <div class="text-hoa">
                            <asp:Label runat="server" ID="lbTenHoa" Text='<%#Eval("TenHoa") %>'></asp:Label>
                            <br />
                            Giá Bán:
                            <asp:Label CssClass="text-info" runat="server" ID="lbGia" Text='<%# Eval("Gia", "{0: #,##0} vnđ") %>'></asp:Label>
                            <br />
                            <a class="btn btn-success">Buy</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>



    <div class="dshoaclick nav flex-column nav-pills me-3 mt-5" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Chọn Loại Hoa</button>
        <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Profile</button>
        <button class="nav-link" id="v-pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#v-pills-disabled" type="button" role="tab" aria-controls="v-pills-disabled" aria-selected="false">Disabled</button>
        <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Messages</button>
        <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Settings</button>
    </div>

    <%-- DataScource Danh sach loai hoa --%>
    <asp:SqlDataSource runat="server" ID="dsloai" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>"
        SelectCommand="SELECT [MaLoai], [TenLoai] FROM [Loai]"></asp:SqlDataSource>
    <%-- DataScource Danh sach hoa --%>
    <asp:SqlDataSource ID="dsHoa" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>"
        SelectCommand="SELECT * FROM [Hoa] WHERE ([MaLoai] = @MaLoai)">
        <SelectParameters>
            <asp:ControlParameter ControlID="drLoai" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
