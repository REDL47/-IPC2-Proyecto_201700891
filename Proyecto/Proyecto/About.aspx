<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Proyecto.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="263px" style="margin-left: 483px; margin-top: 19px" Width="396px" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center" ScrollBars="Auto">
        <center>
        <asp:Label ID="Label1" runat="server" Text="Registrarse" Font-Bold="True" Font-Names="Cooper Black" Font-Size="XX-Large"></asp:Label>
        </center>
        &nbsp;<br>
        &nbsp;<br /><asp:Label ID="Label4" runat="server" Font-Names="Cooper Black" Font-Size="Medium" Text="Usuario: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Cooper Black" Font-Size="Medium" Text="Contraseña: "></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Names="Cooper Black" Height="40px" OnClick="Button1_Click1" Text="Entrar" Width="116px" />
    </asp:Panel>
</asp:Content>
