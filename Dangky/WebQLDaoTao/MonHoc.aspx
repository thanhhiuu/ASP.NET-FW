<%@ Page Title="" Language="C#" MasterPageFile="~/LayOutDaoTao.Master" AutoEventWireup="true" CodeBehind="MonHoc.aspx.cs" Inherits="WebQLDaoTao.MonHoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <h2>Quản Lý Môn Học</h2>
    <div class="container">
        <asp:GridView runat="server" ID="gvMonHoc" AutoGenerateColumns="false" OnRowEditing="gvMonHoc_RowEditing" DataKeyNames="MaMH">
            <Columns>
                <asp:BoundField HeaderText="Mã Môn Học" DataField="MaMH"/>
                <asp:BoundField HeaderText="Tên Môn Học" DataField="TenMH"/>
                <asp:BoundField HeaderText="Số Tiết" DataField="SoTiet"/>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button runat="server" ID="btEdit" Text="Edit" CommandName="Edit"/>
                        <asp:Button runat="server" ID="btDelete" Text="Delete" CommandName="Delete"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:Button runat="server" ID="btUpdate" Text="Update" CommandName="Update"/>
                        <asp:Button runat="server" ID="btCancel" Text="Cancel" CommandName="Cancel"/>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
