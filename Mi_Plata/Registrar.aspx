<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Mi_Plata.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi Plata | Registro</title>
    <link rel="icon" href="img/webicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/styleResgistro.css"/>
</head>
<body>
    <header class="cabecera">
           <img class="logo" src="img/logoMiPlata.jpg" alt="logoMiPlata"/>
           <nav class="menu">
               <ul class="menu_lista">
                   <li class="menu_item"><a class="menu_link-activo" href="Default.aspx">Inicio</a></li>
                   <li class="menu_item"><a class="menu_link" href="Ingresar.aspx">Iniciar sesión</a></li>
               </ul>
           </nav>         
    </header>
    <main>
        <section class="principal">
            <div class="principal_container">
                <form id="formRegistro" class="principal_formulario" runat="server">
                    <h2 class="principal_titulo">Regístrate</h2>
                    <div class="input-container">
                        <asp:TextBox id="txtIdentificacion" runat="server" required="true" TextMode="Number"></asp:TextBox>
                        <label class="label"><span class="label-text">Identificación</span></label>
                    </div>
                    <div class="input-container">
                        <asp:TextBox id="txtUsuario" runat="server" required="true"></asp:TextBox>
                        <label class="label"><span class="label-text">Usuario</span></label>
                    </div>
                    <div class="input-container">
                        <asp:TextBox id="txtCorreo" runat="server" required="true"></asp:TextBox>
                        <label class="label"><span class="label-text">Correo</span></label>
                    </div>
                    <div class="input-container">
                        <asp:TextBox id="txtClave" runat="server" required="true" ViewStateMode="Enabled" TextMode="Password"></asp:TextBox>
                        <label class="label"><span class="label-text">Contraseña</span></label>
                    </div>
                    <div class="input-container">
                        <asp:TextBox id="txtClaveConfirmar" runat="server" required="true" TextMode="Password"></asp:TextBox>
                        <label class="label"><span class="label-text">Repetir Contraseña</span></label>
                    </div>
                    <asp:Button ID="form_registro" runat="server" Text="Registrarse" OnClick="btn_Registro_Click"/>
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </form>
                <div class="referencial">      
                    <h2 class="referencial_titulo">Bienvenido/a Amigo/a!</h2>
                    <p class="referencial_descripcion">Haz parte de nuestro equipo ingresando tus datos en los campos</p>
                    <p class="referencial_descripcion">No olvides los beneficios que tenemos para ti:</p>
                    <ul class="referencial_lista">
                        <li class="referencial_item">Gratis transferencias a otros bancos, transacciones, retiros en Cajeros y corresponsales bancarios.</li>
                        <li class="referencial_item">Paga tus servicios públicos desde los canales digitales.</li>
                        <li class="referencial_item">Ahórrate el 4x1000 en transacciones hasta por $20 Millones.</li>
                    </ul>
                </div>
            </div>
        </section>
    </main>
</body>
</html>