<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuardarLocalidad.aspx.cs" Inherits="Validaciones.GuardarLocalidad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 419px;
            margin-left: 244px;
        }
        .auto-style6 {
            width: 156px;
        }
        .auto-style7 {
            height: 24px;
            width: 156px;
        }
        .auto-style8 {
            width: 245px;
        }
        .auto-style9 {
            height: 24px;
            width: 245px;
        }
        .auto-style10 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style11 {
            width: 334px;
        }
        .auto-style12 {
            height: 24px;
            width: 334px;
            text-align: right;
        }
        .auto-style13 {
            width: 334px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Arial Narrow'; font-size: medium">
        &nbsp;&nbsp;<table class="auto-style1" draggable="true">
                <tr>
                    <td class="auto-style10" colspan="3">Localidades</td>
                </tr>
                <tr>
                    <td class="auto-style13">Nombre de la localidad: </td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtLocalidad" runat="server" style="width: 128px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
            <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Ingrese la localidad" ValidationGroup="V1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style6">
            <asp:Button ID="btnGuadarLocalidad" runat="server" OnClick="btGuardar_Click" Text="Guardar Localidad" ValidationGroup="V1" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="3">Usuarios</td>
                </tr>
                <tr>
                    <td class="auto-style12">Nombre usuario</td>
                    <td class="auto-style7"> <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Debe ingresar un nombre de usuario" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Contraseña</td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Debe poner una contraseña" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Repetir Contraseña</td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtConfirmacion" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="rfvContraConfirm" runat="server" ControlToValidate="txtConfirmacion" ErrorMessage="Debe repetir la contraseña" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtConfirmacion" ErrorMessage="Las contraseñas deben ser iguales" ValidationGroup="V2">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Correo Electrónico</td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Correo electronico no valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="V2">*</asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar un correo electronico" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">CP</td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtCP" runat="server" MaxLength="4"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RegularExpressionValidator ID="revCP" runat="server" ControlToValidate="txtCP" ErrorMessage="Debe ingresar un codigo postal valido (4 digitos maximo)" ValidationExpression="[1-9][0-9]{3}" ValidationGroup="V2">*</asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" ErrorMessage="Debe ingresar un codigo postal" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Localidades</td>
                    <td class="auto-style6">
            <asp:DropDownList ID="ddlLocalidades" runat="server" ValidationGroup="V2">
                <asp:ListItem>-- Seleccione Localidad --</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="rfvLoc" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="Debe seleccionar una localidad" InitialValue="-- Seleccione Localidad --" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style6">
            <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" OnClick="btnGuardarUsuario_Click" ValidationGroup="V2" />
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="lblMensajeBienvenido" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="V1" />
                    </td>
                    <td class="auto-style6">
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="V2" />
                    </td>
                    <td class="auto-style8">
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btninicio" runat="server" OnClick="btninicio_Click" Text="Ir a Inicio.aspx" Width="112px" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
