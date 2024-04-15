<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Presentacion.Vistas.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="~/Vistas/CSS/StyleSheet1.css" type="text/css" />
 
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 216px;
        }
        .auto-style4 {
            width: 285px;
        }
        .auto-style5 {
            width: 173px;
        }
        .auto-style6 {
            width: 216px;
            height: 23px;
        }
        .auto-style7 {
            width: 285px;
            height: 23px;
        }
        .auto-style8 {
            width: 173px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
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
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">PAGO </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Forma de pago</td>
                <td class="auto-style4">
                    <asp:CheckBoxList ID="chklFormaPago" runat="server">
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">INTRODUCA LOS DATOS DE SU TARJETA</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Nombre del Titular</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtNombreTitular" runat="server" CssClass="auto-style2" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style5">Numero de tarjeta</td>
                <td>
                    <asp:TextBox ID="txtNumeroTarjeta" runat="server" CssClass="auto-style2" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Vencimiento</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtVencimiento" runat="server" CssClass="auto-style2" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style5">CVV</td>
                <td>
                    <asp:TextBox ID="txtCVV" runat="server" CssClass="auto-style2" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Tipo de Entrega</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlTipoEntrega" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnRealizarCompra" runat="server" Text="Realizar Compra" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
