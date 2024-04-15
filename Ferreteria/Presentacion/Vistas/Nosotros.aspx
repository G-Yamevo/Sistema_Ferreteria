<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuenta.aspx.cs" Inherits="Presentacion.Vistas.WebForm2" %>

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
        .auto-style4 {
            width: 265px;
            height: 21px;
        }
        .auto-style5 {
            width: 265px;
            height: 200px;
        }
        .auto-style8 {
            width: 80px;
            height: 200px;
        }
        .auto-style9 {
            width: 80px;
            height: 21px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            height: 200px;
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
                    <td align="center" class="auto-style11" colspan="9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Imagenes/logo.png" />
                    </td>
                    
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style8" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style5" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/avatar1.png" />
                    </td>
                    <td align="center" class="auto-style8" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style5" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/avatar2.png" />
                    </td>
                    <td align="center" class="auto-style8" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style5" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">
                        <asp:Image ID="Image3" runat="server" CssClass="auto-style10" ImageUrl="~/Imagenes/avatar3.png" />
                    </td>
                    <td align="center" class="auto-style8" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center"  class="auto-style5" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Imagenes/avatar4.png" />
                    </td>
                    
                    
                    <td align="center"  class="auto-style8" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Nombre: Nahir Fernanda</td>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Nombre: Benjamín</td>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Nombre: Gastón Esteban</td>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center"  class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Nombre: Santiago Axel</td>
                    
                    
                    <td align="center"  class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Apellido: Rosul</td>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Apellido: Gilardoni</td>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Apellido: Yamevo Blanco</td>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center"  class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Apellido: Brunet</td>
                    
                    <td align="center"  class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Legajo: 25104</td>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Legajo: 25110</td>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center" class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Legajo: 25076</td>
                    <td align="center" class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    <td align="center"  class="auto-style4" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto;">Legajo: 24286</td>
                    
                    <td align="center"  class="auto-style9" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto">&nbsp;</td>
                    
                </tr>
               
            </table>

        </div>
    </form>
</body>
</html>
