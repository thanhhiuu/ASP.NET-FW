<%@ Page Title="" Language="C#" MasterPageFile="~/LayOutDaoTao.Master" AutoEventWireup="true" CodeBehind="ThemMonHoc.aspx.cs" Inherits="WebQLDaoTao.ThemMonHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <h4>THÊM MỚI MÔN HỌC</h4>
    <hr>
    <div class="form-horizontal">
        < class="form-group">
        <label class="control-label col-sm-2">Mã môn:</label>
        <div class="col-sm-10">
            <asp:TextBox ID="txtMaMH" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Tên môn</label>
        <div class="col-sm-10">
            <asp:TextBox ID="txtTenMH" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Số tiết</label>
        <div class="col-sm-10">
            <asp:TextBox ID="txtSoTiet" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <asp:Button ID="btThem" runat="server" Text="Thêm" CssClass="btn btn-info" />
        </div>
    </div>
    <asp:Label ID="lbThongBao" ForeColor="#cc3300" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
