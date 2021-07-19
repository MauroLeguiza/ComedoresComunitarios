<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargarAsistente.aspx.cs" Inherits="Vistas.Administrador.CargarAsistente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="../StyleGeneral.css" />
    <style type="text/css">
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 64px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            width: 115px;
        }
        .auto-style9 {
            height: 23px;
            width: 115px;
        }
        .auto-style10 {
            height: 30px;
            width: 115px;
        }
        .auto-style11 {
            height: 64px;
            width: 115px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            width: 115px;
            height: 26px;
        }
        .auto-style14 {
            height: 17px;
        }
        .auto-style15 {
            height: 17px;
            width: 115px;
        }
        .auto-style16 {
            height: 52px;
        }
        .auto-style17 {
            height: 52px;
            width: 115px;
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

            </ul>

        </div>
        <div>
            <table class="Letra">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">Nombre:&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtNombreAs" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreAs">Debe escribir un nombre</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">Apellido:&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtApeAS" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApeAS">Debe escribir un apellido</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">DNI:&nbsp; </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtDNIAS" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNIAS">Debe escribir un DNI</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12">
                        <asp:RegularExpressionValidator ID="revDNI" runat="server" ControlToValidate="txtDNIAS" ValidationExpression="^\d+">Debe ingresar numeros</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style9">Email:&nbsp; </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmailAS" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmailAS">Debe escribir un email</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmailAS" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Debe ingresar un email</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">Legajo:&nbsp; </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtLegajoAS" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="rfvLegajo" runat="server" ControlToValidate="txtLegajoAS">Debe escribir un legajo</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">Telefono:&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtTelefonoAS" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefonoAS">Debe escribir un telefono</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefonoAS" ValidationExpression="^\d+">Debe ingresar numeros</asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">Fecha de ingreso:</td>
                    <td>
                        <asp:Calendar ID="CalendarFechaIngreso" runat="server" BackColor="#0000CC" ForeColor="White">
                            <DayHeaderStyle BackColor="#000066" />
                            <TitleStyle BackColor="#0000CC" />
                        </asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style10">Contraseña:&nbsp; </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtContraseñasAS" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseñasAS">Debe escribir una contraseña</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style9">Repetir contraseña:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtrepetircontraseña" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblmensajecontra" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15">
                        Nivel usuario:</td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="ddlNivelUsuario" runat="server">
                            <asp:ListItem Value="false">Usuario</asp:ListItem>
                            <asp:ListItem Value="true">Administrador</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="rfvNivel" runat="server" ControlToValidate="ddlNivelUsuario">Debe seleccionar un nivel</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style17">
                        Direccion:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtDireccionAS" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccionAS">Debe escribir una direccion</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="btnAgregarUsuario" runat="server" Text="Agregar" Width="80px" OnClick="btnAgregarUsuario_Click" OnClientClick="return confirm('¿Desea agregar al usuario?')" />
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
