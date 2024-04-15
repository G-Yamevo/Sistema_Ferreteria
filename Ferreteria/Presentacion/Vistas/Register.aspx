<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Presentacion.Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/Vistas/CSS/StyleSheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 427px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            height: 21px;
            width: 492px;
        }
        .auto-style6 {
            height: 26px;
            width: 492px;
        }
        .auto-style7 {
            width: 492px;
        }
        .auto-style8 {
            width: 111px;
        }
        .auto-style9 {
            height: 21px;
            width: 111px;
        }
        .auto-style10 {
            height: 26px;
            width: 111px;
        }
        .auto-style11 {
            height: 21px;
            width: 272px;
        }
        .auto-style12 {
            height: 26px;
            width: 272px;
        }
        .auto-style13 {
            width: 272px;
        }
        .auto-style14 {
            width: 492px;
            height: 22px;
        }
        .auto-style15 {
            width: 111px;
            height: 22px;
        }
        .auto-style16 {
            width: 272px;
            height: 22px;
        }
        .auto-style17 {
            height: 22px;
        }
        .auto-style18 {
            width: 492px;
            height: 45px;
        }
        .auto-style19 {
            width: 111px;
            height: 45px;
        }
        .auto-style20 {
            width: 272px;
            height: 45px;
        }
        .auto-style21 {
            height: 45px;
        }
        .auto-style22 {
            width: 492px;
            height: 63px;
        }
        .auto-style25 {
            height: 63px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <header>
    <div class="navbar">
         <a href="Inicio.aspx">Inicio</a>
         <a href="Carrito.aspx">Carrito</a>
         <a href="Nosotros.aspx">Nosotros</a>
         <a href="Login.aspx">
         <asp:Label ID="lblLogin" runat="server" Text="Login"></asp:Label>
         <a href="Admin.aspx">Admin</a>
    </div>
  </header>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="363px" ImageUrl="~/Imagenes/register.png" Width="380px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td align="center" class="auto-style25" colspan="2">
                    <asp:Label ID="lblMensaje" runat="server" Font-Size="30px"></asp:Label>
                </td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">Nombre:<br />
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese un nombre"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">Apellido:<br />
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Ingrese un apellido"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">CUIT:<br />
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtCUIT" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCUIT" runat="server" ControlToValidate="txtCUIT" ErrorMessage="Ingrese un CUIT"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style10">Mail:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMail" runat="server" ControlToValidate="txtMail" ErrorMessage="Ingrese un mail"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style10"></td>
                <td class="auto-style12">
                    </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style10">Telefono:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtMail" ErrorMessage="Ingrese un telefono"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">Provincia:</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="ddlProvincias" runat="server" AutoPostBack="True" OnSelectedIndexChanged="provinciaSeleccionada">
                    </asp:DropDownList>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15">Ciudad:<br />
                </td>
                <td class="auto-style16">
                    <asp:DropDownList ID="ddlCiudad" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    <br />
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style19">Contraseña:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TxtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="TxtContraseña" ErrorMessage="Ingrese una contraseña"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">Repetir contraseña:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtContraseñaR" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtContraseñaR" ErrorMessage="Repita la contraseña"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style9"></td>
                <td class="auto-style11">
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="btnRegistrarse" class="button" runat="server" Text="Registrarse" OnClick="btnRegistrarse_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
