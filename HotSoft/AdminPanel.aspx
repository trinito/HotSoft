<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="HotSoft.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleAdminPanel.css" type="text/css" />
     <link rel ="stylesheet" href="Resources/normalize.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="Resources/normalize.css" media="screen" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="StyleAcordeon.css" type="text/css" media="screen"/>
    <title></title>
</head>
<body>
 
         
        
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

  
     <script src= "http://code.jquery.com/jquery-latest.js"></script>
   <%-- <script>

      
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
</body>--%>
    </body>
</html>
