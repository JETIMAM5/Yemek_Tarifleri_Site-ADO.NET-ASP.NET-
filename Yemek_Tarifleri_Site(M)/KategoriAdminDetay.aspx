<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="KategoriAdminDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 234px;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            width: 234px;
            text-align: right;
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
            <td class="auto-style7"><strong>KATEGORİ AD:</strong></td>
            <td>
                <asp:TextBox ID="TxtKategoriAd" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>ADET:</strong></td>
            <td>
                <asp:TextBox ID="TxtKategoriAdet" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="306px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="fb8" Height="50px" OnClick="Button1_Click" Text="GÜNCELLE" Width="308px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
