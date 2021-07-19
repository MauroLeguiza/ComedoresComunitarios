<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAdministrador.aspx.cs" Inherits="Vistas.Administrador.MenuAdministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../StyleGeneral.css" />
    <style type="text/css">
        .auto-style9 {
            width: 178px;
        }
        .auto-style10 {
            width: 183px;
        }
        .auto-style16 {
            width: 186px;
        }
        .auto-style22 {
            font-size: x-large;
            width: 235px;
        }
        .auto-style26 {
            width: 235px;
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
        .auto-style27 {
            width: 101px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <%--MENU ENCABEZADO--%>
        <div id="MENU">
            <ul>
                <li><a href="CargarAsistente.aspx">Agregar Asistente</a></li>
                <li><a href="ListadoAsistentes.aspx">Listado Asistentes</a></li>
                <li><a href="CargarComedor.aspx">Agregar comedor</a></li>
                <li><a href="Comedores.aspx">Listado comedores</a></li>
                <li><a href="../Login.aspx">Salir</a></li>
                <li>&nbsp;<asp:Label ID="lblUsuarioLogeado" runat="server" ForeColor="White" Font-Bold="True"></asp:Label></li>
                <li></li>
            </ul>
        </div>
        <div>
            <table class="Letra">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style16">     
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style22">&nbsp;
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="lblNombreADMIN" runat="server" ForeColor="White"></asp:Label>

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
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
