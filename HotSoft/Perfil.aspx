﻿<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" CodeBehind="Perfil.aspx.cs" Inherits="HotSoft.Perfil" %>

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
    
       
        <asp:ScriptManager ID="SMPerfil" runat="server">
        </asp:ScriptManager>
       
      <div id="container-main">
        <div class="accordion-container">
            <a  class="accordion-titulo" onclick="moveTo(0,300)">Extracto<span class="toggle-icon"></span></a>
            <div class="accordion-content">
            
               <section class="FormExtracto">
                      <h2  >Extracto</h2>
                      <br />
                      <textarea id="TxAExtracto" name="S1" runat="server"></textarea><br />
                      <asp:Button ID="btnGuardarExtracto" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnGuardarExtracto_Click" OnClientClick="return confirm('¿Seguro que estan bien los datos?');"/>

                      <asp:Button ID="btnCancelarExtracto" runat="server" Text="Cancelar" CssClass="btn_Cancelar" OnClick="btnCancelarExtracto_Click" />

                </section>
   
              </div>  
        </div>
       
       <div class="accordion-container">
            <a class="accordion-titulo">Experiencia<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
        <asp:UpdatePanel ID="UPExperiencia" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="FormExperiencia">
                    <h2>Experiencia</h2>
                    <br />
                   
                    
                    <asp:TextBox ID="txtExpEmpresa" runat="server" CssClass="txt" placeholder="Nombre de la empresa"></asp:TextBox>
                    <asp:TextBox ID="txtExpTiempo" runat="server" CssClass="txt" placeholder="Tiempo trabajdo (Meses)"></asp:TextBox>
                    <asp:TextBox ID="txtExpPuesto" runat="server" CssClass="txt" placeholder="Puesto desempeñado"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnExpGuardar" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnExpGuardar_Click" OnClientClick="return confirm('¿Seguro que estan bien los datos?');"/>
                    <asp:Button ID="btnExpCancelar" runat="server" Text="Cancelar" CssClass="btn_Cancelar" OnClick="btnExpCancelar_Click" />
                </section>
            </ContentTemplate>
        </asp:UpdatePanel>
            </div>  
        </div>
        
       <div class="accordion-container">
            <a class="accordion-titulo">Idiomas<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
                <div class="FormIdiomas">
                    <div class="FormGroup">
                        <h2>Idiomas</h2>
                        <div class="checkbox">
                            <table style="width: 92%;">
                                <tr>
                                    <td class="auto-style6">
                                        <input id="chIngles" type="checkbox" runat="server" name="Ingles" />
                                        <label for="chIngles">Ingles</label>
                                    
                                        <br />
                                        <input id="rangoingles" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoIngles').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoIngles" runat="server" Text="0" ForeColor="#329040"></asp:Label>

                                    </td>
                                    <td>
                                        <input id="chJapones" type="checkbox" runat="server"  name="Japones" />
                                        <label for="chJapones">Japones</label>
                                      
                                         <br />
                                        <input id="rangoJapones" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoJapones').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoJapones" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                                    </td>
                                    <td>
                                         <input id="chChino" type="checkbox" runat="server"  name="Chino" />
                                        <label for="chChino">Chino</label>
                                        <br />
                                        <input id="rangoChino" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoChino').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoChino" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                         <input id="chAleman" type="checkbox" runat="server"  name="Aleman" />
                                        <label for="chAleman">Alemán</label>
                                    
                                         <br />
                                        <input id="rangoAleman" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoAleman').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoAleman" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                                    </td>
                                    <td>
                                        <input id="chRuso" type="checkbox" runat="server"  name="Ruso" />
                                        <label for="chRuso">Ruso</label>
                                        
                                         <br />
                                         <input id="rangoRuso" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoRuso').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoRuso" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                                    </td>
                                    <td>
                                         <input id="chPortugues" type="checkbox" runat="server"  name="Portugues" />
                                        <label for="chPortugues">Portugués</label>
                                 
                                         <br />
                                         <input id="rangoPortugues" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPortugues').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoPortugues" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                             <input id="chFrances" type="checkbox"  runat="server" name="Frances" />
                                        <label for="chFrances">Francés</label>
                                      
                                         <br />
                                         <input id="rangoFrances" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoFrances').textContent = this.value;"/>
                                        <asp:Label ID="lblRangoFrances" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                                    </td>
                          
                                </tr>
                            </table>
                        </div>
                        <asp:Button ID="btnGuardarIdioma" runat="server" Text="Guardar" cssClass="btn_Guardar" OnClick="btnGuardarIdioma_Click" OnClientClick="return confirm('¿Seguro que selecciono los datos correctos?');"/>
                        <asp:Button ID="btnCancelarIdioma" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>
                     </div>
                </div>
              </div>
            </div>
            <div class="accordion-container">
            <a class="accordion-titulo">Certificaciones<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
                <div class="FormCert">
                    <div class="FormGroup">
                        <div class="checkbox">
                       <h2>Certificaciones</h2> 
                    <table style="width: 93%;">
                        <tr>
                            <td class="auto-style4">
                                <input id="chVB" type="checkbox" runat="server" name="VB" />
                                <label for="chVB">Visual Basic</label>
                            
                            </td>
                            <td class="auto-style5">
                                <input id="chC" type="checkbox" runat="server"  name="C" />
                                <label for="chC">C</label>
                              
                            </td>
                            <td>
                                <input id="chCPlus" type="checkbox" runat="server"  name="CPlus" />
                                <label for="chCPlus">C++</label>
                              
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                  <input id="chJava" type="checkbox" runat="server"  name="Java" />
                                <label for="chJava">Java</label>
                               
                            </td>
                            <td class="auto-style5">
                                <input id="chPython" type="checkbox" runat="server"  name="Python" />
                                <label for="chPython">Python</label>
                               
                            </td>
                            <td>
                                  <input id="chPascal" type="checkbox" runat="server"  name="Pascal" />
                                <label for="chPascal">Pascal</label>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                   <input id="chCSharp" type="checkbox" runat="server"  name="CSharp" />
                                <label for="chCSharp">C#</label>
                                
                            </td>
                            <td class="auto-style5">
                                <input id="chRuby" type="checkbox" runat="server"  name="Ruby" />
                                <label for="chRuby">Ruby</label>
                               
                            </td>
                            <td>
                                <input id="chPHP" type="checkbox" runat="server"  name="PHP" />
                                <label for="chPHP">PHP</label>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <input id="chHTML" type="checkbox" runat="server"  name="HTML" />
                                <label for="chHTML">HTML</label>
                               
                            </td>
                            <td class="auto-style5">
                                 <input id="chCSS" type="checkbox" runat="server"  name="CSS" />
                                <label for="chCSS">CSS</label>
                           
                            </td>
                            <td>
                                <input id="chJS" type="checkbox" runat="server"  name="JS" />
                                <label for="chJS">JavaScript</label>
                              
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <input id="chEnsamblador" type="checkbox"  runat="server" name="chEnsamblador" />
                                <label for="chEnsamblador">Ensamblador</label>
                                
                            </td>
                            <td class="auto-style5">
                                 <input id="chFortran" type="checkbox"  runat="server" name="Fortran" />
                                <label for="chFortran">Fortran</label>
                               
                            </td>
                            <td>
                                 <input id="chCOBOL" type="checkbox" runat="server"  name="COBOL" />
                                <label for="chCOBOL">COBOL</label>
                       
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <input id="chNesC" type="checkbox"  runat="server" name="NesC" />
                                <label for="chNesC">NesC</label>
                             
                            </td>
                            <td class="auto-style5">
                                <input id="chProlog" type="checkbox"  runat="server" name="Prolog" />
                                <label for="chProlog">Prolog</label>
                     
                            </td>
                            <td>
                                <input id="chUML" type="checkbox"  runat="server" name="UML" />
                                <label for="chUML">UML</label>
                                
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnGuardarCert" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnGuardarCert_Click" OnClientClick="return confirm('¿Seguro que selecciono bien los datos?');"/>
                    <asp:Button ID="btnCancelCert" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
                            </div>
                    </div>
                </div>
       </div>
      </div>
           <div class="accordion-container">
            <a class="accordion-titulo">Cursos<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
                <section class="FormCursos">
                     <div class="FormGroup">
                        <div class="checkbox">
                    <h2>Cursos</h2>
                    <table style="width: 93%;">
                        <tr>
                            <td>
                                <input id="chCurInternet" type="checkbox" runat="server" name="Internet" />
                                <label for="chCurInternet">Internet de las cosas</label>
                               
                            </td>
                            <td>
                                 <input id="chCurWord" type="checkbox"  runat="server" name="Word" />
                                 <label for="chCurWord">Word</label>
                                
                            </td>
                            <td>
                                 <input id="chCurMA" type="checkbox" runat="server"  name="Azure" />
                                 <label for="chCurMA">Microsoft Azure</label>
                               
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="chCurSE" type="checkbox"  runat="server" name="Embebidos" />
                                 <label for="chCurSE">Sistemas embebidos</label>
                          
                            </td>
                            <td>
                                <input id="chCurExcel" type="checkbox" runat="server"  name="Excel" />
                                 <label for="chCurExcel">Excel</label>
                                
                            </td>
                            <td>
                                 <input id="chCurMSD" type="checkbox" runat="server"  name="MSD" />
                                 <label for="chCurMSD">MS Dynamics</label>
                             
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <input id="chCurERP" type="checkbox" runat="server"  name="ERP" />
                                 <label for="chCurERP">ERP</label>
                            
                            </td>
                            <td>
                                 <input id="chCurPhotoshop" type="checkbox"  runat="server" name="Photoshop" />
                                 <label for="chCurPhotoshop">Photoshop</label>
                                
                            </td>
                            <td>
                                <input id="chCurVirtualizacion" type="checkbox"  runat="server" name="Virtualizacion" />
                                 <label for="chCurVirtualizacion">Virtualizacion</label>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <input id="chCurIHC" type="checkbox" runat="server"  name="IHC" />
                                 <label for="chCurIHC">IHC</label>
                                
                            </td>
                            <td>
                                 <input id="chCurGDocs" type="checkbox"  runat="server" name="GDocs" />
                                 <label for="chCurGDocs">Google Docs</label>
                     
                            </td>
                            <td>
                                <input id="chCurWS" type="checkbox" runat="server"  name="WS" />
                                 <label for="chCurWS">Windows Server</label>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="chCurSQL" type="checkbox" runat="server"  name="SQL" />
                                 <label for="chCurSQL">MS SQL Server</label>
                             
                            </td>
                            <td>
                                 <input id="chCurW10" type="checkbox" runat="server"  name="w10" />
                                 <label for="chCurW10">Windows 10</label>
                                
                            </td>
                            <td>
                                <input id="chCurES" type="checkbox" runat="server"  name="ES" />
                                 <label for="chCurES">Exchange Server</label>
                               
                            </td>
                        </tr>
                    </table>
                            </div>
                         </div>
                    <asp:Button ID="btnGuardarCurso" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnGuardarCurso_Click" OnClientClick="return confirm('¿Seguro que selecciono bien los datos?');"/>
                    <asp:Button ID="btnCancelarCurso" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>
                </section>
               </div>
               </div>

         <div class="accordion-container">
            <a class="accordion-titulo">Aptitudes<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
         <asp:UpdatePanel ID="UPAptitudes" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <section class="FormAptitud">
                             <div class="FormGroup">
                        <div class="checkbox">
                            <h2>Aptitudes</h2>
                              <table style="width: 93%;">
                        <tr>
                            <td>
                                <input id="chApt1" type="checkbox" runat="server" name="Internet" />
                                <label for="chApt1">Autodidacta</label>
                               
                            </td>
                            <td>
                                 <input id="chApt2" type="checkbox" runat="server"  name="Word" />
                                 <label for="chApt2">Trabajo en equipo</label>
                                
                            </td>
                            <td>
                                 <input id="chApt3" type="checkbox"  runat="server" name="Azure" />
                                 <label for="chApt3">Responsable</label>
                               
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="chApt4" type="checkbox" runat="server"  name="Embebidos" />
                                 <label for="chApt4">Ético</label>
                          
                            </td>
                            <td>
                                <input id="chApt5" type="checkbox"  runat="server" name="Excel" />
                                 <label for="chApt5">Liderazgo</label>
                                
                            </td>
                            <td>
                                 <input id="chApt6" type="checkbox"  runat="server" name="MSD" />
                                 <label for="chApt6">Autocrítica</label>
                             
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <input id="chApt7" type="checkbox"  runat="server" name="ERP" />
                                 <label for="chApt7">Organizado</label>
                            
                            </td>
                            <td>
                                 <input id="chApt8" type="checkbox"  runat="server" name="Photoshop" />
                                 <label for="chApt8">Analista</label>
                                
                            </td>
                            <td>
                                <input id="chApt9" type="checkbox"  runat="server" name="Virtualizacion" />
                                 <label for="chApt9">Social</label>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <input id="chApt10" type="checkbox"  runat="server" name="IHC" />
                                 <label for="chApt10">Puntual</label>
                                
                            </td>
                            <td>
                                 <input id="chApt11" type="checkbox" runat="server"  name="GDocs" />
                                 <label for="chApt11">Cooperativo</label>
                     
                            </td>
                            <td>
                                <input id="chApt12" type="checkbox"  runat="server" name="WS" />
                                 <label for="chApt12">Perseverante</label>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="chApt13" type="checkbox"  runat="server" name="SQL" />
                                 <label for="chApt13">Matemático</label>
                             
                            </td>
                            <td>
                                 <input id="chApt14" type="checkbox"  runat="server" name="w10" />
                                 <label for="chApt14">Creativo</label>
                                
                            </td>
                            <td>
                                <input id="chApt15" type="checkbox"  runat="server" name="ES" />
                                 <label for="chApt15">Comunicativo</label>
                               
                            </td>
                        </tr>
                    </table>
                            </div>
                                 </div>
                            <asp:Button ID="btnGuardarAptitud" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnGuardarAptitud_Click" OnClientClick="return confirm('¿Seguro que selecciono bien los datos?');"/>
                            <asp:Button ID="btnCacenlarAptitud" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
                        </section>
                    </ContentTemplate>
                </asp:UpdatePanel>
        </div>
             </div>
       
