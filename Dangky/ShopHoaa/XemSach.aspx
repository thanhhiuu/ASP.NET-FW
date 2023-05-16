<%@ Page Title="" Language="C#" MasterPageFile="~/ShopSachLayOut.Master" AutoEventWireup="true" CodeBehind="XemSach.aspx.cs" Inherits="ShopSach.XemSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

    </div>

    <asp:SqlDataSource ID="dssach" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString3 %>" SelectCommand="SELECT * FROM [Sach]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsloaisach" runat="server"
        ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString2 %>"
        ProviderName="<%$ ConnectionStrings:BookStoreDBConnectionString2.ProviderName %>"
        SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>
</asp:Content>
