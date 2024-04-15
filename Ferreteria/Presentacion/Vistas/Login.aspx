<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Presentacion.Vistas.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/Vistas/CSS/StyleSheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 530px;
        }
        .auto-style4 {
            width: 530px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 33%;
            height: 33%;
        }
        .auto-style13 {
            width: 530px;
            height: 167px;
        }
        .auto-style14 {
            width: 604px;
            height: auto;
            top: auto;
            right: auto;
            bottom: auto;
            left: auto;
        }
        .auto-style15 {
            height: 167px;
        }
        .auto-style16 {
            width: 530px;
            height: 60px;
        }
        .auto-style18 {
            height: 60px;
        }
        .auto-style19 {
            width: 33%;
            height: 33%;
            top: auto;
            right: auto;
            bottom: auto;
            left: auto;
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
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13" style="width: 33%; height: 33%;"></td>
                    <td align="center" class="auto-style14" style="background-color: #FFC500">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/login.png" />
                    </td>
                    <td class="auto-style15" style="width: 33%; height: 33%;"></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 33%; height: 33%;">&nbsp;</td>
                    <td align="center" class="auto-style14" style="background-color: #FFC500">
                        <asp:Label ID="lblError" runat="server" ForeColor="#CC0000"></asp:Label>
                        <br />
                        <asp:Label ID="lblBienvenido" runat="server" Font-Size="30px"></asp:Label>

                        <br />
                    </td>
                    <td style="width: 33%; height: 33%;">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16" style="width: 33%; height: 33%;"><br />
                    </td>
                    <td align="center" class="auto-style14" style="background-color: #FFC500">
                        <asp:Label ID="lblMail" runat="server" Text="Mail:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtMail" runat="server" Width="204px"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtMail" ErrorMessage="Ingrese un Mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                    <td class="auto-style18" style="width: 33%; height: 33%;"></td>
                </tr>
                <tr>
                    <td class="auto-style4" style="width: 33%; height: 33%;"><br />
                    </td>
                    <td align="center" class="auto-style14" style="background-color: #FFC500">
                        <asp:Label ID="lbContraseña" runat="server" Text="Contraseña:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtContraseña" runat="server" Width="205px" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Ingrese una contraseña" ValidationGroup="1"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                    <td class="auto-style6" style="width: 33%; height: 33%;"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td align="center" class="auto-style19" style="background-color: #FFC500">
                        <asp:Button ID="btnLogin" class="button" runat="server" Text="Iniciar sesion" Width="128px" ValidationGroup="1" OnClick="btnLogin_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 33%; height: 33%;">&nbsp;</td>
                    <td align="center" class="auto-style14" style="background-color: #FFC500">
                        <asp:Label ID="lblNoCuenta" runat="server" Text="¿No tenes cuenta?"></asp:Label>
                        <asp:HyperLink ID="hlCrearCuenta" runat="server" NavigateUrl="~/Vistas/Register.aspx">Crear Cuenta</asp:HyperLink>
                    </td>
                    <td style="width: 33%; height: 33%;">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    </body>
</html>
