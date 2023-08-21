<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style8 {
            width: 159px;
        }
        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style9 {
            width: 150px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style13 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="44px"  Text="+" Width="158px" OnClick="Button1_Click"  />
            </td>
            <td class="auto-style9">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="45px"  Text="-" Width="150px" OnClick="Button2_Click"  />
            </td>
            <td class="auto-style10"><strong>YEMEK LİSTESİ</strong></td>
        </tr>
    </table>
        <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="541px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <a href='YemekDüzenle.aspx?Yemekid=<%# Eval("Yemekid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/3409420.png" Width="40px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
