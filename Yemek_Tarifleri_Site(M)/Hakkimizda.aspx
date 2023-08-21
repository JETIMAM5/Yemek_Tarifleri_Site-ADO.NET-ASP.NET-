<%@ Page Title="" Language="C#" MasterPageFile="~/Kulllanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifleri_Site_M_.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style6 {
            margin-top: 4px;
        }
        .auto-style7 {
            height: 32px;
            background-color: #CCFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style5">
        <strong>HAKKIMIZDA</strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="542px" Height="61px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style7">
    </div>
    <asp:Image ID="Image1" runat="server" CssClass="auto-style6" Height="323px" ImageUrl="~/Resimler/how_to_start_a_travel_blog_-_article_image.jpg" Width="542px" />
</asp:Content>
