<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 38px;
        }
        .style4
        {
            height: 168px;
        }
        .style5
        {
            height: 18px;
        }
        .style6
        {
            height: 32px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%; height: 258px;">
        <tr align=center>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr align=center>
            <td>
                <asp:Image ID="Image3" runat="server" Height="10px" 
                    ImageUrl="~/img/buttons/loadingAnimation.gif" Width="395px" />
            </td>
        </tr>
        <tr align=center>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Product Information" 
                    Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="#66FFFF"></asp:Label>
            </td>
        </tr>
        <tr align=center>
            <td>
                <asp:Image ID="Image2" runat="server" Height="10px" 
                    ImageUrl="~/img/buttons/loadingAnimation.gif" Width="395px" />
            </td>
        </tr>
        <tr align=center>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" 
                    DataSourceID="SqlDataSource1" CellSpacing="5" 
                    onitemcommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table style="width: 96%; height: 341px;">
                            <tr align=center>
                                <td>
                                    <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="Large" 
                                        onclick="LinkButton6_Click" Text='<%# Eval("pname") %>'></asp:LinkButton>
                                </td>
                            </tr>
                            <tr style="border: medium double #00FFFF" align=center>
                                <td class="style4" style="border: medium double #00FFFF">
                                    <asp:Image ID="Image1" runat="server" Height="156px" 
                                        ImageUrl='<%# Eval("image") %>' Width="200px" />
                                </td>
                            </tr>
                            <tr align=center>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Font-Underline="True" 
                                        ForeColor="#6699FF" Text="Company:-"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="#0066FF" 
                                        Text='<%# Eval("company") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr align=center>
                                <td class="style5">
                                    <asp:Label ID="Label6" runat="server" Font-Underline="True" ForeColor="Black" 
                                        Text="Details:-"></asp:Label>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("details") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr align=center>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Font-Size="Medium" Font-Underline="True" 
                                        ForeColor="Red" Text="Price:-"></asp:Label>
                                    <asp:Label ID="Label9" runat="server" Font-Size="Medium" ForeColor="Red" 
                                        Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr align=center>
                                <td class="style6">
                                    <asp:Label ID="Label10" runat="server" Font-Size="Medium" Text="Quantity:-"></asp:Label>
                                    <asp:Label ID="Label11" runat="server" Font-Size="Medium" 
                                        Text='<%# Eval("qty") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=DRULES-PC;Initial Catalog=eshop;Integrated Security=True" 
                    ProviderName="System.Data.SqlClient" 
                    
                    SelectCommand="SELECT * FROM [products] WHERE ([category] = @category)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="category" QueryStringField="catname" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr align=center>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SpecialContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Cart" Runat="Server">
    <asp:ListBox ID="ListBox1" runat="server" Height="102px" Width="194px">
</asp:ListBox>
</asp:Content>

