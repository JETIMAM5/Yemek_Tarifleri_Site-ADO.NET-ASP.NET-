<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style8 {
            height: 26px;
        }

        .auto-style12 {
            width: 90%;
            height: 37px;
        }

        .auto-style10 {
            height: 37px;
        }

        .auto-style13 {
            text-align: right;
        }

        .auto-style14 {
            width: 78%;
            height: 37px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="44px" Text="+" Width="158px" Style="font-size: xx-large" OnClick="Button1_Click"  />
            </td>
            <td class="auto-style14">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="45px" Text="-" Width="150px" Style="font-size: xx-large" OnClick="Button2_Click"  />
            </td>
            <td class="auto-style10"><strong>&nbsp;ONAYSIZ TARİF LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="541px" Height="259px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TaridAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>" ><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/2351364.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
      <table>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Height="44px" Text="+" Width="158px" Style="font-size: xx-large" OnClick="Button3_Click"   />
            </td>
            <td class="auto-style14">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Height="45px" Text="-" Width="150px" Style="font-size: xx-large" OnClick="Button4_Click"   />
            </td>
            <td class="auto-style10"><strong>&nbsp;ONAYLI TARİF LİSTESİ</strong></td>
        </tr>
    </table>
       <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="541px" Height="259px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TaridAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>" ><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/2351364.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
