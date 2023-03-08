<%@ Page Title="" Language="C#" MasterPageFile="~/LatOut.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="ShopHoa.XemHoa" %>

<asp:Content ID="ctxemhoa" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Danh sách Loại --%>
    <div class="form-inline m-2">
        Chọn Loại Hoa:
        <asp:DropDownList runat="server" AutoPostBack="true" ID="drxemhoa" DataSourceID="dsloai" DataTextField="TenLoai" DataValueField="MaLoai">
        </asp:DropDownList>
    </div>

    <%-- Danh sách hoa (Layout) --%>
    <div>
        <asp:Repeater ID="rptHoa" runat="server" DataSourceID="dsHoa">
            <ItemTemplate>              
                    <div class="item container">
                        <div class="img">
                            <a href="#">
                                <img runat="server" id="img1" src='<%# Eval("Hinh", "image/{0}") %>' />
                            </a>
                        </div>
                        <div class="text-hoa">

                        </div>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>





    <%-- DataScource Danh sach loai hoa --%>
    <asp:SqlDataSource runat="server" ID="dsloai" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Loai]"></asp:SqlDataSource>
    <%-- DataScource Danh sach hoa --%>
    <asp:SqlDataSource ID="dsHoa" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString2 %>" ProviderName="<%$ ConnectionStrings:HoaTuoiDBConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Hoa] WHERE ([MaLoai] = @MaLoai)">
        <SelectParameters>
            <asp:ControlParameter ControlID="drxemhoa" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
