<%@ Page Language="C#"  CodeBehind="Perfil.aspx.cs" Inherits="HotSoft.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel ="stylesheet" href="StylePerfil.css" type="text/css" media="screen" />
      <link rel ="stylesheet" href="Resources/normalize.css" type="text/css" media="screen" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="StyleAcordeon.css" type="text/css" media="screen"/>

    <title>Perfil de usuario</title>
     <style type="text/css">
         .auto-style4 {
             width: 175px;
         }
         .auto-style5 {
             width: 195px;
         }
         .auto-style6 {
             width: 276px;
         }
     </style>
</head>
<body>
     <header class="Encabezado">
       <img src="Images/oie_transparent.png" />
         
    </header>
    <form id="form1" runat="server">
    <div>
       
        <asp:ScriptManager ID="SMPerfil" runat="server">
        </asp:ScriptManager>
       
      <div id="container-main">
        <div class="accordion-container">
            <a href="#" class="accordion-titulo" onclick="moveTo(0,300)">Extracto<span class="toggle-icon"></span></a>
            <div class="accordion-content">
            
               <section class="FormExtracto">
                      <h2  >Extracto</h2>
                      <br />
                      <textarea id="TxAExtracto" name="S1" ></textarea><br />
                      <asp:Button ID="btnGuardarExtracto" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnGuardarExtracto_Click"/>
                      <asp:Button ID="btnCancelarExtracto" runat="server" Text="Cancelar" CssClass="btn_Cancelar" OnClick="btnCancelarExtracto_Click" />

                </section>
   
              </div>  
        </div>
        
    
    
    
                
       <div class="accordion-container">
            <a href="#" class="accordion-titulo">Experiencia<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
        <asp:UpdatePanel ID="UPExperiencia" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="FormExperiencia">
                    <h2>Experiencia</h2>
                    <br />
                    <input type="date" />
                    <input type="text" id="txtExpEmpresa" placeholder="Nombre de la empresa" />
                    <asp:TextBox ID="txtExpTiempo" runat="server" CssClass="txt" placeholder="Tiempo trabajdo (Meses)"></asp:TextBox>
                    <asp:TextBox ID="txtExpPuesto" runat="server" CssClass="txt" placeholder="Puesto desempeñado"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnExpGuardar" runat="server" Text="Guardar" CssClass="btn_Guardar" />
                    <asp:Button ID="btnExpCancelar" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
                </section>
            </ContentTemplate>
        </asp:UpdatePanel>
            </div>  
        </div>
        
       <div class="accordion-container">
            <a href="#" class="accordion-titulo">Idiomas<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
                <div class="FormIdiomas">
                    <div class="FormGroup">
                        <h2>Idiomas</h2>
                        <div class="checkbox">
                            <table style="width: 92%;">
                                <tr>
                                    <td class="auto-style6">
                                        <input id="chIngles" type="checkbox" name="Ingles" />
                                        <label for="chIngles">Ingles</label>
                                    
                                        <br />
                                        <input id="rangoingles" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoIngles').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoIngles" runat="server" Text="50" ForeColor="#329040"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox68" runat="server" Text="Japones" />
                                         <br />
                                        <input id="rangoJapones" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoJapones').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoJapones" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox69" runat="server" Text="Chino" /> 
                                        <br />
                                        <input id="rangoChino" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoChino').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoChino" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:CheckBox ID="CheckBox70" runat="server" Text="Alemán" />
                                         <br />
                                        <input id="rangoAleman" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoAleman').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoAleman" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox71" runat="server" Text="Ruso" />
                                         <br />
                                         <input id="rangoRuso" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoRuso').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoRuso" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox72" runat="server" Text="Portugués" />
                                         <br />
                                         <input id="rangoPortugues" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPortugues').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoPortugues" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:CheckBox ID="CheckBox73" runat="server" Text="Francés" />
                                         <br />
                                         <input id="rangoFrances" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoFrances').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoFrances" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                                    </td>
                          
                                </tr>
                            </table>
                        </div>
                        <asp:Button ID="btnGuardarIdioma" runat="server" Text="Guardar" cssClass="btn_Guardar"/>
                        <asp:Button ID="btnCancelarIdioma" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>
                     </div>
                </div>
              </div>
            </div>
            <div class="accordion-container">
            <a href="#" class="accordion-titulo">Certificaciones<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
                <div class="FormCert">
                    <div class="FormGroup">
                        <div class="checkbox">
                       <h2>Certificaciones</h2> 
                    <table style="width: 93%;">
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Visual Basic" />
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="C" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox3" runat="server" Text="C++" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox4" runat="server" Text="Java" />
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox5" runat="server" Text="Python" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox6" runat="server" Text="Pascal" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox7" runat="server" Text="C#" />
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox8" runat="server" Text="Ruby" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox9" runat="server" Text="PHP" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox10" runat="server" Text="HTML" />
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox11" runat="server" Text="CSS" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox12" runat="server" Text="JavaScript" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox13" runat="server" Text="Ensamblador" />
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox14" runat="server" Text="Fortran" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox15" runat="server" Text="COBOL" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox16" runat="server" Text="NesC" />
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox17" runat="server" Text="Prolog" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox18" runat="server" Text="UML" />
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnGuardarCert" runat="server" Text="Guardar" CssClass="btn_Guardar" />
                    <asp:Button ID="btnCancelCert" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
                            </div>
                    </div>
                </div>
       </div>
      </div>
           <div class="accordion-container">
            <a href="#" class="accordion-titulo">Cursos<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
                <section class="FormCursos">
                    <h2>Cursos</h2>
                    <table style="width: 93%;">
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox19" runat="server" Text="Internet de las cosas" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox20" runat="server" Text="Word" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox21" runat="server" Text="Microsoft Azure" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox22" runat="server" Text="Sistemas embebidos" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox23" runat="server" Text="Excel" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox24" runat="server" Text="MS Dynamics" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox25" runat="server" Text="ERP" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox26" runat="server" Text="Photoshop" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox27" runat="server" Text="Virtualización" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox28" runat="server" Text="IHC" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox29" runat="server" Text="Google Docs" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox30" runat="server" Text="Windows Server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox31" runat="server" Text="SQL Server" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox32" runat="server" Text="Windows 10" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox33" runat="server" Text="Exchange Server" />
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnGuardarCurso" runat="server" Text="Guardar" CssClass="btn_Guardar" />
                    <asp:Button ID="btnCancelarCurso" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>
                </section>
               </div>
               </div>
         <div class="accordion-container">
            <a href="#" class="accordion-titulo">Aptitudes<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
         <asp:UpdatePanel ID="UPAptitudes" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <section class="FormAptitud">
                            <h2>Aptitudes</h2>
                               <table style="width: 93%;">
                                <tr>
                                     <td>
                                        <asp:CheckBox ID="CheckBox34" runat="server" Text="Internet de las cosas" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox35" runat="server" Text="Word" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox36" runat="server" Text="Microsoft Azure" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox37" runat="server" Text="Sistemas embebidos" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox38" runat="server" Text="Excel" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox39" runat="server" Text="MS Dynamics" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox40" runat="server" Text="ERP" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox41" runat="server" Text="Photoshop" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox42" runat="server" Text="Virtualización" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox43" runat="server" Text="IHC" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox44" runat="server" Text="Google Docs" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox45" runat="server" Text="Windows Server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox46" runat="server" Text="SQL Server" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox47" runat="server" Text="Windows 10" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox48" runat="server" Text="Exchange Server" />
                                    </td>
                                </tr>
                            </table>
                            <asp:Button ID="btnGuardarAptitud" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
                            <asp:Button ID="btnCacenlarAptitud" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
                        </section>
                    </ContentTemplate>
                </asp:UpdatePanel>
        </div>
             </div>
       
