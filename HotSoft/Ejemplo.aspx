<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejemplo.aspx.cs" Inherits="HotSoft.Ejemplo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleEjemplo.css" type="text/css" media="screen"/>
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrap">

            <input type="button" id="btnArriba" value="arriba"/> <!-- el div se despliega hacia arriba con su valor de defecto (height = 300px) -->
            <input type="button" id="btnAbajo" value="abajo" /> <!-- el div se despliega hacia abajo (height = 500px) -->
            
            <br><br>
            <div id="divEjemplo" class="DesplegarForm"></div>
            <br>
            
            <button id="btnPaAlla">Alla</button>
            <button id="btnPaAca">Aca</button>
    </div>
    </form>
    <script src="JS/Seccion.js"></script>
</body>
</html>
