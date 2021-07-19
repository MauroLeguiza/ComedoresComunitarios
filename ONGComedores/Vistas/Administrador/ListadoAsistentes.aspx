<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoAsistentes.aspx.cs" Inherits="Vistas.Administrador.ListadoAsistentes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="../StyleGeneral.css" />
    <style type="text/css">
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 10px;
        }
        .auto-style7 {
            height: 23px;
            width: 10px;
        }
        .auto-style8 {
            height: 21px;
        }
        .auto-style9 {
            width: 10px;
            height: 21px;
        }
        .auto-style10 {
            height: 54px;
        }
        .auto-style11 {
            width: 10px;
            height: 54px;
        }
        .auto-style12 {
            width: 265px;
        }
        .auto-style13 {
            height: 54px;
            width: 265px;
        }
        .auto-style15 {
            height: 23px;
            width: 265px;
            text-align: left;
        }
        .auto-style16 {
            height: 21px;
            width: 265px;
        }
        .auto-style17 {
            height: 33px;
        }
        .auto-style18 {
            height: 33px;
            width: 265px;
        }
        .auto-style19 {
            width: 10px;
            height: 33px;
        }
        </style>
</head>
<body>
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
    <form id="form1" runat="server">
        <table class="Letra">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12"><span class="auto-style4"><strong>Asistentes:</strong></span></td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style13">Legajo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    <asp:TextBox ID="txtLegajo" runat="server" ValidationGroup="grupo1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLegajo" runat="server" OnClick="btnLegajo_Click" Text="Filtrar" ValidationGroup="grupo1" />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLegajo" ForeColor="Red">Ingresar legajo</asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="lblMensajeLegajo" runat="server"></asp:Label>
                    <br />
                    <br />
                    Apellido:<br />
                    <asp:TextBox ID="txtApellido" runat="server" ValidationGroup="grupo2"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnFiltrar2" runat="server" OnClick="btnFiltrar2_Click" Text="Filtrar" ValidationGroup="grupo2" />
                    <br />
                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ForeColor="Red">Ingresar apellido</asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblMensajeApellido" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar todos" ValidationGroup="grupo3" />
                    <br />
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                </td>
                <td class="auto-style19"></td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
                <td class="auto-style19"></td>
                <td class="auto-style17">
                    
                </td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style15">
                    <asp:GridView ID="grdAsistentes" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowCancelingEdit="grdAsistentes_RowCancelingEdit" OnRowDeleting="grdAsistentes_RowDeleting" OnRowEditing="grdAsistentes_RowEditing" OnRowUpdating="grdAsistentes_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Legajo">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Legajo" runat="server" Text='<%# Bind("Legajo_ONG") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Legajo" runat="server" Text='<%# Bind("Legajo_ONG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Administrador">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="ch_eit_Administrador" runat="server" Checked='<%# Bind("nivelUsuario_ONG") %>' />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="ch_it_Nivel" runat="server" Checked='<%# Bind("nivelUsuario_ONG") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contraseña">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Contraseña" runat="server" Text='<%# Bind("Contraseña_ONG") %>'></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="rfv_eit_Contra" runat="server" ControlToValidate="txt_eit_Contraseña" ForeColor="Red">Ingrese una contraseña</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Contra" runat="server" Text='<%# Bind("Contraseña_ONG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Nombre" runat="server" Text='<%# Bind("nombre_ONG") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("Nombre_ONG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellido">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Apellido" runat="server" Text='<%# Bind("apellido_ONG") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Bind("apellido_ONG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Email" runat="server" Text='<%# Bind("Email_ONG") %>'></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="rfv_eit_Email" runat="server" ControlToValidate="txt_eit_Email" ForeColor="Red">Ingrese un Email</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="rev_eit_Email" runat="server" ControlToValidate="txt_eit_Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Ingrese un Email</asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Email" runat="server" Text='<%# Bind("Email_ONG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Direccion">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Direccion" runat="server" Text='<%# Bind("Direccion_ONG") %>'></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="rfv_eit_Direccion" runat="server" ControlToValidate="txt_eit_Direccion" ForeColor="Red">Ingrese una direccion</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Direccion" runat="server" Text='<%# Bind("Direccion_ONG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DNI">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Dni" runat="server" Text='<%# Bind("DNI_ONG") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_DNI" runat="server" Text='<%# Bind("DNI_ONG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fecha Ingreso">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_Fecha" runat="server" Text='<%# Bind("fechaIngreso_ONG") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Fecha" runat="server" Text='<%# Bind("fechaIngreso_ONG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Telefono">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Telefono" runat="server" Text='<%# Bind("telefono_ONG") %>'></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="rfv_eit_tel" runat="server" ControlToValidate="txt_eit_Telefono" ForeColor="Red">Ingrese un telefono</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="rev_eit_Telefono" runat="server" ControlToValidate="txt_eit_Telefono" ForeColor="Red" ValidationExpression="^\d+">Ingrese numeros</asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Telefono" runat="server" Text='<%# Bind("telefono_ONG") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style7"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12">
                    
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style16"></td>
                <td class="auto-style9"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
