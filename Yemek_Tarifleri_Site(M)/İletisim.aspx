<%@ Page Title="" Language="C#" MasterPageFile="~/Kulllanici.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        height: 26px;
    }
    .auto-style8 {
        height: 26px;
        width: 171px;
        text-align: right;
    }
    .auto-style9 {
        height: 26px;
        margin-left: 40px;
    }
    .auto-style10 {
        height: 26px;
        font-size: x-large;
        color: #009933;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style10" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Ad Soyad:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox1" runat="server" Width="370px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox2" runat="server" Width="370px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Konu:</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox3" runat="server" Height="56px" TextMode="MultiLine" Width="370px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Mesaj:</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox4" runat="server" Height="264px" TextMode="MultiLine" Width="370px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style9">
            <asp:Button ID="Button1" runat="server" Text="Gönder" Width="377px" CssClass="fb8" Height="49px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
