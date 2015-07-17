<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" CssClass="style1" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" 
            onrowdeleting="GridView1_RowDeleting" 
    DataKeyNames="pid,pname,id">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="S.No" SortExpression="id" />
            <asp:BoundField DataField="pid" HeaderText="Product ID" SortExpression="pid" />
            <asp:BoundField DataField="pname" HeaderText="Product" SortExpression="pname" >
            </asp:BoundField>
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="41px" Width="57px" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"img") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" >
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" />
        </Columns>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=(local);Initial Catalog=eshop;Integrated Security=True" 
            ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT * FROM [cart]">
        </asp:SqlDataSource>
    
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SpecialContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Cart" Runat="Server">
</asp:Content>

