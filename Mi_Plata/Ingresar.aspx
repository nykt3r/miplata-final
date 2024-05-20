﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingresar.aspx.cs" Inherits="Mi_Plata.Ingresar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi Plata | Iniciar Sesión</title>
    <link rel="icon" href="img/webicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/styleIngreso.css"/>
</head>
<body>
    <header class="cabecera">
           <img class="logo" src="img/logoMiPlata.jpg" alt="logoMiPlata"/>
           <nav class="menu">
               <ul class="menu_lista">
                   <li class="menu_item"><a class="menu_link-activo" href="Default.aspx">Inicio</a></li>
                   <li class="menu_item"><a class="menu_link" href="Registrar.aspx">Registrarse</a></li>
               </ul>
           </nav>         
    </header>
    <main>
        <section class="principal">
            <div class="principal_container">
                <div class="referencial">      
                    <h2 class="referencial_titulo">Bienvenido/a!</h2>
                    <p class="referencial_descripcion">Ingresa ahora</p>
                    <p class="referencial_descripcion">Accede a los movimientos de tu cuenta ingresando tus datos</p>
                    <p class="referencial_descripcion">No olvides nuestros diferenciales como banco:</p>
                    <ul class="referencial_lista">
                        <li class="referencial_item">Retiros y consignaciones instantaneas.</li>
                        <li class="referencial_item">Máxima seguridad y fiabilidad.</li>
                        <li class="referencial_item">Accesible y fácil de utilizar!</li>
                    </ul>
                </div>
                <form id="formIngreso" class="principal_formulario" runat="server">
                    <h2 class="principal_titulo">Inicia Sesión</h2>
                    <div class="input-container">
                        <asp:TextBox id="txtUsuario" runat="server" required="true"></asp:TextBox>
                        <label class="label"><span class="label-text">Usuario</span></label>
                    </div>
                    <div class="input-container">
                        <asp:TextBox id="txtClave" runat="server" required="true" ViewStateMode="Enabled" TextMode="Password"></asp:TextBox>
                        <label class="label"><span class="label-text">Contraseña</span></label>
                    </div>                   
                    <asp:Button ID="form_ingreso" runat="server" Text="Ingresar" OnClick="btn_Ingreso_Click"/>
                    <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                </form>
            </div>
        </section>        
    </main>
</body>
</html>