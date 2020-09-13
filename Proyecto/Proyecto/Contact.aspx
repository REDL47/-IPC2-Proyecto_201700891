<%@ Page Title="Registrarse" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Proyecto.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:Panel ID="Panel1" runat="server" Height="449px" style="margin-left: 483px; margin-top: 19px" Width="396px" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center" ScrollBars="Auto">
        <center>
        <asp:Label ID="Label1" runat="server" Text="Registrarse" Font-Bold="True" Font-Names="Cooper Black" Font-Size="XX-Large"></asp:Label>
        </center>
        &nbsp;&nbsp;
        <br>
        <asp:Label ID="Label2" runat="server" Text="Nombres: " Font-Names="Cooper Black" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Names="Cooper Black" Font-Size="Medium" Text="Apellidos: "></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Cooper Black" Font-Size="Medium" Text="Usuario: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Cooper Black" Font-Size="Medium" Text="Contraseña: "></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Font-Names="Cooper Black" Font-Size="Medium" Text="Fecha Nacimiento: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server">YYYY-MM-DD</asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="Cooper Black" Font-Size="Medium" Text="Correo Electronico: "></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Font-Names="Cooper Black" Font-Size="Medium" Text="Pais:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox1" runat="server" Height="21px">
            <asp:ListItem Value="Guatemala"></asp:ListItem>
            <asp:ListItem Value="El Salvador"></asp:ListItem>
            <asp:ListItem Value="Otro"></asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Names="Cooper Black" Height="40px" OnClick="Button1_Click1" Text="Regristrar" Width="116px"/>
    </asp:Panel>
    
    
</asp:Content>
