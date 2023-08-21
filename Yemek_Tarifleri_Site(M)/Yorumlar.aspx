<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
        }

        .auto-style6 {
            width: 190px;
        }

        .auto-style8 {
            height: 26px;
        }

        .auto-style10 {
            height: 37px;
        }

        .auto-style11 {
            width: 91%;
            height: 37px;
        }

        .auto-style12 {
            width: 90%;
            height: 37px;
        }

        .auto-style13 {
            width: 86%;
            height: 30px;
        }

        .auto-style14 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="44px" Text="+" Width="158px" OnClick="Button1_Click" Style="font-size: xx-large" />
            </td>
            <td class="auto-style11">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="45px" Text="-" Width="150px" OnClick="Button2_Click" Style="font-size: xx-large" />
            </td>
            <td class="auto-style10"><strong>&nbsp;ONAYLI YORUM LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="541px" Height="259px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İkonlar/325437.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style5">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/5309792.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <table class="auto-style1">
        <tr>
            <td class="auto-style14">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Height="44px" Text="+" Width="158px" Style="font-size: xx-large" OnClick="Button3_Click1" />
            </td>
            <td class="auto-style13">
                <asp:Button ID="Button4" runat="server" Height="45px" Text="-" Width="160px" Style="font-size: xx-large" OnClick="Button4_Click1" />
            </td>
            <td class="auto-style14"><strong>&nbsp;ONAYSIZ YORUM LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="541px" Height="259px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İkonlar/325437.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style5">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>">
                                <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/5309792.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
