<%@ Page Title="" Language="C#" MasterPageFile="~/LatOut.Master" AutoEventWireup="true" CodeBehind="TraCuu.aspx.cs" Inherits="ShopHoa.TraCuu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-4">
        <div class="input-group container">
            <asp:TextBox runat="server" ID="txtGiaTu" class="form-control" aria-label="Dollar amount (with dot and two decimal places)" />
            
            <span class="input-group-text">$</span>
            <span class="input-group-text">
                <asp:Label runat="server" ID="lbGiaNhapTu"></asp:Label>
            </span>
            <asp:CompareValidator ID="cvGiaTu" runat="server" ErrorMessage="Phải là số !" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtGiaTu">(*)</asp:CompareValidator>
        </div>
        </div>
    <div class="m-4">
        <div class="input-group container">
            <asp:TextBox runat="server" ID="txtGiaDen" class="form-control" aria-label="Dollar amount (with dot and two decimal places)" />
           
            <span class="input-group-text">$</span>
            <span class="input-group-text">
                <asp:Label runat="server" ID="lbGiaNhapDen"></asp:Label>
            </span>
            <asp:CompareValidator ID="cvsosanh" runat="server" ErrorMessage="Gia trị không hợp lệ" ControlToCompare="txtGiaTu" ControlToValidate="txtGiaDen" Operator="GreaterThanEqual" Type="Integer">(*)</asp:CompareValidator>
            <asp:CompareValidator ID="cvGiaDen" runat="server" ErrorMessage="Phải là số !" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtGiaDen">(*)</asp:CompareValidator>            
        </div>
    </div>
     <asp:ValidationSummary ID="vserror" runat="server" ForeColor="Red" />
    <div class="container text-center">
        <asp:Button runat="server" ID="btnTraCuu" CssClass="btn btn-success m-3 " Text="Tìm Kiếm" />
    </div>

    <%-- Danh sách hoa (Layout) --%>
    <div>
        <asp:Repeater ID="rptHoa" runat="server" DataSourceID="dsTraCuu">
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
                            <asp:Label CssClass="text-info" runat="server" ID="lbGia" Text='<%# Eval("Gia") %>'></asp:Label>
                            <br />
                            <a class="btn btn-success">Buy</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <asp:SqlDataSource runat="server" ID="dsTraCuu" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBTraCuu %>"
        ProviderName="<%$ ConnectionStrings:HoaTuoiDBTraCuu.ProviderName %>"
        SelectCommand="SELECT * FROM [Hoa] WHERE (([Gia] &gt;= @Gia) AND ([Gia] &lt;= @Gia2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtGiaTu" Name="Gia" PropertyName="Text" Type="Double" />
            <asp:ControlParameter ControlID="txtGiaDen" Name="Gia2" PropertyName="Text" Type="Double" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
