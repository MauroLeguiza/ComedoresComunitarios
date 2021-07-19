<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerInforme.aspx.cs" Inherits="Vistas.VerInforme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
         <link rel="stylesheet" href="../StyleGeneral.css" />
    <style type="text/css">
        .auto-style5 {
            width: 146px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 146px;
            height: 26px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 146px;
            height: 23px;
        }
        .auto-style10 {
            margin-right: 0px;
        }
        .auto-style11 {
            height: 40px;
        }
        .auto-style12 {
            width: 146px;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div id="MENU">
            <ul>
               <li><a href="ListadoComedores.aspx">Ver comedores</a></li>
                <li><a href="CargarInforme1.aspx">Cargar informe</a></li>
                <li><a href="VerInforme.aspx">Ver informe</a></li>
                <li><a href="../Login.aspx">Salir</a></li>
                 <li>&nbsp;<asp:Label ID="lblUsuarioLogeado" runat="server" ForeColor="White" Font-Bold="True"></asp:Label></li>

            </ul>
                </div>

        <table class="Letra">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">Fecha:<br />
                    <br />
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
                </td>
                <td>
                        <asp:Calendar ID="CalendarFechaInforme" runat="server" BackColor="#0000CC" ForeColor="White">
                            <DayHeaderStyle BackColor="#000066" />
                            <TitleStyle BackColor="#0000CC" />
                    </asp:Calendar>
                    </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">ID del Comedor:&nbsp; </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtIdCome" runat="server"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="btnIdComedor" runat="server" OnClick="Button1_Click" Text="Filtrar" ValidationGroup="grupo1" />
                    <asp:RequiredFieldValidator ID="rfv_IDcome" runat="server" ControlToValidate="txtIdCome" ForeColor="Red" ValidationGroup="grupo1">Ingrese un ID </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td >Numero de informe:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtNumInfo" runat="server"></asp:TextBox>
                &nbsp;&nbsp;<asp:Button ID="btnInforme" runat="server" OnClick="btnInforme_Click" Text="Filtrar" ValidationGroup="grupo2" />
                    <asp:RequiredFieldValidator ID="rfv_NumInfo" runat="server" ControlToValidate="txtNumInfo" ForeColor="Red" ValidationGroup="grupo2">Ingrese un Informe</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    Legajo:</td>
                <td>
                    <asp:TextBox ID="txtBusquedaLegajo" runat="server"></asp:TextBox>
                &nbsp;&nbsp;<asp:Button ID="btnLegajo" runat="server" OnClick="btnLegajo_Click" Text="Filtrar" ValidationGroup="grupo3" />
                    <asp:RequiredFieldValidator ID="rfv_NumInfo0" runat="server" ControlToValidate="txtBusquedaLegajo" ForeColor="Red" ValidationGroup="grupo3">Ingrese un Legajo</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
&nbsp;&nbsp; </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style8">
                    <asp:Button ID="btnMostrarInformes" runat="server" Text="Mostrar todos los infomes" OnClick="btnMostrarInformes_Click" ValidationGroup="grupo" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style11">
                    <br />
                    <asp:Label ID="lblpromedio" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
                    <asp:GridView ID="grvInformes" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" AutoGenerateColumns="False" CellSpacing="2" CssClass="auto-style10" OnRowCommand="grvInformes_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="ID Informe">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_IT_IdInforme" runat="server" Text='<%# Bind("ID_Informe") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fecha">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_IT_Fecha" runat="server" Text='<%# Bind("Fecha_Informe") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Rango de edad">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_IT_RangoEdad" runat="server" Text='<%# Bind("Rango") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cantidad de personas">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_IT_CantidadPersonas" runat="server" Text='<%# Bind("CantidadPersonas_Informe") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Prestacion">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_IT_Prestacion" runat="server" Text='<%# Bind("Nombre_Prestacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Legajo">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_IT_Legajo" runat="server" Text='<%# Bind("Legajo_Informe") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID Comedor">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_IT_IDCome" runat="server" Text='<%# Bind("ID_Comedor_Informe") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:ButtonField ButtonType="Button" CommandName="EventoComensales" Text="Ver comensales" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
        </div>
    </form>
</body>
</html>
