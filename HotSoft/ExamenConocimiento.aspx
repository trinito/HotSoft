<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamenConocimiento.aspx.cs" Inherits="HotSoft.ExamenConocimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" href="StyleExamenCon.css" type="text/css" media="screen" />
    <meta name="viewport" />
    <title></title>
</head>
<body>
    <div class="Encabezado">
        <img src="Images/oie_transparent.png" />
    </div>
    <div class="FormExamen">
        <a href="ExamenConocimiento.aspx">ExamenConocimiento.aspx</a>
        <form id="form1" runat="server">
            <div class="FormGroup">
                <div class="lbl">
                    <label>1.-¿Qué se entiende por algoritmo?</label>
                </div>
                <div class="Radio">
                    <input id="rb1p1" type="radio" name="p1" />
                    <label for="rb1p1">Problema específico</label>
                </div>
                <div class="Radio">
                    <input id="rb2p1" type="radio" name="p1" />
                    <label for="rb2p1">Problema a resolver</label>
                </div>
                <div class="Radio">
                     <input id="rb3p1" type="radio" name="p1" />
                    <label for="rb3p1">Método para resolver un problema en pasos</label>
                </div>
                <div class="Radio">
                    <input id="rb4p1" type="radio" name="p1"/>
                    <label for="rb4p1">Ninguna de las anteriores</label>
                </div>
           </div>
            <div class="FormGroup">
                 <div class="lbl">
                    <label>2.- Son tipos de algoritmos</label>
                </div>
                <div class="Radio">
                    <input id="rb1p2" type="radio" name="p2" />
                    <label for="rb1p2">Cognitivos y científicos</label>
                </div>
                <div class="Radio">
                    <input id="rb2p2" type="radio" name="p2" />
                    <label for="rb2p2">Cualitativos y Cuantitativos</label>
                </div>
                <div class="Radio">
                    <input id="rb3p2" type="radio" name="p2" />
                    <label for="rb3p2">Graficos e Histogramas</label>
                </div>
                <div class="Radio">
                    <input id="rb4p2" type="radio" name="p2" />
                    <label for="rb4p2">Lineal y Horizontal</label>
                </div>
            </div>
            <div class="FormGroup">
                 <div class="lbl">
                    <label>3.- Datos que se usan en algoritmos</label>
                </div>
                <div class="Radio">
                    <input id="rb1p3" type="radio" name="p3" />
                    <label for="rb1p3">Fórmulas cuantitativas con texto</label>
                </div>
                <div class="Radio">
                    <input id="rb2p3" type="radio" name="p3" />
                    <label for="rb2p3">Numéricos y de Texto</label>
                </div>
                <div class="Radio">
                    <input id="rb3p3" type="radio" name="p3" />
                    <label for="rb3p3">Atributos de asignacion</label>
                </div>
                <div class="Radio">
                    <input id="rb4p3" type="radio" name="p3" />
                    <label for="rb4p3">Declaraciones universales</label>
                </div>
            </div>
            <div class="FormGroup">
                <div class="lbl">
                    <label>4.- ¿Cómo se le llama donde es asignado un dato y que puede cambiar su valor?</label>
                </div>
                <div class="Radio">
                    <input id="rb1p4" type="radio" name="p4" />
                    <label for="rb1p4">Declaración</label>
                </div>
                <div class="Radio">
                    <input id="rb2p4" type="radio" name="p4" />
                    <label for="rb2p4">Función</label>
                </div>
                <div class="Radio">
                    <input id="rb3p4" type="radio" name="p4" />
                    <label for="rb3p4">Constante</label>
                </div>
                <div class="Radio">
                    <input id="rb4p4" type="radio" name="p4" />
                    <label for="rb4p4">Variable</label>
                </div>
            </div>
            <div class="FormGroup">
                <div class="lbl">
                    <label>5.- El Identificador Area y la variable radio son pertenecientes a una Expresión Area(radio)=(pi*radio^2)/2</label>
                </div>
                <div class="Radio">
                    <input id="rb1p5" type="radio" name="p5" />
                    <label for="rb1p5">Verdadero</label>
                </div>
                <div class="Radio">
                    <input id="rb2p5" type="radio" name="p5" />
                    <label for="rb2p5">Falso</label>
                </div>
            </div>
            <div class="FormGroup">
                <div class="lbl">
                    <label>6.- Ayuda a los programadores a desarrollar algoritmos en un lenguaje cotidiano antes de escribirlo en un lenguaje de programación</label>
                </div>
                <div class="Radio">
                    <input id="rb1p6" type="radio" name="p6" />
                    <label for="rb1p6">Verdadero</label>
                </div>
                <div class="Radio">
                    <input id="rb2p6" type="radio" name="p6" />
                    <label for="rb2p6">Falso</label>
                </div>
                 <div class="Radio">
                    <input id="rb3p6" type="radio" name="p6" />
                    <label for="rb3p6">Falso</label>
                </div>
                 <div class="Radio">
                    <input id="rb4p6" type="radio" name="p6" />
                    <label for="rb4p6">Falso</label>
                </div>
            </div>
            <div class="FormGroup">
                <div class="lbl">
                    <label>7.- Los algoritmos de tipo lineal o secuencial se ejecutan con una programación estructurada</label>
                </div>
                <div class="Radio">
                    <input id="rb1p7" type="radio" name="p7" />
                    <label for="rb1p7">Verdadero</label>
                </div>
                <div class="Radio">
                    <input id="rb2p7" type="radio" name="p7" />
                    <label for="rb2p7">Falso</label>
                </div>
                <div class="Radio">
                    <input id="rb3p7" type="radio" name="p7" />
                    <label for="rb3p7">Verdadero</label>
                </div>
                <div class="Radio">
                    <input id="rb4p7" type="radio" name="p7" />
                    <label for="rb4p7">Falso</label>
                </div>
            </div>
            <div class="FormGroup">
                <div class="lbl">
                    <label>8.-  Definen una logica estructurada en un algoritmo</label>
                </div>
                <div class="Radio">
                    <input id="rb1p8" type="radio" name="p8" />
                    <label for="rb1p8">Verdadero</label>
                </div>
                <div class="Radio">
                    <input id="rb2p8" type="radio" name="p8" />
                    <label for="rb2p8">Falso</label>
                </div>
                <div class="Radio">
                    <input id="rb3p8" type="radio" name="p8" />
                    <label for="rb3p8">Verdadero</label>
                </div>
                <div class="Radio">
                    <input id="rb4p8" type="radio" name="p8" />
                    <label for="rb4p8">Falso</label>
                </div>
            </div>
            <br />
            <div class="btns">
                <asp:Button ID="btnGuardarExamCon" runat="server" Text="Guardar" CssClass="btn_Guardar"/>
                <asp:Button ID="btnCancelarExamCon" runat="server" Text="Cancelar" CssClass="btn_Cancelar" />
            </div>
        </form>
    </div>
</body>
</html>

