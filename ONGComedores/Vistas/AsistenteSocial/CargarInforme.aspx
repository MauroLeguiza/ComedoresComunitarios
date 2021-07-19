<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargarInforme.aspx.cs" Inherits="Vistas.CargarInforme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="../StyleGeneral.css" />
    <style type="text/css">
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 43px;
        }
        .auto-style9 {
            height: 43px;
            width: 172px;
            background-color: #3366FF;
        }
        .auto-style10 {
            height: 23px;
            width: 172px;
        }
        .auto-style15 {
            height: 30px;
        }
        .auto-style17 {
            width: 147px;
            height: 30px;
            background-color: #3366FF;
        }
        .auto-style18 {
            height: 46px;
        }
        .auto-style20 {
            width: 147px;
            height: 46px;
            background-color: #3366FF;
        }
        .auto-style21 {
            color: white;
            height: 23px;
            width: 172px;
            background-color: #3366FF;
        }
        .auto-style22 {
            width: 172px;
            height: 22px;
        }
        .auto-style23 {
            color: white;
            width: 172px;
            background-color: #3366FF;
        }
        .auto-style24 {
            color: white;
            width: 172px;
            height: 30px;
            background-color: #3366FF;
        }
        .auto-style26 {
            height: 23px;
            width: 172px;
            background-color: #3366FF;
        }
        .auto-style27 {
            width: 172px;
            background-color: #3366FF;
        }
        .auto-style28 {
            height: 23px;
            width: 147px;
        }
        .auto-style29 {
            width: 147px;
            height: 22px;
        }
        .auto-style30 {
            width: 147px;
            background-color: #3366FF;
        }
        .auto-style31 {
            height: 23px;
            width: 147px;
            background-color: #3366FF;
        }
        .auto-style32 {
            height: 43px;
            width: 147px;
            background-color: #3366FF;
        }
        .auto-style33 {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--MENU ENCABEZADO--%>
        
        <table class="Letra">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style10">
                    <asp:Label ID="lblIdInforme" runat="server"></asp:Label>
                </td>
                <td class="auto-style28"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
      
                <td class="auto-style22">
                    <asp:Label ID="lblmensaje1" runat="server"></asp:Label>
                </td>
                <td class="auto-style29"></td>
                <td class="auto-style33"></td>
                <td class="auto-style33"></td>
                <td class="auto-style33"></td>
                <td class="auto-style33"></td>
                <td class="auto-style33"></td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style21"><strong>Cargar comensales</strong></td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style23"><strong>DNI Comensal:</strong></td>
                <td class="auto-style20"><asp:TextBox ID="txtDNIComensal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNIComensal" ForeColor="Red" ValidationGroup="grupo1">Ingrese DNI</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24"><strong>Nombre:</strong></td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtNombreComensal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreComensal" ForeColor="Red" ValidationGroup="grupo1">Ingrese Nombre</asp:RequiredFieldValidator>
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
                <td class="auto-style15"></td>
                <td class="auto-style23"><strong>Apellido:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtApellidoComensal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellidoComensal" ForeColor="Red" ValidationGroup="grupo1">Ingrese Apellido</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">
                    <strong>Edad:</strong></td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtEdadComensal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEdad" runat="server" ControlToValidate="txtEdadComensal" ForeColor="Red" ValidationGroup="grupo1">Ingrese Edad</asp:RequiredFieldValidator>
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
                <td class="auto-style26">
                    <strong>Telefono:<br />
&nbsp;</strong></td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtTelefonoComensal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefonoComensal" ForeColor="Red" ValidationGroup="grupo1">Ingrese Telefono</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style26">
                    <asp:Button ID="btnAgregarInforme" runat="server" Text="Agregar comensal" OnClick="btnAgregarInforme_Click" ValidationGroup="grupo1" />
                </td>
                <td class="auto-style31">
                    <asp:Button ID="btnTerminarInforme" runat="server" Text="Terminar de cargar" PostBackUrl="~/AsistenteSocial/CargarInforme1.aspx" OnClick="btnTerminarInforme_Click" ValidationGroup="grupo" />
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
