<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuardarLocalidad.aspx.cs" Inherits="Validaciones.GuardarLocalidad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Arial Narrow'; font-size: medium">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Localidades<br />
            <br />
            Nombre de la localidad:
            <asp:TextBox ID="txtLocalidad" runat="server" style="width: 128px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Ingrese la localidad"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGuadarLocalidad" runat="server" OnClick="btGuardar_Click" Text="Guardar Localidad" />
            <br />
            <br />
            Nombre usuario:&nbsp; <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            <br />
            <br />
            Contraseña:&nbsp;
            <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
            <br />
            <br />
            Repetir contraseña:
            <asp:TextBox ID="txtConfirmacion" runat="server"></asp:TextBox>
            <br />
            <br />
            Correo Electronico:
            <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            <br />
            <br />
            CP:
            <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
            <br />
            <br />
            Localidades:&nbsp;
            <asp:DropDownList ID="ddlLocalidades" runat="server">
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" />
        </div>
    </form>
</body>
</html>
