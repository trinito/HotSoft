<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HotSoft.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" href="Style.css" type="text/css" media="screen" />
    <link rel ="stylesheet" href="Resources/normalize.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="Resources/fonts.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
          <header>
          
            
            
            <div class="menuMovil">
			     <a href="#" class="btn-menu"><span class="icon-menu"></span>Menu</a>
		    </div>
            
            <nav>
               <ul>
                   <li> <a href="Index.aspx"><img src="Images/oie_transparent.png" alt="logo" /></a></li>
                   <li><a href="#"><span class="icon-home" ></span>Inicio</a></li>
                   <li><a href="#"><span class="icon-user-tie" ></span>Nosotros</a></li>
                   <li><a href="Perfil.aspx"><span class="icon-cogs" ></span>Soluciones</a></li>
                   <li><a href="Login.aspx"><span class="icon-user-plus" ></span>Intégrate</a></li>
                    <li><a href="#"><span class="icon-phone" ></span>Contáctanos</a></li>
                   <% 
                       try {
                           int ID = (int)Session["UsuarioID"];
                           if (!IsPostBack)
                           {
                               if (ID == 0 || ID == null)
                                   Response.Write("<li><a href=Login.aspx><span class=icon-users></span>Iniciar Sesión</a></li>");
                               else
                                   Response.Write("<li><a href=Login.aspx><span class=icon-user></span>" + ID.ToString() + "</a></li>");
                           } 
                       }
                       catch(Exception a)
                       {
                           
                       }
                       %>
               </ul>
            </nav>
           
        </header>
    </div> 
    
    </form>
    
</body>
    <script src= "http://code.jquery.com/jquery-latest.js"></script>
    <script src="Resources/menu.js"></script>
</html>
