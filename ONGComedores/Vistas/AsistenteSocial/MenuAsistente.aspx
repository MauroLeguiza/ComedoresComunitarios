<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAsistente.aspx.cs" Inherits="Vistas.MenuAsistente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" href="../StyleGeneral.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 231px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 231px;
            height: 23px;
        }
        .auto-style5 {
            width: 198px;
        }
        .auto-style6 {
            height: 23px;
            width: 198px;
        }
        .auto-style9 {
            width: 307px;
        }
        .auto-style10 {
            height: 23px;
            width: 307px;
        }
        .auto-style15 {
            color: white;
            width: 171px;
        }
        .auto-style16 {
            width: 171px;
            height: 23px;
        }
        .auto-style17 {
            width: 171px;
        }

        /* --------STYLE SLIDE------------*/

        .slider {
            width: 800px;
            height: 400px;
            padding: 30px;
            margin: auto;
            overflow: hidden;
        }

        .slider ul {
            display: flex;
            padding: 0;
            width: 300%;

            animation: cambio 15s infinite alternate;
        }

        .slider li {
            width: inherit;
            height: inherit;
            list-style: none;
        }

        .slider img{
            width: 100%;
            height: 400px;
        }

         @keyframes cambio{
                0% { margin-left: 0; }
                35% { margin-left: 0; }
                
                45% { margin-left: -100%; }
                66% { margin-left: -100%; }

                76% { margin-left: -200%; }
                100% { margin-left: -200%; }
         }
        
    /*---------------FIN SLIDE---------------*/
        .auto-style18 {
            height: 23px;
            width: 200px;
        }
        .auto-style19 {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <%--MENU ENCABEZADO--%>
        <div id="MENU">
            <ul>
                <li><a href="ListadoComedores.aspx">Ver comedores</a></li>
                <li><a href="CargarInforme1.aspx">Cargar informe</a></li>
                <li><a href="VerInforme.aspx">Ver informe</a></li>
                <li><a href="../Login.aspx">Salir</a></li>
                <li>&nbsp;<asp:Label ID="lblUsuarioLogeado" runat="server" ForeColor="White" Font-Bold="True"></asp:Label></li>
            </ul>

        </div>
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style16"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
                <td class="auto-style6"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="lblNombreUsuario" runat="server" ForeColor="White"></asp:Label>
                    <br />
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style6"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">&nbsp;
  <%------------------ INICIO SLIDE ---------------------%>
                        <div class="slider">
                              <ul>
                                <li id="slide1">
                                  <img src="https://pxb.cdn.eldiariodelarepublica.com/republica/082017/1503239502346.webp?cw=312&ch=175&extw=jpg"/>
                                </li>
                                <li id="slide2">
                                  <img src="https://www.alatinoamericana-naf.com/wp-content/uploads/cropped-kids_02-1.jpg"/>
                                </li>
                                <li id="slide3">
                                  <img src="https://www.exitoysuperacionpersonal.com/wp-content/uploads/2021/04/frases-de-Solidaridad-3.jpg"/>
                                </li>
                              </ul>
                    </div>
   <%-------------------- FIN SLIDE ----------------------%>



                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style16"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
                <td class="auto-style6"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style16"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
                <td class="auto-style6"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
        </table>
    </form>
</body>
</html>