<div class="accordion-container">
            <a class="accordion-titulo">Educación<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
         <asp:UpdatePanel ID="UPEducacion" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="FormEducacion">
                    <h2>Educacion</h2>
                    <br />
                    <asp:TextBox ID="txtEduEscuela" runat="server" placeholder="Institución" CssClass="txt"></asp:TextBox>
                    <br />
                    &nbsp;<select id="DDLEduNivel" runat="server">
  <option value="Licenciatura">Licenciatura</option>
  <option value="Maestria">Maestria</option>
  <option value="Doctorado">Doctorado</option>
</select><br />
                    <asp:TextBox ID="txtEdutitulo" runat="server" placeholder="Título" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnEduGuardar" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnEduGuardar_Click" OnClientClick="return confirm('¿Seguro que estan bien los datos?');"/>
                    <asp:Button ID="btnEduCancelar" runat="server" Text="Cancelar" CssClass="btn_Cancelar" OnClick="btnEduCancelar_Click"/>

                </section>
            </ContentTemplate>
        </asp:UpdatePanel>
</div>
    </div>
       <div class="accordion-container">
            <a class="accordion-titulo">Lenguajes de programación<span class="toggle-icon"></span></a>
            <div class="accordion-content"> 
    <div class="FormLenguajes">
        <div class="FormGroup">
                    <h2>Dominio de lenguajes de programación</h2>
            <div class="checkbox">
                   <table style="width: 93%;">
                        <tr>
                            <td class="auto-style">
                                <input id="chVB2" type="checkbox" runat="server" name="VB" />
                                <label for="chVB2">Visual Basic</label>
                                  <br />
                                  <input id="rangoVB" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoVB').textContent = this.value;"/>
                                <asp:Label ID="lblRangoVB" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <input id="chC2" type="checkbox" runat="server"  name="C" />
                                <label for="chC2">C</label>
                                  <br />
                                 <input id="rangoC" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoC').textContent = this.value;"/>
                                <asp:Label ID="lblRangoC" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                 <input id="chCPlus2" type="checkbox" runat="server"  name="CPlus" />
                                <label for="chCPlus2">C++</label>
                                  <br />
                                 <input id="rangoCPlus" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPlus').textContent = this.value;"/>
                                <asp:Label ID="lblRangoPlus" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <input id="chJava2" type="checkbox" runat="server"  name="Java" />
                                <label for="chJava2">Java</label>
                                  <br />
                                 <input id="rangoJava" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoJava').textContent = this.value;"/>
                                <asp:Label ID="lblRangoJava" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <input id="chPython2" type="checkbox" runat="server"  name="Python" />
                                <label for="chPython2">Python</label>
                                  <br />
                                 <input id="rangoPython" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPython').textContent = this.value;"/>
                                <asp:Label ID="lblRangoPython" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <input id="chPascal2" type="checkbox" runat="server"  name="Pascal" />
                                <label for="chPascal2">Pascal</label>
                                  <br />
                                <input id="rangoPascal" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPascal').textContent = this.value;"/>
                                <asp:Label ID="lblRangoPascal" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <input id="chCSharp2" type="checkbox" runat="server"  name="CSharp" />
                                <label for="chCSharp2">C#</label>
                                  <br />
                                 <input id="rangoCSharp" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoCSharp').textContent = this.value;"/>
                                <asp:Label ID="lblRangoCSharp" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <input id="chRuby2" type="checkbox" runat="server"  name="Ruby" />
                                <label for="chRuby2">Ruby</label>
                                  <br />
                                 <input id="rangoRuby" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoRuby').textContent = this.value;"/>
                                <asp:Label ID="lblRangoRuby" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                               <input id="chPHP2" type="checkbox" runat="server"  name="PHP" />
                                <label for="chPHP2">PHP</label>
                                  <br />
                                <input id="rangoPHP" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPhp').textContent = this.value;"/>
                                <asp:Label ID="lblRangoPhp" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <input id="chHTML2" type="checkbox" runat="server"  name="HTML" />
                                <label for="chHTML2">HTML</label>
                                  <br />
                                <input id="rangoHTML" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoHTML').textContent = this.value;"/>
                                <asp:Label ID="lblRangoHTML" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <input id="chCSS2" type="checkbox" runat="server"  name="CSS" />
                                <label for="chCSS2">CSS</label>
                                  <br />
                                <input id="rangoCSS" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoCSS').textContent = this.value;"/>
                                <asp:Label ID="lblRangoCSS" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <input id="chJS2" type="checkbox" runat="server"  name="JS" />
                                <label for="chJS2">JavaScript</label>
                                  <br />
                                <input id="rangoJavaScript" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoJavaScript').textContent = this.value;"/>
                                <asp:Label ID="lblRangoJavaScript" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                               <input id="chEnsamblador2" type="checkbox"  runat="server" name="chEnsamblador" />
                                <label for="chEnsamblador2">Ensamblador</label>
                                  <br />
                                <input id="rangoEnsamblador" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoEnsamblador').textContent = this.value;"/>
                                <asp:Label ID="lblRangoEnsamblador" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <input id="chFortran2" type="checkbox"  runat="server" name="Fortran" />
                                <label for="chFortran2">Fortran</label>
                                  <br />
                                <input id="rangoFortran" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoFortran').textContent = this.value;"/>
                                <asp:Label ID="lblRangoFortran" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <input id="chCOBOL2" type="checkbox" runat="server"  name="COBOL" />
                                <label for="chCOBOL2">COBOL</label>
                                  <br />
                                <input id="rangoCOBOL" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoCOBOL').textContent = this.value;"/>
                                <asp:Label ID="lblRangoCOBOL" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <input id="chNesC2" type="checkbox"  runat="server" name="NesC" />
                                <label for="chNesC2">NesC</label>
                                  <br />
                                 <input id="rangoNesC" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoNesC').textContent = this.value;"/>
                                <asp:Label ID="lblRangoNesC" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <input id="chProlog2" type="checkbox"  runat="server" name="Prolog" />
                                <label for="chProlog2">Prolog</label>
                                  <br />
                                 <input id="rangoProlog" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoProlog').textContent = this.value;"/>
                                <asp:Label ID="lblRangoProlog" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <input id="chUML2" type="checkbox"  runat="server" name="UML" />
                                <label for="chUML2">UML</label>
                                <br />
                                  <input id="rangoUML" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoUML').textContent = this.value;"/>
                                <asp:Label ID="lblRangoUML" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnHabGuardar" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnHabGuardar_Click" OnClientClick="return confirm('¿Seguro que selecciono bien los datos?');"/>
                    <asp:Button ID="btnHabCancelar" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>

                </div>
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
