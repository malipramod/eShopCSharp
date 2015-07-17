<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="productdetails.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            height: 44px;
            width: 195px;
        }
        .style7
        {
            height: 44px;
        }
        .style15
        {
            height: 47px;
        }
        .style10
        {
            height: 114px;
        }
        .style16
        {
            height: 25px;
        }
        .style17
        {
            height: 55px;
        }
        .style18
        {
            height: 52px;
        }
        .style6
        {
            width: 195px;
            height: 59px;
        }
        .style19
        {
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%; height: 356px;">
        <tr>
            <td class="style1" colspan="3">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    onitemcommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table style="width:102%; height: 482px;">
                            <tr>
                                <td class="style4">
                                    <asp:Label ID="Label6" runat="server" Text="Product Id:-"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                                </td>
                                <td class="style7">
                                    <asp:Label ID="Label1" runat="server" Text="Product Name:-"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style15" colspan="2">
                                    <asp:Label ID="Label9" runat="server" Text="Company:-"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr align=center>
                                <td class="style10" colspan="2">
                                    <asp:Image ID="Image1" runat="server" Height="197px" Width="263px" 
                                        style="text-align: center" ImageUrl='<%# Eval("image") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style16" colspan="2">
                                    <asp:Label ID="Label7" runat="server" Text="Catagory:-"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style16" colspan="2">
                                    <asp:Label ID="Label16" runat="server" Text="Details:-"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox2" runat="server" Height="102px" ReadOnly="True" 
                                        Text='<%# Eval("details") %>' TextMode="MultiLine" Width="365px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style17" colspan="2">
                                    <asp:Label ID="Label5" runat="server" Text="No. of quantity:-"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("qty") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" colspan="2">
                                    <asp:Label ID="Label4" runat="server" Text="Price:-"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Label ID="Label8" runat="server" Text="Buy Quantity"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="91px"></asp:TextBox>
                                    &nbsp;</td>
                                <td class="style19">
                                    <br />
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="24px" Width="80px" 
                                        ImageUrl="~/img/buttons/AddToCart.gif" onclick="ImageButton1_Click" 
                                        AlternateText='<%# Eval("pid") %>' />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=(local);Initial Catalog=eshop;Integrated Security=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT * FROM [products] WHERE ([pname] = @pname)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="pname" QueryStringField="proname" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style1">
                    &nbsp;</td>
            <td class="style1">
                    &nbsp;</td>
            <td class="style1">
                    &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SpecialContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Cart" Runat="Server">
</asp:Content>

