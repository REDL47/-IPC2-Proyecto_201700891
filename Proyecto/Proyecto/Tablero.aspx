<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tablero.aspx.cs" Inherits="Proyecto.WebForm1" %>

<!DOCTYPE html>
<link href="StyleRegistro.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>iGameGt - Othello</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">

        <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">iGameGt</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/">Inicio</a></li>
                        <li><a runat="server" href="~/About">Iniciar Sesion</a></li>
                        <li><a runat="server" href="~/Contact">Registrarse</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <center>

    <main id="tablero">
     <div class="fila">
       <div class="casilla"></div>
       <div class="casilla">A</div>
       <div class="casilla">B</div>
       <div class="casilla">C</div>
       <div class="casilla">D</div>
       <div class="casilla">E</div>
       <div class="casilla">F</div>
       <div class="casilla">G</div>
       <div class="casilla">H</div>
       <div class="casilla"></div>
     </div>
     <div class="fila">
        <div class="casilla">
          <span>1</span>
        </div>
        <div id="A1" class="casilla tenue">
          <span></span>
        </div>
        <div id="B1" class="casilla opaca">
          <span></span>
        </div>
        <div id="C1" class="casilla tenue">
          <span></span>
        </div>
        <div id="D1" class="casilla opaca">
          <span></span>
        </div>
        <div id="E1" class="casilla tenue">
          <span></span>
        </div>
        <div id="F1" class="casilla opaca">
          <span></span>
        </div>
        <div id="G1" class="casilla tenue">
          <span></span>
        </div>
        <div id="H1" class="casilla opaca">
          <span></span>
        </div>
        <div class="casilla">
          <span>1</span>
        </div> 
     </div>
     <div class="fila">
        <div class="casilla">
          <span>2</span>
        </div>
        <div id="A2" class="casilla opaca">
          <span></span>
        </div>
        <div id="B2" class="casilla tenue">
          <span></span>
        </div>
        <div id="C2" class="casilla opaca">
          <span></span>
        </div>
        <div id="D2" class="casilla tenue">
          <span></span>
        </div>
        <div id="E2" class="casilla opaca">
          <span></span>
        </div>
        <div id="F2" class="casilla tenue">
          <span></span>
        </div>
        <div id="G2" class="casilla opaca">
          <span></span>
        </div>
        <div id="H2" class="casilla tenue">
          <span></span>
        </div>
        <div class="casilla">
          <span>2</span>
        </div> 
     </div>
     <div class="fila">
        <div class="casilla">
          <span>3</span>
        </div>
        <div id="A3" class="casilla tenue">
          <span>●</span>
        </div>
        <div id="B3" class="casilla opaca">
          <span>○</span>
        </div>
        <div id="C3" class="casilla tenue">
          <span></span>
        </div>
        <div id="D3" class="casilla opaca">
          <span></span>
        </div>
        <div id="E3" class="casilla tenue">
          <span></span>
        </div>
        <div id="F3" class="casilla opaca">
          <span></span>
        </div>
        <div id="G3" class="casilla tenue">
          <span></span>
        </div>
        <div id="H3" class="casilla opaca">
          <span></span>
        </div>
        <div class="casilla">
          <span>3</span>
        </div> 
     </div>
     <div class="fila">
        <div class="casilla">
          <span>4</span>
        </div>
        <div id="A4" class="casilla opaca">
          <span></span>
        </div>
        <div id="B4" class="casilla tenue">
          <span></span>
        </div>
        <div id="C4" class="casilla opaca">
          <span></span>
        </div>
        <div id="D4" class="casilla tenue">
          <span></span>
        </div>
        <div id="E4" class="casilla opaca">
          <span></span>
        </div>
        <div id="G4" class="casilla tenue">
          <span></span>
        </div>
        <div id="G4" class="casilla opaca">
          <span></span>
        </div>
        <div id="H4" class="casilla tenue">
          <span></span>
        </div>
        <div class="casilla">
          <span>4</span>
        </div>
      </div>
      <div class="fila">
        <div class="casilla">
          <span>5</span>
        </div>
        <div id="A5" class="casilla tenue">
          <span></span>
        </div>
        <div id="B5" class="casilla opaca">
          <span></span>
        </div>
        <div id="C5" class="casilla tenue">
          <span></span>
        </div>
        <div id="D5" class="casilla opaca">
          <span></span>
        </div>
        <div id="E5" class="casilla tenue">
          <span></span>
        </div>
        <div id="F5" class="casilla opaca">
          <span></span>
        </div>
        <div id="G5" class="casilla tenue">
          <span></span>
        </div>
        <div id="H5" class="casilla opaca">
          <span></span>
        </div>
        <div class="casilla">
          <span>5</span>
        </div> 
     </div>
     <div class="fila">
        <div class="casilla">
          <span>6</span>
        </div>
        <div id="A6" class="casilla opaca">
          <span></span>
        </div>
        <div id="B6" class="casilla tenue">
          <span></span>
        </div>
        <div id="C6" class="casilla opaca">
          <span></span>
        </div>
        <div id="D6" class="casilla tenue">
          <span></span>
        </div>
        <div id="E6" class="casilla opaca">
          <span></span>
        </div>
        <div id="F6" class="casilla tenue">
          <span></span>
        </div>
        <div id="G6" class="casilla opaca">
          <span></span>
        </div>
        <div id="H6" class="casilla tenue">
          <span></span>
        </div>
        <div class="casilla">
          <span>6</span>
        </div> 
     </div>
     <div class="fila">
        <div class="casilla">
          <span>7</span>
        </div>
        <div id="A7" class="casilla tenue">
          <span></span>
        </div>
        <div id="B7" class="casilla opaca">
          <span></span>
        </div>
        <div id="C7" class="casilla tenue">
          <span></span>
        </div>
        <div id="D7" class="casilla opaca">
          <span></span>
        </div>
        <div id="E7" class="casilla tenue">
          <span></span>
        </div>
        <div id="F7" class="casilla opaca">
          <span></span>
        </div>
        <div id="G7" class="casilla tenue">
          <span></span>
        </div>
        <div id="H7" class="casilla opaca">
          <span></span>
        </div>
        <div class="casilla">
          <span>7</span>
        </div> 
     </div>
     <div class="fila">
        <div class="casilla">
          <span>8</span>
        </div>
        <div id="A8" class="casilla opaca">
          <span></span>
        </div>
        <div id="B8" class="casilla tenue">
          <span></span>
        </div>
        <div id="C8" class="casilla opaca">
          <span></span>
        </div>
        <div id="D8" class="casilla tenue">
          <span></span>
        </div>
        <div id="E8" class="casilla opaca">
          <span></span>
        </div>
        <div id="F8" class="casilla tenue">
          <span></span>
        </div>
        <div id="G8" class="casilla opaca">
          <span></span>
        </div>
        <div id="H8" class="casilla tenue">
          <span></span>
        </div>
        <div class="casilla">
          <span>8</span>
        </div>
     </div>
     <div class="fila">
       <div class="casilla"></div>
       <div class="casilla">A</div>
       <div class="casilla">B</div>
       <div class="casilla">C</div>
       <div class="casilla">D</div>
       <div class="casilla">E</div>
       <div class="casilla">F</div>
       <div class="casilla">G</div>
       <div class="casilla">H</div>
       <div class="casilla"></div>
     </div>
         </main>
    </center>

  

    </form>
</body>
</html>
