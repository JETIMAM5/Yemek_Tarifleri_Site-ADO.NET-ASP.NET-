<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            width: 99%;
            height: 329px;
            margin-bottom: 27px;
        }
        .auto-style10 {
        width: 187px;
    }
    .auto-style11 {
        width: 187px;
        text-align: right;
    }
        .auto-style12 {
            width: 187px;
            height: 26px;
            text-align: right;
        }
        .auto-style13 {
            height: 26px;
            width: 338px;
        }
        .auto-style14 {
            width: 187px;
            text-align: right;
            height: 28px;
        }
        .auto-style15 {
            height: 28px;
            width: 338px;
        }
        .auto-style16 {
            width: 187px;
            text-align: right;
            height: 110px;
        }
        .auto-style17 {
            height: 110px;
            width: 338px;
        }
        .auto-style18 {
            width: 187px;
            text-align: right;
            height: 30px;
        }
        .auto-style19 {
            height: 30px;
            width: 338px;
        }
        .auto-style20 {
            width: 338px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Tarif Ad:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox4" runat="server" Width="337px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Malzemeler:</strong></td>
            <td class="auto-style20">
                <asp:TextBox ID="TextBox5" runat="server" Width="337px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Yapılış:</strong></td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="340px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Tarif Resmi:</strong></td>
            <td class="auto-style19">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="346px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox7" runat="server" Width="337px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Öneren Mail</strong></td>
            <td class="auto-style20">
                <asp:TextBox ID="TextBox8" runat="server" Width="337px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Kategori:</strong></td>
            <td class="auto-style20">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="347px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style20">
                <asp:Button ID="Button1" runat="server" Text="Onayla" Width="348px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
