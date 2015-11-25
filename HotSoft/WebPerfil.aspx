<%@ Page Language="C#"  CodeBehind="Perfil.aspx.cs" Inherits="HotSoft.WebPerfil" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" href="Resources/normalize.css" type="text/css" media="screen" />
    <link rel ="stylesheet" href="StylePerfil.css" type="text/css" media="screen" />
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 70px;
            width: 454px;
        }
        #TextArea2 {
            width: 242px;
            height: 60px;
        }
        .auto-style1 {
            width: 399px;
        }
        .auto-style2 {
            width: 178px;
        }
        .auto-style3 {
            width: 445px;
        }
        .auto-style4 {
            width: 179px;
        }
        .auto-style5 {
            width: 160px;
        }
        .auto-style6 {
            width: 399px;
            height: 41px;
        }
        .auto-style7 {
            width: 178px;
            height: 41px;
        }
        .auto-style8 {
            width: 445px;
            height: 41px;
        }
    </style>
</head>
<body>
     <header class="Encabezado">
       <img src="Images/oie_transparent.png" />
         
    </header>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View5" runat="server">
                <br />
                <asp:Label ID="Label11" runat="server" Text="Habilidades"></asp:Label>
                <br />
                <table style="width: 56%;">
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox31" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox32" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox33" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox34" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox35" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox36" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox37" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox38" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox39" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox40" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox41" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox42" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox43" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox44" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox45" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox46" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox47" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox48" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox49" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox50" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox51" runat="server" />
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;<asp:Label ID="Label12" runat="server" Text="Aptitudes"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <table style="width: 56%;">
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox52" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox53" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox54" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox55" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox56" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox57" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox58" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox59" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox60" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox61" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox62" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox63" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox64" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox65" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox66" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox67" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox68" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox69" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox70" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox71" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox72" runat="server" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <br />
                <asp:Label ID="Label9" runat="server" Text="Educación"></asp:Label>
                <br />
                <br />
                <table style="width:100%;">
                    <tr>
                        <td>Nivel de educación<br />
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="144px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Institución"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <br />
                &nbsp;<asp:Label ID="Label7" runat="server" Text="Certificaciones"></asp:Label>
                &nbsp;<br />
                <br />
                &nbsp;<asp:Label ID="Label8" runat="server" Text="Cursos"></asp:Label>
                <br />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table style="width: 20%; margin-top: 0px;">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Experiencia"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Nombre de la empresa"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Tiempo trabajado (Meses)"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Puesto de trabajo"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Agregar Empresa" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewExtracto" runat="server">
            </asp:View>
        </asp:MultiView>
        <br />
        <br />
        <br />
        
       
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>

    <div class="FormExtracto">
          <h2  >Extracto</h2>
        <br />
        <textarea id="TextArea1" name="S1" ></textarea><br />
          <asp:Button ID="btnGuardarExtracto" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
          <asp:Button ID="btnCancelarExtracto" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
    </div>
       
     <div class="FormCert">
         <h2>Certificaciones</h2>
                <table style="width: 81%; height: 140px;">
                    <tr>
                        <td class="auto-style1">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            <input id="Fecha" type="date" value="button" />
                        </td>
                        <td class="auto-style2">
                            <asp:CheckBox ID="CheckBox4" runat="server" />
                        </td>
                        <td class="auto-style3">
                            <asp:CheckBox ID="CheckBox7" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                        </td>
                        <td class="auto-style7">
                            <asp:CheckBox ID="CheckBox5" runat="server" />
                        </td>
                        <td class="auto-style8">
                            <asp:CheckBox ID="CheckBox8" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:CheckBox ID="CheckBox3" runat="server" />
                        </td>
                        <td class="auto-style2">
                            <asp:CheckBox ID="CheckBox6" runat="server" />
                        </td>
                        <td class="auto-style3">
                            <asp:CheckBox ID="CheckBox9" runat="server" />
                        </td>
                    </tr>
                </table>

         <asp:Button ID="btnGuardarCert" runat="server" Text="Guardar" CssClass="btn_Guardar" />
         <asp:Button ID="btnCacenlarCert" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>

      </div>
          
        <div class="FormCursos">
            <h2>Cursos</h2>
                <table style="width: 56%;">
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox10" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox13" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox16" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox11" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox14" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox17" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox12" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox15" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox18" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox19" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox20" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox21" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox22" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox23" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox24" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox25" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox26" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox27" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="CheckBox28" runat="server" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="CheckBox29" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox30" runat="server" />
                        </td>
                    </tr>
                </table>


            <asp:Button ID="btnGuardarCurso" runat="server" Text="Guardar" CssClass="btn_Guardar" />
            <asp:Button ID="btnCancelarCurso" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />


        </div>

    </form>

              
</body>
</html>
