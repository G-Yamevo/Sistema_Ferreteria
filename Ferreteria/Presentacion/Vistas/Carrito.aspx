﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Presentacion.Carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/Vistas/CSS/StyleSheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 451px;
        }
        .auto-style3 {
            height: 143px;
        }
        .auto-style4 {
            height: 100px;
        }
        .auto-style5 {
            height: 143px;
            width: 493px;
        }
        .auto-style6 {
            height: 100px;
            width: 493px;
        }
        .auto-style7 {
            height: 143px;
            width: 573px;
        }
        .auto-style8 {
            height: 100px;
            width: 573px;
        }
        .auto-style9 {
            height: 45px;
            width: auto;
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
        <table class="auto-style2">
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style9" align="center">
            <strong style="font-size: 30px">Carrito de Carrito de Compra</strong></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto"></td>
                <td class="auto-style7" align="center" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">
                    <asp:Label ID="lbCarritoVacio" runat="server" Font-Size="30px"></asp:Label>
            <asp:GridView ID="grdCarrito" runat="server" BackColor="White" AutoGenerateColumns="False" ShowFooter="True" BorderColor="#CCCCCC" BorderStyle="None" Width="75%" BorderWidth="1px" CellPadding="5" ForeColor="Black" GridLines="None" CellSpacing="4" Font-Size="20px" AutoGenerateDeleteButton="True" OnRowDeleting="gridview_rowdeleting">
                <Columns>
                    <asp:ImageField DataImageUrlField="Imagen_ART" HeaderText="FOTO" HeaderStyle-HorizontalAlign="Center">
                        <ControlStyle Height="150px" Width="150px" />

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    </asp:ImageField>
                    <asp:BoundField DataField="Cod_ART" HeaderText="CODIGO" HeaderStyle-HorizontalAlign="Center">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Nombre_ART" HeaderText="NOMBRE" HeaderStyle-HorizontalAlign="Center">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Precio_ART" HeaderText="PRECIO" HeaderStyle-HorizontalAlign="Center">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Cantidad" HeaderText="CANTIDAD" />
                </Columns>
                
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" HorizontalAlign="Left" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
                </td>
                <td class="auto-style3" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto"></td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto"></td>
                <td class="auto-style8" align="center" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">
                    <asp:Label ID="lblTotal" runat="server"  Text="Total precio: "></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lbPrecioTotal" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnConfirmarCompra" cssclass="Boton" runat="server" Text="Confirmar Compra" />
                </td>
                <td class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto"></td>
            </tr>
        </table>
    </form>
</body>
</html>
