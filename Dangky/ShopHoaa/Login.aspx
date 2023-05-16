<%@ Page Title="" Language="C#" MasterPageFile="~/ShopSachLayOut.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShopSach.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="containerr">
        <h1>Log in </h1>
        <form>
            <div class="main">
                <asp:TextBox runat="server" ID="txtTenTK" ></asp:TextBox>
                <span></span>
                <label for="">UseName</label>
            </div>
            <div class="main">
               <asp:TextBox runat="server" ID="txtMatKhau" ></asp:TextBox>
                <span></span>
                <label for="">PassWord</label>
            </div>
            <div class="pass">Don't have an account ? <a href="#">Create</a></div>
            <asp:Button runat="server" Text="Login" OnClick="Login_Click" />
            <div class="sign_up">Not a member? <a href="#">Sign up here</a></div>
        </form>
    </div>
    <asp:Label runat="server" Text="" ID="lblThongbao"></asp:Label>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:BookStoreDBConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [TaiKhoan]"></asp:SqlDataSource>
</asp:Content>
