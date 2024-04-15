<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Presentacion.Inicio" %>

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
            height: 28px;
        }
        .auto-style6 {
            width: 573px;
            height: 28px;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style11 {
            height: 33%;
            width: 33%;
            text-align: center;
        }
        .auto-style14 {
            width: 573px;
        }
        .auto-style15 {
            width: 659px;
        }
        .auto-style16 {
            width: 573px;
            text-align: right;
            height: 214px;
        }
        .auto-style18 {
            width: 659px;
            height: 214px;
        }
        .auto-style19 {
            height: 214px;
        }
        .auto-style23 {
            width: 33%;
            height: 47%;
        }
        .auto-style24 {
            width: 33%;
            height: 33%;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style25 {
            height: 33%;
            font-size: xx-large;
            text-align: left;
            width: 33%;
        }
        .auto-style26 {
            height: 33%;
            width: 33%;
        }
        .auto-style27 {
            height: 41%;
            width: 33%;
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
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td align="center" class="auto-style25">

                            &nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td align="center" class="auto-style25">

                            <asp:DataList ID="dlCategorias" runat="server" HorizontalAlign="Center" OnSelectedIndexChanged="dlCategorias_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <ItemStyle BorderStyle="Groove" />
                        <ItemTemplate>
                            <asp:Button ID="btnCategorias" runat="server" Height="30px" Text='<%# Eval("Nombre_CA") %>' Width="150px" CommandArgument='<%# Eval("Cod_CA") %>' CommandName="comandoBotonCategorias" OnCommand="btnCategorias_Command" />
                        </ItemTemplate>
                    </asp:DataList>
                </td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 33%; height: 33%">&nbsp;</td>
                <td class="auto-style24" style="width: 33%; height: 33%"><strong>ARTICULOS</strong></td>
                <td class="auto-style4" style="width: 33%; height: 33%">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style11">

      <asp:TextBox ID="txtBuscar"  runat="server" Width="345px" Height="30px"></asp:TextBox>

                    <asp:Button ID="btnBuscar" class="button" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                </td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style14" style="width: 33%; height: 33%"></td>
                <td align="center" class="auto-style26" style="font-size: x-large; line-height: inherit;">Precio: <asp:TextBox ID="tbvalorBajo" runat="server"></asp:TextBox>
                    &nbsp;
                    --
                    <asp:TextBox ID="tbvalorAlto" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="tbvalorAlto"
                            ErrorMessage="Campo Requerido" 
                            ValidationGroup="Validate">
                    </asp:RequiredFieldValidator>
        
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="brnfiltrar_click" Text="Filtrar" ValidationGroup="Validate"/>
                </td>
                <td style="width: 33%; height: 33%"></td>
            </tr>
            <tr>
                <td class="auto-style23" style="width: 33%; height: 33%"></td>
                <td class="auto-style23" style="width: 33%; height: 33%"></td>
                <td class="auto-style23" style="width: 33%; height: 33%"></td>
            </tr>
            <tr>
                <td align="center" class="auto-style16" aria-orientation="horizontal" style="width: 33%; height: 33%">
                    
                            &nbsp;</td>
                <td class="auto-style18" style="width: 33%; height: 33%">
                    <asp:ListView ID="lvArticulos" runat="server" GroupItemCount="3" OnSelectedIndexChanged="lvArticulos_SelectedIndexChanged">
                        <EditItemTemplate>
                            <td runat="server" style="background-color: #FFCC66; color: #000080;">MarcaCod_ART:
                                <asp:TextBox ID="MarcaCod_ARTTextBox" runat="server" Text='<%# Bind("MarcaCod_ART") %>' />
                                <br />
                                Nombre_ART:
                                <asp:TextBox ID="Nombre_ARTTextBox" runat="server" Text='<%# Bind("Nombre_ART") %>' />
                                <br />
                                Descripcion_ART:
                                <asp:TextBox ID="Descripcion_ARTTextBox" runat="server" Text='<%# Bind("Descripcion_ART") %>' />
                                <br />
                                Precio_ART:
                                <asp:TextBox ID="Precio_ARTTextBox" runat="server" Text='<%# Bind("Precio_ART") %>' />
                                <br />
                                Imagen_ART:
                                <asp:TextBox ID="Imagen_ARTTextBox" runat="server" Text='<%# Bind("Imagen_ART") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                <br />
                            </td>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
                            <td runat="server" />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <InsertItemTemplate>
                            <td runat="server" style="">MarcaCod_ART:
                                <asp:TextBox ID="MarcaCod_ARTTextBox" runat="server" Text='<%# Bind("MarcaCod_ART") %>' />
                                <br />
                                Nombre_ART:
                                <asp:TextBox ID="Nombre_ARTTextBox" runat="server" Text='<%# Bind("Nombre_ART") %>' />
                                <br />
                                Descripcion_ART:
                                <asp:TextBox ID="Descripcion_ARTTextBox" runat="server" Text='<%# Bind("Descripcion_ART") %>' />
                                <br />
                                Precio_ART:
                                <asp:TextBox ID="Precio_ARTTextBox" runat="server" Text='<%# Bind("Precio_ART") %>' />
                                <br />
                                Imagen_ART:
                                <asp:TextBox ID="Imagen_ARTTextBox" runat="server" Text='<%# Bind("Imagen_ART") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                <br />
                            </td>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <td runat="server" style="background-color: #FFFBD6; color: #333333;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Imagen_ART") %>' Height="90px" Width="90px" />
                                <br />
                                <asp:Label ID="Nombre_ARTLabel" runat="server" Font-Bold="True" Text='<%# Eval("Nombre_ART") %>'></asp:Label>
                                <asp:Label ID="MarcaCod_ARTLabel" runat="server" Text='<%# Eval("MarcaCod_ART") %>' Font-Bold="True" />
                                <br />
                                <asp:Label ID="Descripcion_ARTLabel" runat="server" Text='<%# Eval("Descripcion_ART") %>' />
                                <br />
                                Precio unitario:
                                <asp:Label ID="Precio_ARTLabel" runat="server" Text='<%# Eval("Precio_ART") %>' />
                                <br />
                                <asp:LinkButton ID="lkbDetalles" runat="server" CommandName="lkbDetalles" OnCommand="lkbDetalles_Command" CommandArgument='<%# Eval("Cod_ART") %>'>Ver detalles</asp:LinkButton>
                                <br />
                                Cantidad:<br />
                                <asp:TextBox ID="txtCant" runat="server" Height="21px" TextMode="Number" Width="74px"></asp:TextBox>
                                &nbsp;
                                <asp:Button ID="btnAgregar" runat="server" CommandArgument='<%# Eval("Cod_ART") %>' CommandName="eventbutton" OnCommand="btnseleccionar_Command" Text="Agregar al carrito" OnClick="btnSeleccionar_Click" />
                                <br />
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr id="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td runat="server" style="background-color: #FFCC66; font-weight: bold; color: #000080;">MarcaCod_ART:
                                <asp:Label ID="MarcaCod_ARTLabel" runat="server" Text='<%# Eval("MarcaCod_ART") %>' />
                                <br />
                                Nombre_ART:
                                <asp:Label ID="Nombre_ARTLabel" runat="server" Text='<%# Eval("Nombre_ART") %>' />
                                <br />
                                Descripcion_ART:
                                <asp:Label ID="Descripcion_ARTLabel" runat="server" Text='<%# Eval("Descripcion_ART") %>' />
                                <br />
                                Precio_ART:
                                <asp:Label ID="Precio_ARTLabel" runat="server" Text='<%# Eval("Precio_ART") %>' />
                                <br />
                                Imagen_ART:
                                <asp:Label ID="Imagen_ARTLabel" runat="server" Text='<%# Eval("Imagen_ART") %>' />
                                <br />
                            </td>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </td>
                <td class="auto-style19" style="width: 33%; height: 33%"></td>
            </tr>
            <tr>
                <td class="auto-style27">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style27">
                </td>
                <td class="auto-style27"></td>
            </tr>
            </table>
             
     
   

       


    </form>
</body>
</html>
