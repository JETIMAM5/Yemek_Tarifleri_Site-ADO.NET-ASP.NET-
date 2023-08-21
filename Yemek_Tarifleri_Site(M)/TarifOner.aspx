<%@ Page Title="" Language="C#" MasterPageFile="~/Kulllanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            height: 120px;
        }
        .auto-style8 {
            height: 265px;
        }
        .auto-style10 {
            height: 30px;
            width: 130px;
        }
        .auto-style11 {
            height: 120px;
            width: 130px;
            text-align: right;
        }
        .auto-style12 {
            height: 265px;
            width: 130px;
            text-align: right;
        }
        .auto-style13 {
            width: 130px;
        }
        .auto-style14 {
            height: 30px;
            width: 130px;
            text-align: right;
        }
        .auto-style15 {
            border: 2px solid #456879;
            border-radius: 10px;
            margin-top: 7px;
        }
        .auto-style16 {
            height: 41px;
            width: 130px;
            text-align: right;
        }
        .auto-style17 {
            height: 41px;
        }
        .auto-style18 {
            height: 39px;
            width: 130px;
            text-align: right;
        }
        .auto-style19 {
            height: 39px;
        }
        .auto-style20 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table class="auto-style5">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Tarif Ad:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtTarifAdi" runat="server" Width="400px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Malzemeler:</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="110px" TextMode="MultiLine" Width="400px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Yapılış:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="257px" TextMode="MultiLine" Width="400px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Resim:</strong></td>
            <td class="auto-style19">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="400px" CssClass="auto-style20" Height="29px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style17">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="400px" CssClass="auto-style20" Height="29px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Mail Adresi:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="400px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style6">
                <asp:Button ID="BtnTarifOner" runat="server" OnClick="BtnTarifOner_Click" Text="Tarif Öner" Width="406px" CssClass="fb8" Height="32px" />
            </td>
        </tr>
    </table>
</asp:Content>

