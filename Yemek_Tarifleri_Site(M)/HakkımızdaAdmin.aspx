<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.HakkımızdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 80px;
        }
        .auto-style6 {
            font-size: medium;
            margin-left: 0px;
        }
        .auto-style7 {
            width: 100%;
            height: 184px;
        }
        .auto-style8 {
            width: 100%;
            height: 57px;
        }
        .auto-style9 {
            font-size: large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="274px" Width="544px">
        <table class="auto-style7">
            <tr>
                <td class="auto-style5">
                    <em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6" Height="204px" TextMode="MultiLine" Width="533px"></asp:TextBox>
                    </em>
                </td>
            </tr>
        </table>

        <table class="auto-style8">
            <tr>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Height="51px" OnClick="Button1_Click" Text="GÜNCELLE" Width="538px" />
                    </strong></td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
