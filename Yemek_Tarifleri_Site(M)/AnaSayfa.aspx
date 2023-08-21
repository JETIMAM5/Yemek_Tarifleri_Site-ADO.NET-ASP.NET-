<%@ Page Title="" Language="C#" MasterPageFile="~/Kulllanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            height: 26px;
        }

        .auto-style7 {
            font-size: x-large;
            background-color: #FF9933;
            color: #003300;
        }

        .auto-style8 {
            font-size: large;
        }

        .auto-style9 {
            text-decoration: underline;
            color: #FFFFFF;
        }

        .auto-style10 {
            height: 23px;
        }

        .auto-style11 {
            color: #FFFFFF;
            background-color: #66CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td><strong>


                            <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label></a>


                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;<strong>Malzemeler :</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Yemek Tarifi :</strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Eklenme Tarihi :</strong>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style11"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style8">&nbsp;-</span>&nbsp; <strong>&nbsp;Puan : </strong>&nbsp;<strong><em><asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </em></strong>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #808080">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
