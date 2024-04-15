<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detalleArticulo.aspx.cs" Inherits="Presentacion.Vistas.WebForm1" %>

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
        .auto-style6 {
            height: 23px;
            width: 237px;
        }
        .auto-style8 {
            height: 21px;
        }
        .auto-style9 {
            width: 397px;
        }
        .auto-style10 {
            width: 397px;
            height: 21px;
        }
        .auto-style11 {
            width: 570px;
        }
        .auto-style12 {
            width: 570px;
            height: 21px;
        }
        .auto-style13 {
            width: 237px;
        }
        .auto-style14 {
            height: 21px;
            width: 237px;
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
                    <td class="auto-style11" rowspan="7">
                        &nbsp;</td>
                    <td class="auto-style9" rowspan="7">
                        &nbsp;</td>
                    
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                 
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12" rowspan="6">&nbsp;</td>
                    <td align="center" class="auto-style10" rowspan="6" style="background-color: #ffc500">
                        <asp:Image ID="Image1" runat="server" Width="300px" />
                    </td>
                    <td align="center" class="auto-style6" style="background-color: #ffc500">Nombre Articulo 
                        <br />
                        <asp:Label ID="lbNombre" runat="server" Text="Label" Font-Size="25px"></asp:Label></td>
                    <td class="auto-style8" rowspan="6"></td>
                </tr>
                <tr>
                    <td align="center"  class="auto-style6" style="background-color: #ffc500">Categoria:
                        <br />
                        <asp:Label ID="lbCategoria" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center"  class="auto-style6" style="background-color: #ffc500">Marca:
                        <br />
                        <asp:Label ID="lbMarca" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center"  class="auto-style6" style="background-color: #ffc500">Precio:
                        <br />
                        <asp:Label ID="lbPrecio" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center"  class="auto-style14" style="background-color: #ffc500">Cantidad:<br /><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style13" style="background-color: #ffc500">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar al carrito" CssClass="button" OnClick="btnAgregarCarrito" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;&nbsp; </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
&nbsp;</div>
    </form>
</body>
</html>
