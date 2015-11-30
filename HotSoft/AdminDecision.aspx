<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDecision.aspx.cs" Inherits="HotSoft.AdminDecision" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleDecision.css" type="text/css" media="screen" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="Resources/normalize.css" type="text/css" media="screen" />
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
          <div class="BarraPrincipal">
                <div class="User">
                    <label>Usuario: Administrador</label>
                </div>
             </div>
             <nav>
                <ul>
                   <li><a href="#"><span class="icon-home" ></span>Aspirantes</a></li>
                   <li><a href="#"><span class="icon-user-tie" ></span>Ponderar</a></li>
                   <li><a href="#"><span class="icon-cogs" ></span>Contactar</a></li>
                   <li><a href="Login.aspx"><span class="icon-user-plus" ></span>Consultas</a></li>
                   <li><a href="#"><span class="icon-phone" ></span>Reportes</a></li>
               </ul>
            </nav>

  
     
        <div class="wrap">
            <h1>Candidatos evaluados</h1>
             <asp:Button ID="btnEvaluar" runat="server" Text="Evaluar aspirantes" CssClass="btnEvaluar" Height="41px" Width="167px"/>

            <table id="tblContainer" data-ng-controller="CRUD_AngularJs_RESTController">
                <tr>
                    <td>
                        <table style="border: solid 2px Green; padding: 5px;">
                            <tr style="height: 30px; background-color: #81A512; color: white;">
                                <th></th>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Puntaje</th>
                                <th>Tipo programador</th>
                                <th></th>
                                <th></th>
                            </tr>
                            <tbody data-ng-repeat="stud in Students">
                                <tr>
                                    <td></td>
                                    <td><span>1</span></td>
                                    <td><span>Perro Culero</span></td>
                                    <td><span>100 chingon</span></td>
                                    <td><span>Simio</span></td>
                                    <td>
                                        <input type="button" id="Edit" value="Edit" data-ng-click="get(stud)" /></td>
 
                                    <td>
                                        <input type="button" id="Delete" value="Delete" data-ng-click="delete(stud)" /></td>
                                </tr>
                            </tbody>
                        </table>
 
                    </td>
                </tr>
            </table>
        </div>
       
        
    </form>
    <script src= "http://code.jquery.com/jquery-latest.js"></script>
</body>
</html>
