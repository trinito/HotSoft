<%@ Page Language="C#"  CodeBehind="Perfil.aspx.cs" Inherits="HotSoft.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel ="stylesheet" href="StylePerfil.css" type="text/css" media="screen" />
      <link rel ="stylesheet" href="Resources/normalize.css" type="text/css" media="screen" />
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
        <asp:UpdatePanel ID="UPExtracto" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="FormExtracto">
                      <h2  >Extracto</h2>
                      <br />

                      <asp:TextBox ID="TxAExtracto" runat="server" AutoPostBack="True" TextMode="MultiLine"></asp:TextBox>

                      <br />
                      <asp:Button ID="btnGuardarExtracto" runat="server" AutoPostBack="True" Text="Guardar" CssClass="btn_Guardar" OnClick="btnGuardarExtracto_Click"/>
                      <asp:Button ID="btnCancelarExtracto" runat="server" Text="Cancelar" CssClass="btn_Cancelar" OnClick="btnCancelarExtracto_Click" />

                </section>
             </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UPExperiencia" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="FormExperiencia">
                    <h2>Experiencia</h2>
                    <br />
                    <asp:TextBox ID="txtExpEmpresa" runat="server" CssClass="txt" placeholder="Nombre de la empresa"></asp:TextBox>
                    <asp:TextBox ID="txtExpTiempo" runat="server" CssClass="txt" placeholder="Tiempo trabajdo (Meses)"></asp:TextBox>
                    <asp:TextBox ID="txtExpPuesto" runat="server" CssClass="txt" placeholder="Puesto desempeñado"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnExpGuardar" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnExpGuardar_Click" />
                    <asp:Button ID="btnExpCancelar" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
                </section>
            </ContentTemplate>
        </asp:UpdatePanel>
        
                <section class="FormIdiomas">
                    <h2>Idiomas       <table style="width: 92%;">
                        <tr>
                            <td class="auto-style6">
                                <input id="ChkIngles" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkIngles">Ingles</label>
          
                                <br />
                                <input id="rangoingles" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoIngles').textContent = this.value;"/>
                  
                                <asp:Label ID="lblRangoIngles" runat="server" Text="0" ForeColor="#329040"></asp:Label>

                            </td>
                            <td>
                                <input id="ChkJapones" type="checkbox" name="p1" runat="server"/>
                                 <label for="ChkJapones">Japones</label>
                                 <br />
                                <input id="rangoJapones" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoJapones').textContent = this.value;"/>
                                <asp:Label ID="lblRangoJapones" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <input id="ChkChino" type="checkbox" name="p1" runat="server"/>
                                 <label for="ChkChino">Chino</label> 
                                <br />
                                <input id="rangoChino" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoChino').textContent = this.value;"/>
                                <asp:Label ID="lblRangoChino" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <input id="ChkAleman" type="checkbox" name="p1" runat="server"/>
                                 <label for="ChkAleman">Aleman</label>
                                 <br />
                                <input id="rangoAleman" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoAleman').textContent = this.value;"/>
                                <asp:Label ID="lblRangoAleman" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                                <input id="ChkRuso" type="checkbox" name="p1" runat="server"/>
                                 <label for="ChkRuso">Ruso</label>
                                 <br />
                                 <input id="rangoRuso" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoRuso').textContent = this.value;"/>
                                <asp:Label ID="lblRangoRuso" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                            <td>
                               
                                <input id="ChkPortugues" type="checkbox" name="p1" runat="server"/>
                                 <label for="ChkPortugues">Portugués</label>
                                 <br />
                                 <input id="rangoPortugues" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoPortugues').textContent = this.value;"/>
                                <asp:Label ID="lblRangoPortugues" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <input id="ChkFrances" type="checkbox" name="p1" runat="server"/>
                                 <label for="ChkFrances">Francés</label>
                                 <br />
                                 <input id="rangoFrances" runat="server" type="range" value="0" min="0" max="100" oninput="document.getElementById('lblRangoFrances').textContent = this.value;"/>
                                <asp:Label ID="lblRangoFrances" runat="server" Text="0" ForeColor="#329040"></asp:Label>
                            </td>
                          
                        </tr>
                    </table>
                    <asp:Button ID="btnGuardarIdioma" runat="server" Text="Guardar" cssClass="btn_Guardar" OnClick="btnGuardarIdioma_Click"/>
                    <asp:Button ID="btnCancelarIdioma" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>
                </section>
          

                <section class="FormCert">
                       <h2>Certificaciones        <table style="width: 93%;">
                        <tr>
                            <td class="auto-style4">
                                  <input id="ChkVisual" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkVisual">Visual Basic</label>
                                
                            </td>
                            <td class="auto-style5">
                              
                                 <input id="ChkC" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkC">C</label>
                            </td>
                            <td>

                                <input id="ChkMasmas" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkMasmas">C++</label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                             <input id="ChkJava" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkJava">Java</label>
          
                            </td>
                            <td class="auto-style5">
                              
                                <input id="ChkPython" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkPython">Python</label>
                            </td>
                            <td>
                                
                                 <input id="ChkPascal" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkPascal">Pascal</label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                              
                                <input id="ChkSharp" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkSharp">C#</label>
          
                            </td>
                            <td class="auto-style5">
                  
                                <input id="ChkRuby" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkRuby">Ruby</label>
                            </td>
                            <td>
                              
                                <input id="ChPhp" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChPhp">PHP</label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                
                                  <input id="ChkHtml" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkHtml">HTML</label>
                            </td>
                            <td class="auto-style5">
                            
                                 <input id="ChkCss" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkCss">CSS</label>
                            </td>
                            <td>
                                
                                <input id="ChkJavascrip" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkJavascrip">JavaScript</label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                               
                                <input id="ChkEnsamblador" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkEnsamblador">Ensamblador</label>

                            </td>
                            <td class="auto-style5">
                               
                                 <input id="ChkFortran" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkFortran">Fortran</label>
                            </td>
                            <td>
                              
                                 <input id="ChkCobol" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkCobol">COBOL</label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
         
                                   <input id="ChkNesc" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkNesc">NesC</label>
                            </td>
                            <td class="auto-style5">
                         
                                 <input id="ChkProlog" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkProlog">Prolog</label>
                            </td>
                            <td>
                                
                                <input id="ChkUml" type="checkbox" name="p1" runat="server" aria-selected="undefined" />
                                 <label for="ChkUml">UML</label>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnGuardarCert" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnGuardarCert_Click1" />
                    <asp:Button ID="btnCancelCert" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
                </section>
       
      
                <section class="FormCursos">
                    <h2>Cursos</h2>
                    <table style="width: 93%;">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:CheckBox ID="CheckBox20" runat="server" Text="Word" AutoPostBack="True" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox21" runat="server" Text="Microsoft Azure" AutoPostBack="True" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:CheckBox ID="CheckBox23" runat="server" Text="Excel" AutoPostBack="True" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox24" runat="server" Text="MS Dynamics" AutoPostBack="True" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:CheckBox ID="CheckBox26" runat="server" Text="Photoshop" AutoPostBack="True" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox27" runat="server" Text="Virtualización" AutoPostBack="True" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:CheckBox ID="CheckBox29" runat="server" Text="Google Docs" AutoPostBack="True" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox30" runat="server" Text="Windows Server" AutoPostBack="True" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:CheckBox ID="CheckBox32" runat="server" Text="Windows 10" AutoPostBack="True" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox31" runat="server" Text="SQL Server" AutoPostBack="True" />
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnGuardarCurso" runat="server" Text="Guardar" CssClass="btn_Guardar" />
                    <asp:Button ID="btnCancelarCurso" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>
                </section>
               
       
         <asp:UpdatePanel ID="UPAptitudes" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <section class="FormAptitud">
                            <h2>Aptitudes</h2>
                               <table style="width: 93%;">
                                <tr>
                                     <td>
                                         &nbsp;</td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox35" runat="server" Text="Word" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox36" runat="server" Text="Microsoft Azure" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox38" runat="server" Text="Excel" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox39" runat="server" Text="MS Dynamics" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox41" runat="server" Text="Photoshop" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox42" runat="server" Text="Virtualización" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox44" runat="server" Text="Google Docs" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox45" runat="server" Text="Windows Server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox47" runat="server" Text="Windows 10" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox46" runat="server" Text="SQL Server" />
                                    </td>
                                </tr>
                            </table>
                            <asp:Button ID="btnGuardarAptitud" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
                            <asp:Button ID="btnCacenlarAptitud" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
                        </section>
                    </ContentTemplate>
                </asp:UpdatePanel>
        
       

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
        
    </form>
</body>
</html>
