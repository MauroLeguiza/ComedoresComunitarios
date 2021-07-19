<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comedores.aspx.cs" Inherits="Vistas.Administrador.Comedores"  EnableEventValidation="false"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
         <link rel="stylesheet" href="../StyleGeneral.css" />
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
            width: 172px;
            height: 41px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 172px;
        }
        .auto-style8 {
            height: 23px;
            width: 172px;
        }
        .auto-style9 {
            height: 23px;
            width: 10px;
        }
        .auto-style10 {
            width: 10px;
        }
        .auto-style11 {
            height: 116px;
        }
        .auto-style12 {
            width: 10px;
            height: 116px;
        }
        .auto-style14 {
            height: 23px;
            width: 250px;
        }
        .auto-style15 {
            width: 250px;
        }
        .auto-style16 {
            text-align: left;
        }
        .auto-style17 {
            height: 41px;
        }
        .auto-style18 {
            width: 10px;
            height: 41px;
        }
        .auto-style19 {
            width: 250px;
            height: 41px;
        }
        .auto-style20 {
            height: 23px;
            width: 9px;
        }
        .auto-style21 {
            width: 9px;
        }
        .auto-style22 {
            height: 41px;
            width: 9px;
        }
        .auto-style24 {
            height: 26px;
        }
        .auto-style25 {
            width: 172px;
            height: 26px;
        }
        .auto-style26 {
            width: 10px;
            height: 26px;
        }
        .auto-style27 {
            width: 250px;
            height: 26px;
        }
        .auto-style28 {
            width: 9px;
            height: 26px;
        }
        .auto-style29 {
            height: 23px;
            width: 151px;
        }
        .auto-style30 {
            width: 151px;
        }
        .auto-style31 {
            height: 41px;
            width: 151px;
        }
        .auto-style33 {
            height: 26px;
            width: 151px;
        }
        .auto-style34 {
            background-color: #3366FF;
        }
        .auto-style35 {
            font-size: large;
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
                    <td class="auto-style6"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style5"><strong>Comedores&nbsp;</strong></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style15" rowspan="2">
                        <div class="auto-style16">
                            B<span class="auto-style35">uscar por ID</span><br />
                            <asp:TextBox ID="txtFiltrar" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfv_ID" runat="server" ControlToValidate="txtFiltrar" Display="None" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
&nbsp;<br />
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                            <br />
                        </div>
                        <asp:GridView ID="grvComedores" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowCancelingEdit="grvComedores_RowCancelingEdit" OnRowDeleting="grvComedores_RowDeleting" OnRowEditing="grvComedores_RowEditing" OnRowUpdating="grvComedores_RowUpdating" OnRowCommand="grvComedores_RowCommand">
                            <Columns>
                                <asp:TemplateField HeaderText="ID">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_ID" runat="server" Text='<%# Bind("ID_Come") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_eit_ID" runat="server" Text='<%# Bind("ID_Come") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CUIT">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Cuit" runat="server" Text='<%# Bind("CUIT_Come") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_CUIT" runat="server" Text='<%# Bind("CUIT_Come") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Provincia">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Provincia" runat="server" Text='<%# Bind("Nombre_Provincia") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Provincia" runat="server" Text='<%# Bind("Nombre_Provincia") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Localidad">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Localidad" runat="server" Text='<%# Bind("Nombre_Localidad") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Localidad" runat="server" Text='<%# Bind("Nombre_Localidad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Clasificacion">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Clasificacion" runat="server" Text='<%# Bind("Nombre_Clasificacion") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Clasificacion" runat="server" Text='<%# Bind("Nombre_Clasificacion") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Direccion">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Direccion" runat="server" Text='<%# Bind("Dirección") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Direccion" runat="server" Text='<%# Bind("Dirección") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Telefono">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Telefono" runat="server" Text='<%# Bind("Telefono_Come") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Telefono" runat="server" Text='<%# Bind("Telefono_Come") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField ButtonType="Button" CommandName="EventoServicios" Text="Ver servicios" />
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
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style29"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style11">
                        <asp:Button CssClass="Botones" ID="btnMostrarTodo" runat="server" Text="Mostrar todo" OnClick="btnMostrarTodo_Click" />
                        <asp:DataList ID="dlProvinciasADMIN" runat="server">
                            <ItemTemplate>
                                <asp:Button CssClass="Botones"  ID="btnProvincias" runat="server" Text='<%# Eval("Nombre_Provincia") %>' CommandArgument='<%# Eval("Id_Provincia") %>' CommandName="EventoProvincia" OnCommand="btnProvincias_Command" />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style11">
                    </td>
                    <td class="auto-style12">
                    </td>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lbl_id_comedor" runat="server" CssClass="auto-style34"></asp:Label>
                        <asp:CheckBoxList ID="cbServicios" runat="server" value="Check Value" readonly="readonly" checked onclick="javascript: return false;" CssClass="auto-style34">
                        </asp:CheckBoxList>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style24"></td>
                    <td class="auto-style25">
                        </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style33"></td>
                    <td class="auto-style28"></td>
                    <td class="auto-style24"></td>
                    <td class="auto-style24"></td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
