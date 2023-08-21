<%@ Page Title="" Language="C#" MasterPageFile="~/Kulllanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            font-size: xx-small;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            text-align: center;
            background-color: #FFFFCC;
        }
    .auto-style10 {
        width: 187px;
    }
    .auto-style11 {
        width: 187px;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Label" ></asp:Label>
&nbsp;&nbsp;&nbsp; </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAd") %>' CssClass="auto-style8"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp; -
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="auto-style9"><strong>YORUM YAPMA PANELİ </strong></div>
    <table class="auto-style6">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Ad Soyad :</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="340px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mail:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="340px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yorumunuz:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="340px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorumu Ekle" Width="348px" />
            </td>
        </tr>
</table>
</asp:Content>
