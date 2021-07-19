<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style2 {
            width: 104px;
        }
        .auto-style3 {
            width: 352px;
        }
        .auto-style4 {
            height: 70px;
        }
        .auto-style5 {
            width: 352px;
            height: 70px;
        }
        .auto-style6 {
            width: 104px;
            height: 70px;
        }
        .auto-style7 {
            height: 22px;
        }
        .auto-style8 {
            width: 352px;
            height: 22px;
        }
        .auto-style9 {
            width: 104px;
            height: 22px;
        }
        .auto-style10 {
            height: 27px;
        }
        .auto-style11 {
            width: 352px;
            height: 27px;
        }
        .auto-style12 {
            color: #ffffff;
            font-size: 15px;
            margin-top: 55px;
            margin-bottom: 35px;
            height: 27px;
        }
        .auto-style13 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style13">
        <table class="login-form">
  
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="letras">Bienvenido</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12">LEGAJO:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="textbox" ></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="letras1">CONTRASEÑA:</td>
                <td>
                    <asp:TextBox ID="txtContra" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4">
                    <br />
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                    <br />
                    <br />
                    <asp:HyperLink ID="hlOlvide" runat="server" Font-Italic="False" Font-Overline="False" Font-Underline="True" ForeColor="White" NavigateUrl="~/OlvideContraseña.aspx">Olvide mi contraseña</asp:HyperLink>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            </table>
            <br />
            <asp:Label ID="lblMensajeLogin" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
        <div>
        </div>
        </div>
    </form>
</body>
</html>
