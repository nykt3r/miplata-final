<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mi_Plata.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi Plata | Home</title>
    <link rel="icon" href="img/webicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/Initial.css"/>
    <link rel="stylesheet" href="css/Header.css"/>
    <link rel="stylesheet" href="css/Default.css"/>
    <link rel="stylesheet" href="css/Footer.css"/>
</head>
<body>
    <header class="cabecera">
        <img class="logo" src="img/logoMiPlata.jpg" alt="logoMiPlata"/>
        <nav class="menu">
            <ul class="menu_lista">
                <li class="menu_item"><a class="menu_link-activo" href="Default.aspx">Inicio</a></li>
                <li class="menu_item"><a class="menu_link" href="Ingresar.aspx">Iniciar sesión</a></li>
                <li class="menu_item"><a class="menu_link" href="Registrar.aspx">Registrarse</a></li>
             </ul>
         </nav>         
    </header>
    <main>
        <section class="principal">
            <div class="principal_container">
                <form id="formularioHome" class="principal_formulario" runat="server">            
                    <h2 class="principal_titulo">Bienvenido a Mi Plata</h2>
                    <p class="principal_descripcion">Si buscas una cuenta con más beneficios, esta es para ti:</p>
                    <ul class="principal_lista">
                        <li class="principal_item">Gratis transferencias a otros bancos, transacciones, retiros en Cajeros y corresponsales bancarios.</li>
                        <li class="principal_item">Paga tus servicios públicos desde los canales digitales.</li>
                        <li class="principal_item">Ahórrate el 4x1000 en transacciones hasta por $20 Millones.</li>
                    </ul>
                    <asp:Button ID="BtnHome" class="principal_boton" runat="server" Text="Abre tu cuenta" />
                </form>
                <img class="principal_imagen" src="img/imgReferencia.jpg" alt="imagenMedellin"/>
            </div>
        </section>        
    </main>
    <footer class="rodapie">
        <div class="rodapie_div">
            <img class="rodapie_imagen-destacada" src="img/logoMiPlata.jpg"/>
            <h3 class="rodapie_titulo">Mi Plata</h3>
        </div>
        <p class="rodapie_descripcion">© 2024 Mi Plata Banco Colombiano S.A</p>
        <ul class="rodapie_lista">
            <li class="rodapie_item"><a class="rodapie_icono" href="#"><img class="rodapie_imagen" alt="WhatsApp" src="img/whatsapp.png"/></a></li>
            <li class="rodapie_item"><a class="rodapie_icono" href="#" ><img class="rodapie_imagen" alt="Email" src="img/email.png"/></a></li>
            <li class="rodapie_item"><a class="rodapie_icono" href="#"><img class="rodapie_imagen" alt="Instagram" src="img/instagram.png"/></a></li>
        </ul>
    </footer>
</body>
</html>
