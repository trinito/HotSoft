<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotSoft.Login" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxDataView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleLogin.css" type="text/css" media="screen" />
    <title></title>
</head>
<body>
    <asp:MultiView ID="MViewLogin" runat="server">
        <asp:View ID="ViewLogin" runat="server">
            <div class="containerForm">
                <form id="FormLogin" runat="server">
                        <a href="Index.aspx"><img src="Images/Logo.png"/></a>
                        <asp:TextBox ID="txtUser" runat="server" CssClass="txt" placeholder="Ingrese Usuario"  MaxLength="20"></asp:TextBox>
                        <asp:TextBox ID="txtPass" runat="server" CssClass="txt" placeholder="Ingrese Contraseña" type="password"></asp:TextBox>
                        <asp:Button ID="btnIniciar" runat="server" type="submit" name="btnIniciarSesion" text="Iniciar Sesion" CssClass="btnLogin" OnClick="btnIniciar_Click"></asp:Button>
                        <h5>¿No tienes cuenta? <asp:LinkButton ID="LBRegister" runat="server" OnClick="LBRegister_Click">Registrarse ahora</asp:LinkButton></h5>
                </form>
             </div>
         </asp:View>
        <asp:View ID="ViewRegister" runat="server">
            <div class="containerForm">
                <form id ="FormRegister" runat="server">
                        <h3>¡Únete a nuestro equipo!</h3>
                        <asp:TextBox ID="txtNombres" runat="server" CssClass="txt" placeholder="Nombre"  MaxLength="20"></asp:TextBox>
                        <asp:TextBox ID="txtApellidos" runat="server" CssClass="txt" placeholder="Apellidos" type="text"></asp:TextBox>
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="txt" placeholder="Correo electrónico" type="text"></asp:TextBox>
                        <asp:TextBox ID="txtContraseña" runat="server" CssClass="txt" placeholder="Contraseña" type="password"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="txt" placeholder="Confirme contraseña" type="password"></asp:TextBox>
                       
                        <asp:Button ID="btnInsertar" runat="server" text="Registrarse" OnClick="btnInsertar_Click" CssClass="btnLogin"></asp:Button>
                </form>
            </div>
        </asp:View>
    </asp:MultiView>
</body>
</html>
