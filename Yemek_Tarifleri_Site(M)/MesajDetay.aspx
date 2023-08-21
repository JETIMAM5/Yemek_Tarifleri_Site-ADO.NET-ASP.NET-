<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.MesajDetayaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 160px;
        }
        .auto-style6 {
            width: 160px;
            font-size: large;
            text-align: right;
        }
        .auto-style7 {
            width: 160px;
            font-size: large;
            text-align: right;
            height: 29px;
        }
        .auto-style8 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mesajı Gönderen:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="38px" Width="368px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Başlık:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="368px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adresi:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="368px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mesaj İçeriği:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="368px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
