<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 213px;
        }
        .auto-style6 {
            width: 213px;
            text-align: right;
        }
        .auto-style7 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: large;
            font-weight: bold;
            margin-bottom: 0px;
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
            <td class="auto-style6"><strong>AD SOYAD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>MAİL ADRESİ:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>İÇERİK:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>YEMEK:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="35px" OnClick="Button1_Click" Text="ONAYLA" Width="326px" />
            </td>
        </tr>
    </table>
</asp:Content>
