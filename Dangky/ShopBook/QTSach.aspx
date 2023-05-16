<%@ Page Title="" Language="C#" MasterPageFile="~/ShopBook.Master" AutoEventWireup="true" CodeBehind="QTSach.aspx.cs" Inherits="ShopBook.QTSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvqtsach" runat="server"></asp:GridView>
    <asp:SqlDataSource ID="dssach" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString2 %>" ProviderName="<%$ ConnectionStrings:BookStoreDBConnectionString2.ProviderName %>" SelectCommand="SELECT [TenSach], [AnhBia], [Dongia], [Ngaycapnhat] FROM [Sach]"></asp:SqlDataSource>
</asp:Content>
