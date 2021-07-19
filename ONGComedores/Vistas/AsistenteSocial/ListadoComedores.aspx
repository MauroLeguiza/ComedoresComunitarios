<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoComedores.aspx.cs" Inherits="Vistas.ListadoComedores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
           <link rel="stylesheet" href="../StyleGeneral.css" />
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
            width: 262px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 262px;
        }
        .auto-style6 {
            height: 22px;
            width: 262px;
        }
        .auto-style7 {
            height: 23px;
            width: 262px;
        }
        .auto-style8 {
            position: relative;
            display: block;
            height: 30px;
            width: 200px;
            border-radius: 4px;
            text-transform: uppercase;
            background-color: black;
            color: #fff;
            font-size: 15px;
            overflow: hidden;
            transition: all 500ms ease;
            border: 2px solid #0077bb;
            margin-bottom: 20px;
            z-index: 0;
            font-weight: 500;
            left: 1px;
            top: -1px;
        }
        .auto-style9 {
            height: 45px;
        }
        .auto-style10 {
            width: 262px;
            height: 45px;
        }
        .auto-style34 {
            background-color: #3366FF;
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
  
        <div>
        </div>
        <table class="Letra">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
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
                <td class="auto-style2"><strong>Comedores&nbsp;</strong></td>
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
                <td class="auto-style5">&nbsp;</td>
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
                <td class="auto-style9"></td>
                <td class="auto-style10">
                        <asp:Button CssClass="auto-style8" ID="btnMostrarTodo" runat="server" Text="Mostrar todo" OnClick="btnMostrarTodo_Click" />
                </td>
                <td rowspan="2">&nbsp;
                    <br />
                    Buscar por ID<br />
                            <asp:TextBox ID="txtFiltrar" runat="server" ValidationGroup="grupo1"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtFiltrar" ValidationGroup="grupo1">Ingrese un ID</asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="revNumeros" runat="server" ControlToValidate="txtFiltrar" ValidationExpression="^\d+" ValidationGroup="grupo1">Ingrese Numeros</asp:RegularExpressionValidator>
                    <br />
                            <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" ValidationGroup="grupo1" />
&nbsp;
                    <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar todo" ValidationGroup="grupo" />
                    <br />
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    <asp:GridView ID="grvComedores" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowCommand="grvComedores_RowCommand">
                            <Columns>
                                <asp:TemplateField HeaderText="ID">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_ID" runat="server" Text='<%# Bind("ID_Come") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_ID" runat="server" Text='<%# Bind("ID_Come") %>'></asp:Label>
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
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfv_eit_Telefono" runat="server" ControlToValidate="txt_eit_Telefono" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Ingrese un telefono</asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="rev_eit_Telefono" runat="server" ControlToValidate="txt_eit_Telefono" ForeColor="Red" ValidationExpression="^\d+">Ingrese un numero</asp:RegularExpressionValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Telefono" runat="server" Text='<%# Bind("Telefono_Come") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField ButtonType="Button" CommandName="EventoServicios" Text="Ver Servicios" />
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
                    <br />
                </td>
                <td class="auto-style9">
                    <br />
                    <br />
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:DataList ID="dlProvinciasASIS" runat="server">
                            <ItemTemplate>
                                <asp:Button CssClass="Botones"  ID="btnProvincias" runat="server" Text='<%# Eval("Nombre_Provincia") %>' CommandArgument='<%# Eval("Id_Provincia") %>' CommandName="EventoProvincia" OnCommand="btnProvincias_Command" />
                            </ItemTemplate>
                        </asp:DataList>
                </td>
                <td>
                    <br />
                    <br />
                    <br />
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
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style7"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
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
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
