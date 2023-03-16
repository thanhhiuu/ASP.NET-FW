<%@ Page Title="" Language="C#" MasterPageFile="~/LatOut.Master" AutoEventWireup="true" CodeBehind="ThemHoa.aspx.cs" Inherits="ShopHoa.ThemHoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Phần Thêm Hoa</h1>
    <div class="container">
        <div class="form-inline mb-3">
            Chọn Loại Hoa:
        <asp:DropDownList runat="server" AutoPostBack="true" ID="drLoai" DataSourceID="dsloai" DataTextField="TenLoai" DataValueField="MaLoai"></asp:DropDownList>
        </div>
        <span class="mb-3"></span>
        <div class="input-group mb-3">
                        <span class="input-group-text">Tên hoa</span> <asp:TextBox runat="server" ID="txttenhoa" class="form-control" ></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Giá</span>
            &nbsp;<asp:TextBox runat="server" class="form-control" ID="txtgia" ></asp:TextBox>
            <span class="input-group-text">vnđ</span>
        </div>

        <div class="input-group mb-3">
            <span class="input-group-text">Ngày cập nhật</span> <asp:TextBox runat="server" TextMode="Date" class="form-control" ID="txtngaydang" />
        </div>

        <div class="input-group mb-3">
            <asp:FileUpload ID="fuhinh" runat="server"  />
        </div>
    </div>

     <div class="container text-center">
        <asp:Button runat="server" ID="btnTraCuu" CssClass="btn btn-success m-3 " Text="Add" OnClick="btnTraCuu_Click" />
    </div>
    <asp:Label ID="lblthongtin" runat="server" ForeColor="Lime"></asp:Label>
    <%-- DataScource Danh sach loai hoa --%>
    <asp:SqlDataSource runat="server" ID="dsloai" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>"
        SelectCommand="SELECT [MaLoai], [TenLoai] FROM [Loai]"></asp:SqlDataSource>
</asp:Content>
