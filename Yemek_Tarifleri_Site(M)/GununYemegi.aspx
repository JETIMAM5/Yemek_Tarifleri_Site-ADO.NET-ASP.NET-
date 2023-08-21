<%@ Page Title="" Language="C#" MasterPageFile="~/Kulllanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
        height: 579px;
    }
    .auto-style5 {
        font-size: large;
        text-align: center;
    }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            height: 237px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            height: 502px;
            width: 532px;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style10">
            <tr>
                <td class="auto-style5"><strong>GÜNÜN YEMEĞİ</strong></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>YEMEK : </strong>
                    <br />
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>MALZEMELER:&nbsp;</strong><br /> <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>YAPILIŞI:&nbsp;</strong><br /> <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Image ID="Image1" runat="server" Height="241px" Width="536px" ImageUrl='<%# Eval("YemekResim") %>' style="margin-left: 0px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #FF99FF">PUAN:&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="background-color: #99CCFF">TARİH:&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
