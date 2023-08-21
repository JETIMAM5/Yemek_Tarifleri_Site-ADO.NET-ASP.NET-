<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="YemekDüzenle.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.YemekDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 169px;
        }
        .auto-style6 {
            margin-left: 40px;
        }
        .auto-style7 {
            text-align: right;
            margin-left: 40px;
        }
        .auto-style8 {
            width: 169px;
            text-align: right;
        }
        .auto-style9 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style10 {
            border: 2px solid #456879;
            border-radius: 10px;
            margin-left: 0px;
        }
        .auto-style11 {
            width: 169px;
            text-align: right;
            height: 44px;
        }
        .auto-style12 {
            text-align: right;
            height: 44px;
            margin-left: 40px;
        }
        .auto-style13 {
            width: 100%;
            height: 451px;
        }
        .auto-style14 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: large;
            font-weight: bold;
            margin-bottom: 0px;
            background-color: #FF9966;
        }
        .auto-style15 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: large;
            font-weight: bold;
            background-color: #FF9966;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style13">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>YEMEK AD :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Width="364px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>MALZEMELER:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" Height="100px" TextMode="MultiLine" Width="365px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>TARİF:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="364px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>KATEGORİ:</strong></td>
            <td class="auto-style7"><strong>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style10" Height="24px" Width="372px">
                </asp:DropDownList>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>FOTOĞRAF:</strong></td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="41px" Width="371px" />
                </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="42px" OnClick="Button1_Click" Text="GÜNCELLE" Width="373px" />
                </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Button ID="Button2" runat="server" Height="41px" Text="GÜNÜN YEMEĞİ SEÇ" Width="371px" CssClass="auto-style14" OnClick="Button2_Click" />
            </td>
        </tr>
      
    </table>
</asp:Content>
