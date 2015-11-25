<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="IniciarPerfil.aspx.cs" Inherits="HotSoft.IniciarPerfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link rel ="stylesheet" href="StyleIniciarPerfil.css" type="text/css" media="screen" />
      <link rel ="stylesheet" href="Resources/normalize.css" type="text/css" media="screen" />
    <title></title>
</head>
<body>
    <header class="Encabezado">
       <img src="Images/oie_transparent.png" />&nbsp;
         
    </header>
    <div class="saludo">
        <asp:Label ID="Label1" runat="server" cssClass="Saludo" Text="Empecemos con tu perfil"></asp:Label>
    </div>
   
    
        <form id="form1" runat="server">
        <asp:MultiView ID="MVIniciarPerfil" runat="server">
            <asp:View ID="ViewEstudiante" runat="server">

                <asp:Label ID="Label3" runat="server" Text="¿Eres estudiante?"></asp:Label>
                &nbsp;&nbsp;
                <asp:RadioButton ID="RBSi" runat="server" Text="Si" AutoPostBack="True" GroupName="A" OnCheckedChanged="RBSi_CheckedChanged" />
                &nbsp;&nbsp;
                <asp:RadioButton ID="RBNo" runat="server" Text="No" GroupName="A" OnCheckedChanged="RBNo_CheckedChanged" AutoPostBack="True" Checked="True" />
                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCargo" runat="server" Text="Cargo"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblUniversidad" runat="server" Text="Universidad" Visible="False"></asp:Label>
                <br />
                &nbsp;<asp:TextBox ID="txtCargo" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="txt" Width="130px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtUni" runat="server" Visible="False"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="lblEmpresa" runat="server" Text="Empresa"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblInicio" runat="server" Text="Año Inicio" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblFin" runat="server" Text="Año Previsto" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="txtEmpresa" runat="server" CssClass="txt" Width="137px" TextMode="Date"></asp:TextBox>
                <br />
               
                <br />
                <asp:TextBox ID="txtInicio" runat="server" Visible="False" TextMode="Date"></asp:TextBox>
                &nbsp;
                <asp:TextBox ID="txtFin" runat="server" Visible="False" TextMode="Date"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_ano" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                <asp:TextBox ID="txt_ano" runat="server" CssClass="txt" Width="137px" TextMode="Date"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn_Sig" OnClick="Button1_Click" Text="Crea tu Perfil" Width="144px" />
                <br />

            </asp:View>
            <asp:View ID="ViewEstado" runat="server">
                
                <form id="FrmEstado" >
                    &nbsp;&nbsp;
                    <asp:Label ID="lblEstado" runat="server" Text="Estado *"></asp:Label>
                    <br />
                    <asp:DropDownList ID="cm_estadp" runat="server" Height="20px" Width="140px" style=" margin-left:15px;" AutoPostBack="True" OnSelectedIndexChanged="cm_estadp_SelectedIndexChanged"
                        ></asp:DropDownList>
                    
                     <br />
                    
                     <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Ciudad *"></asp:Label>
                    <br />
                    <asp:DropDownList ID="cm_ciudad" runat="server" Height="20px" Width="140px" style=" margin-left:15px;" AutoPostBack="True">
                    </asp:DropDownList>
                    
                     <br />
                    <asp:Button ID="btnSig_1" runat="server" CssClass="btn_Sig"  Text="Siguiente" OnClick="btnSig_1_Click" />
                    
                    &nbsp; <asp:Label ID="lblInformacion" runat="server" Text="* Información necesaria"></asp:Label>
                </form>
               
            </asp:View>

        </asp:MultiView>
   
    
    
        </form>
   
    
    
</body>
</html>