<div class="accordion-container">
            <a href="#" class="accordion-titulo">Educación<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
         <asp:UpdatePanel ID="UPEducacion" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="FormEducacion">
                    <h2>Educacion</h2>
                    <br />
                    <asp:TextBox ID="txtEduEscuela" runat="server" placeholder="Institución" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:DropDownList ID="DDLEduNivel" runat="server" CssClass="DDL"></asp:DropDownList>
                    <br />
                    <asp:TextBox ID="txtEdutitulo" runat="server" placeholder="Título" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnEduGuardar" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
                    <asp:Button ID="btnEduCancelar" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>

                </section>
            </ContentTemplate>
        </asp:UpdatePanel>
</div>
    </div>
       <div class="accordion-container">
            <a href="#" class="accordion-titulo">Lenguajes de programación<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
    <section class="FormLenguajes">
                    <h2>Dominio de lenguajes de programación</h2>
                   <table style="width: 93%;">
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox49" runat="server" Text="Visual Basic" />
                                  <br />
                                  <input id="rangoVB" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblVB').textContent = this.value;"/>
                                <asp:Label ID="lblRangoVB" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox50" runat="server" Text="C" />
                                  <br />
                                 <input id="rangoC" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoC').textContent = this.value;"/>
                                <asp:Label ID="lblRangoC" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox51" runat="server" Text="C++" />
                                  <br />
                                 <input id="rangoCPlus" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPlus').textContent = this.value;"/>
                                <asp:Label ID="lblRangoPlus" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox52" runat="server" Text="Java" />
                                  <br />
                                 <input id="rangoJava" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoJava').textContent = this.value;"/>
                                <asp:Label ID="lblRangoJava" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox53" runat="server" Text="Python" />
                                  <br />
                                 <input id="rangoPython" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPython').textContent = this.value;"/>
                                <asp:Label ID="lblRangoPython" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox54" runat="server" Text="Pascal" />
                                  <br />
                                <input id="rangoPascal" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPascal').textContent = this.value;"/>
                                <asp:Label ID="lblRangoPascal" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox55" runat="server" Text="C#" />
                                  <br />
                                 <input id="rangoCSharp" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoCSharp').textContent = this.value;"/>
                                <asp:Label ID="lblRangoCSharp" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox56" runat="server" Text="Ruby" />
                                  <br />
                                 <input id="rangoRuby" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoRuby').textContent = this.value;"/>
                                <asp:Label ID="lblRangoRuby" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox57" runat="server" Text="PHP" />
                                  <br />
                                <input id="rangoPHP" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPhp').textContent = this.value;"/>
                                <asp:Label ID="lblRangoPhp" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox58" runat="server" Text="HTML" />
                                  <br />
                                <input id="rangoHTML" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoHTML').textContent = this.value;"/>
                                <asp:Label ID="lblRangoHTML" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox59" runat="server" Text="CSS" />
                                  <br />
                                <input id="rangoCSS" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoCSS').textContent = this.value;"/>
                                <asp:Label ID="lblRangoCSS" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox60" runat="server" Text="JavaScript" />
                                  <br />
                                <input id="rangoJavaScript" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoJavaScript').textContent = this.value;"/>
                                <asp:Label ID="lblRangoJavaScript" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox61" runat="server" Text="Ensamblador" />
                                  <br />
                                <input id="rangoEnsamblador" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoEnsamblador').textContent = this.value;"/>
                                <asp:Label ID="lblRangoEnsamblador" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox62" runat="server" Text="Fortran" />
                                  <br />
                                <input id="rangoFortran" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoFortran').textContent = this.value;"/>
                                <asp:Label ID="lblRangoFortran" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox63" runat="server" Text="COBOL" />
                                  <br />
                                <input id="rangoCOBOL" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoCOBOL').textContent = this.value;"/>
                                <asp:Label ID="lblRangoCOBOL" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox64" runat="server" Text="NesC" />
                                  <br />
                                 <input id="rangoNesC" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoNesC').textContent = this.value;"/>
                                <asp:Label ID="lblRangoNesC" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox65" runat="server" Text="Prolog" />
                                  <br />
                                 <input id="rangoProlog" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoProlog').textContent = this.value;"/>
                                <asp:Label ID="lblRangoProlog" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox66" runat="server" Text="UML" />
                                <br />
                                  <input id="rangoUML" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoUML').textContent = this.value;"/>
                                <asp:Label ID="lblRangoUML" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnHabGuardar" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
                    <asp:Button ID="btnHabCancelar" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>

                </section>
         
        </div>
           </div>
    </div>
        </div>
    </form>
     <script src= "http://code.jquery.com/jquery-latest.js"></script>
    <script>

      
        $(".accordion-titulo").click(function () {

            var contenido = $(this).next(".accordion-content");

            if (contenido.css("display") == "none") { //open	

                contenido.slideDown(250);
                $(this).addClass("open");
            }
            else { //close		
                contenido.slideUp(250);
                $(this).removeClass("open");
            }

        });
    </script>
    <script src="JS/Seccion.js"></script>
</body>
</html>
