﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminModificarPrecio.aspx.cs" Inherits="PRESENTACION.AdminModificarPrecio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
    <link rel="stylesheet" href="CSS/ModificarPrecio.css">
<body>
    <form id="form1" runat="server">

        <div class="Usuario">
            <asp:Label ID="lblUsuario" runat="server" Font-Size="16px" ForeColor="Black">USUARIO</asp:Label>
            <asp:LinkButton ID="btnLinkCerrarSesion" runat="server" CssClass="btn btn-warning"  Visible="False" OnClick="btnLinkCerrarSesion_Click">Cerrar session</asp:LinkButton>
        </div>

        <div class="Titulo">
            <asp:Label ID="lblTitulo" runat="server" CssClass="display-4" Font-Size="45px" ForeColor="Black" Text="Modificar precio"></asp:Label>
        </div>

        <div class="Home">
            <asp:ImageButton ID="btnPrincipal" Height="50px" Width="50px" ImageUrl="~/ImagenesBotones/Home3.png" runat="server" OnClick="btnPrincipal_Click"/>
        </div>

        <div class="menu">
		    <ul>
			    <li><a href="AdminAgregarPelicula.aspx">Agregar Pelicula</a></li>
			    <li><a href="AdminAgregarFuncion.aspx">Agregar Funcion</a></li>
			    <li><a href="AdminAgregarGenero.aspx">Agregar Genero</a></li>
			    <li><a href="AdminAgregarClasificacion.aspx">Agr. Clasificacion</a></li>
                <li><a href="AdminAgregarUsuario.aspx">Agregar usuario</a></li>
                <li><a href="AdminModificarUsuario.aspx">Modificar Usuario</a></li>
			    <li><a href="AdminModificarPelicula.aspx">Modificar Pelicula</a></li>
			    <li><a href="AdminModificarGenero.aspx">Modificar Genero</a></li>
                <li><a href="AdminModificarPrecio.aspx">Modificar precios</a></li>
			    <li><a href="AdminModificarClasificacion.aspx">Mod. Clasificacion</a></li>
		        <li><a href="Reportes.aspx">Ver reportes</a></li>
		    </ul>
        </div>

        <div class="Ingreso">
            <asp:Label ID="lblFormato" runat="server" Text="Formato 3D:"></asp:Label>
            <asp:CheckBox ID="chkFormato" runat="server" Text="3D" Style="margin-left:20px" AutoPostBack="true" OnCheckedChanged="chkFormato_CheckedChanged" Enabled="False" /><br />
            <asp:Label ID="lblPrecio" runat="server" Text="Precio:"></asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server" style="margin-left:60px" TextMode="Number" CssClass="btn btn-light" Enabled="False"></asp:TextBox><br /><br />
            <asp:Button ID="btnEditar" runat="server" Text="Editar" style="margin-left:160px" CssClass="btn btn-primary dropdown-toggle" OnClick="btnEditar_Click" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger dropdown-toggle" Visible="False" OnClick="btnCancelar_Click"/>
        </div>

        <div class="Alerta">
            <asp:Label ID="lblMensaje" CssClass="alert alert-danger" runat="server" Visible="False"></asp:Label>
            <asp:Button ID="btnOk" runat="server" CssClass="btn btn-danger" Text="Aceptar" Visible="False" OnClick="btnOk_Click" />
        </div>

    </form>
</body>
</html>
