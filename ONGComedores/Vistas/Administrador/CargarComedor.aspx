<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargarComedor.aspx.cs" Inherits="Vistas.Administrador.CargarComedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" href="../StyleGeneral.css" />
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style6 {
            height: 23px;
            width: 148px;
        }
        .auto-style7 {
            width: 148px;
            height: 22px;
        }
        .auto-style8 {
            height: 32px;
            width: 148px;
            background-color: #0066CC;
        }
        .auto-style11 {
            width: 148px;
            background-color: #0066CC;
        }
        .auto-style12 {
            background-color: #0066CC;
        }
        .auto-style13 {
            height: 32px;
            background-color: #0066CC;
        }
        .auto-style15 {
            height: 17px;
            width: 148px;
            background-color: #0066CC;
        }
        .auto-style16 {
            height: 17px;
            background-color: #0066CC;
        }
        .auto-style17 {
            height: 17px;
        }
        .auto-style18 {
            height: 22px;
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
        <table class="Letra">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style6"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style7"></td>
                <td class="auto-style18">
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
                <td class="auto-style17"></td>
                <td class="auto-style15">CUIT Comedor:&nbsp; </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtCUIT" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
                <td class="auto-style17">
                    <asp:RequiredFieldValidator ID="rfvCUIT" runat="server" ControlToValidate="txtCUIT">Escriba un ID</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17">
                    <asp:RegularExpressionValidator ID="revCUIT" runat="server" ControlToValidate="txtCUIT" ValidationExpression="^\d+">Debe ingresar numeros</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">Provincia:&nbsp; </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlProvincias" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincias_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincias">Debe seleccionar una provincia</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">Localidad:&nbsp; </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlLocalidades" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidades">Debe escribir una localidad</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">Clasificacion:&nbsp;&nbsp; </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlClasificacion" runat="server">
                        <asp:ListItem>Seleccione una provincia</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvClasificacion" runat="server" ControlToValidate="ddlClasificacion">Debe ingresar una clasificacion</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">Direccion</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtDireccionCome" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccionCome">Debe agregar una direccion</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style8">&nbsp;Telefono</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtTelefonoComedor" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefonoComedor">Debe agregar un telefono</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">
                    <asp:RegularExpressionValidator ID="rev" runat="server" ControlToValidate="txtTelefonoComedor" ValidationExpression="^\d+">Debe ingresar numeros</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">
                    Servicios:</td>
                <td class="auto-style12">&nbsp;</td>
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
                <td class="auto-style11">
                    <asp:CheckBoxList ID="cblServicios" runat="server">
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        &nbsp;
            <br />
            <asp:Button ID="btnAgregarComedor" runat="server" Text="Agregar Comedor" Width="134px" OnClick="btnAgregarComedor_Click" />
        </div>
    </form>
</body>
</html>
