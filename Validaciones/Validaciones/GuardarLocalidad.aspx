<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuardarLocalidad.aspx.cs" Inherits="Validaciones.GuardarLocalidad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 419px;
        }
        .auto-style3 {
            width: 159px;
        }
        .auto-style4 {
            width: 159px;
            height: 24px;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style6 {
            width: 196px;
        }
        .auto-style7 {
            height: 24px;
            width: 196px;
        }
        .auto-style8 {
            width: 209px;
        }
        .auto-style9 {
            height: 24px;
            width: 209px;
        }
        .auto-style10 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Arial Narrow'; font-size: medium">
        &nbsp;&nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style10" colspan="4">Localidades</td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre de la localidad: </td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtLocalidad" runat="server" style="width: 128px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
            <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Ingrese la localidad">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
            <asp:Button ID="btnGuadarLocalidad" runat="server" OnClick="btGuardar_Click" Text="Guardar Localidad" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="4">Usuarios</td>
                </tr>
                <tr>
                    <td class="auto-style4">Nombre usuario</td>
                    <td class="auto-style7"> <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Debe ingresar un nombre de usuario">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Contraseña</td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Debe poner una contraseña">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Repetir Contraseña</td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtConfirmacion" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="rfvContraConfirm" runat="server" ControlToValidate="txtConfirmacion" ErrorMessage="Debe repetir la contraseña">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtConfirmacion" ErrorMessage="Las contraseñas deben ser las mismas">*</asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Correo Electrónico</td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Correo electronico no valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar un correo electronico">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">CP</td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RegularExpressionValidator ID="revCP" runat="server" ControlToValidate="txtCP" ErrorMessage="Debe ingresar un codigo postal valido" ValidationExpression="[1-9][0-9]{3}">*</asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" ErrorMessage="Debe ingresar un codigo postal">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Localidades</td>
                    <td class="auto-style6">
            <asp:DropDownList ID="ddlLocalidades" runat="server">
                <asp:ListItem>-- Seleccione Localidad --</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="rfvLoc" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Debe seleccionar una localidad" InitialValue="-- Seleccione Localidad --">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
            <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ValidationSummary ID="ResumenValidaciones" runat="server" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
