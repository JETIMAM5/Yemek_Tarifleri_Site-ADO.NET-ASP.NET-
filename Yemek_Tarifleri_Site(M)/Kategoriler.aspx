<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
        }

        .auto-style7 {
            width: 251px;
        }

        .auto-style8 {
            width: 159px;
        }

        .auto-style9 {
            width: 150px;
        }

        .auto-style10 {
            text-align: center;
        }

        .auto-style12 {
            font-size: xx-large;
        }

        .auto-style13 {
            height: 26px;
            text-align: center;
        }

        .auto-style14 {
            width: 100%;
            height: 49px;
        }

        .auto-style15 {
            height: 26px;
            width: 150px;
        }

        .auto-style16 {
            width: 253px;
        }

        .auto-style17 {
            width: 253px;
            height: 40px;
        }

        .auto-style18 {
            height: 40px;
        }

        .auto-style19 {
            width: 253px;
            height: 29px;
        }

        .auto-style20 {
            height: 29px;
        }

        .auto-style21 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: medium;
            font-weight: bold;
        }

        .auto-style22 {
            font-size: xx-large;
            margin-left: 0px;
        }

        .auto-style23 {
            height: 26px;
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="44px" OnClick="Button1_Click" Text="+" Width="158px" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="45px" OnClick="Button2_Click" Text="-" Width="150px" />
            </td>
            <td class="auto-style10"><strong>KATEGORİ LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="541px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İkonlar/325437.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style6">
                            <a href="KategoriAdminDetay.aspx?Kategoriid=<%# Eval("Kategoriid") %>">
                                <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/5309792.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Height="49px" Width="544px">
        <table class="auto-style14">
            <tr>
                <td class="auto-style23">
                    <asp:Button ID="Button3" runat="server" Height="44px" Text="+" Width="160px" CssClass="auto-style12" OnClick="Button3_Click" />
                </td>
                <td class="auto-style15">
                    <asp:Button ID="Button4" runat="server" Height="44px" Text="-" Width="150px" CssClass="auto-style22" OnClick="Button4_Click" />
                </td>
                <td class="auto-style13"><strong>KATEGORİ EKLE</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Button5" runat="server" Text="Button" />
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style17">KATEGORİ AD : </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="30px" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">KATEGORİ İKON :</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="281px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style20">
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style21" Height="34px" Text="Ekle" Width="284px" OnClick="Button6_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
