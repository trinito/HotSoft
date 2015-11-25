<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="HotSoft.ControlPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
     <link rel ="stylesheet" href="StyleControlPanel.css" type="text/css" media="screen" />
 

    <title></title>
</head>
<body>
     <header class="Encabezado">
       <img src="Images/oie_transparent.png" />
         
    </header>
    <form id="form1" runat="server">
        <div>
            <div class="FormProgramador">
                <h1>Programador requerido</h1>
                <br />
                <table style="width: 92%;">
                    <tr>
                        <td><%--<asp:RadioButton ID="RbJr" runat="server" Text="Junior" CssClass="Rbtn" GroupName="A" />--%>
                         <div class="ContSlider">
                             <h3>Asigne valor para programador Junior</h3>
                             <input id="RangeJunior" type="range" runat="server" min="1" max="100" oninput="document.getElementById('lblJunior').textContent = this.value;"  />
                            <asp:Label ID="lblJunior" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                       </div>
                    </td>
                    </tr>
                    <tr>
                        <td>  <%--<asp:RadioButton ID="RbMdd" runat="server" Text="Middle" CssClass="Rbtn" GroupName="A" />--%>
                        <div class="ContSlider">
                             <h3>Asigne valor para programador Middle</h3>
                             <input id="RangeMiddle" type="range" runat="server" min="1" max="100" oninput="document.getElementById('lblMiddle').textContent = this.value;"  />
                            <asp:Label ID="lblMiddle" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                       </div>
                        </td> 
                    </tr>
                    <tr>
                           <td> <%--<asp:RadioButton ID="RbSr" runat="server" Text="Senior" CssClass="Rbtn" GroupName="A" />--%>
                           <div class="ContSlider">
                                 <h3>Asigne valor para programador Senior</h3>
                                 <input id="RangeSenior" type="range" runat="server" min="1" max="100" oninput="document.getElementById('lblSenior').textContent = this.value;"  />
                                <asp:Label ID="lblSenior" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                           </div>
                           </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="btnGuardarProgram" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
                <asp:Button ID="btnCancelarProgram" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>
            </div>
            <div class="FormEstudios">
                <h1>Grado de estudios</h1>
                <br />
                <table style="width: 93%;">
                    <tr>
                        <td><asp:RadioButton ID="RbLic" runat="server" Text="Licenciatura" CssClass="Rbtn" /></td>
                        <td><asp:RadioButton ID="RbMaster" runat="server" Text="Maestría" CssClass="Rbtn"/></td>
                        <td><asp:RadioButton ID="RbDoc" runat="server" Text="Doctorado" CssClass="Rbtn"/></td>
                    </tr>
                </table>

             
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Carrera afín" Font-Size="14pt"></asp:Label>
                <br />

                <asp:TextBox ID="txtAfin" runat="server" CssClass="txt" placeholder="Ingrese carrera afín"></asp:TextBox>
                <br />
                <asp:Button ID="btnGuardarEstudios" runat="server" Text="Guardar"  CssClass="btn_Guardar"/>
                <asp:Button ID="btnCancelarEstudios" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>

            </div>
             <div class="FormCert">
                    <h1>Habilidades</h1>
                   <table style="width: 93%;">
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox49" runat="server" Text="Visual Basic" CssClass="Chbox" />
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox50" runat="server" Text="C" CssClass="Chbox" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox51" runat="server" Text="C++" CssClass="Chbox"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox52" runat="server" Text="Java" CssClass="Chbox"/>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox53" runat="server" Text="Python" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox54" runat="server" Text="Pascal" CssClass="Chbox" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox55" runat="server" Text="C#" CssClass="Chbox"/>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox56" runat="server" Text="Ruby" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox57" runat="server" Text="PHP" CssClass="Chbox"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox58" runat="server" Text="HTML" CssClass ="Chbox" />
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox59" runat="server" Text="CSS" CssClass="Chbox" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox60" runat="server" Text="JavaScript" CssClass="Chbox"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox61" runat="server" Text="Ensamblador" CssClass="Chbox"/>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox62" runat="server" Text="Fortran" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox63" runat="server" Text="COBOL" CssClass="Chbox"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox64" runat="server" Text="NesC" CssClass="Chbox"/>
                            </td>
                            <td class="auto-style5">
                                <asp:CheckBox ID="CheckBox65" runat="server" Text="Prolog" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox66" runat="server" Text="UML" CssClass="Chbox"/>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnHabGuardar" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
                    <asp:Button ID="btnHabCancelar" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>

            </div>
            <div class="FormAptitud">
                    <h1>Aptitudes</h1>
                        <table style="width: 93%;">
                                <tr>
                                     <td>
                                        <asp:CheckBox ID="CheckBox34" runat="server" Text="Internet de las cosas"  CssClass="Chbox"/>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox35" runat="server" Text="Word" CssClass="Chbox" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox36" runat="server" Text="Microsoft Azure" CssClass="Chbox"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox37" runat="server" Text="Sistemas embebidos" CssClass="Chbox"/>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox38" runat="server" Text="Excel" CssClass="Chbox"/>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox39" runat="server" Text="MS Dynamics" CssClass="Chbox"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox40" runat="server" Text="ERP" CssClass="Chbox"/>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox41" runat="server" Text="Photoshop" CssClass="Chbox"/>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox42" runat="server" Text="Virtualización" CssClass="Chbox"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox43" runat="server" Text="IHC" CssClass="Chbox"/>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox44" runat="server" Text="Google Docs" CssClass="Chbox"/>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox45" runat="server" Text="Windows Server" CssClass="Chbox"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox46" runat="server" Text="SQL Server" CssClass="Chbox"/>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox47" runat="server" Text="Windows 10" CssClass="Chbox"/>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox48" runat="server" Text="Exchange Server" CssClass="Chbox"/>
                                    </td>
                                </tr>
                            </table>       
                     <asp:Button ID="btnGuardarAptitud" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
                     <asp:Button ID="btnCacenlarAptitud" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />       
              </div>
             <div class="FormCursos">
                    <h1>Cursos</h1>
                    <table style="width: 93%;">
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox19" runat="server" Text="Internet de las cosas" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox20" runat="server" Text="Word" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox21" runat="server" Text="Microsoft Azure" CssClass="Chbox"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox22" runat="server" Text="Sistemas embebidos" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox23" runat="server" Text="Excel" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox24" runat="server" Text="MS Dynamics" CssClass="Chbox"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox25" runat="server" Text="ERP" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox26" runat="server" Text="Photoshop" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox27" runat="server" Text="Virtualización" CssClass="Chbox"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox28" runat="server" Text="IHC" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox29" runat="server" Text="Google Docs" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox30" runat="server" Text="Windows Server" CssClass="Chbox"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox31" runat="server" Text="SQL Server" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox32" runat="server" Text="Windows 10" CssClass="Chbox"/>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox33" runat="server" Text="Exchange Server" CssClass="Chbox"/>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnGuardarCurso" runat="server" Text="Guardar" CssClass="btn_Guardar" OnClick="btnGuardarCurso_Click" />
                    <asp:Button ID="btnCancelarCurso" runat="server" Text="Cancelar" CssClass="btn_Cancelar"/>
                </div>
            <div class="FormIdiomas">
                <h1>Conocimiento de idiomas</h1>
                   <div class="ContSlider">
                        <h3>Dominio del Inglés</h3>
                        <input id="RangoIngles" type="range" runat="server" min="1" max="100" oninput="document.getElementById('lblRIngles').textContent = this.value;"  />
                        <asp:Label ID="lblRIngles" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                    </div>
                    <div class="ContSlider">
                        <h3>Dominio del francés</h3>
                        <input id="RangoFrances" type="range" runat="server" min="1" max="100" oninput="document.getElementById('lblRFrances').textContent = this.value;"  />
                        <asp:Label ID="lblRFrances" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                    </div>
                    <div class="ContSlider">
                        <h3>Dominio del portugues</h3>
                         <input id="RangoPortugues" type="range" runat="server" min="1" max="100" oninput="document.getElementById('lblRPortugues').textContent = this.value;"  />
                        <asp:Label ID="lblRPortugues" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                    </div>
                <div class="ContSlider">
                    <h3>Dominio del japones</h3>
                     <input id="RangoJapones" type="range" runat="server" min="1" max="100" oninput="document.getElementById('lblRJapones').textContent = this.value;"  />
                    <asp:Label ID="lblRJapones" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                </div>
                <div class="ContSlider">
                     <h3>Dominio del chino</h3>
                     <input id="Range1" type="range" runat="server" min="1" max="100" oninput="document.getElementById('lblRChino').textContent = this.value;"  />
                    <asp:Label ID="lblRChino" runat="server" Text="50" ForeColor="#329040"></asp:Label>
                </div>
                <asp:Button ID="btnGuardarIdioma" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
                <asp:Button ID="btnCancelarIdioma" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
            </div>
        </div>
    </form>
 <script>
    
 </script>

</body>
</html>
