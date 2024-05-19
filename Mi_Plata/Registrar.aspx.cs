using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Plata
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void form_registro_Click(object sender, EventArgs e)
        {
            string identificacion = txtIdentificacion.Text;
            string usuarioNombre = txtUsuario.Text;
            string correo = txtCorreo.Text;
            string clave = txtClave.Text;
            string claveConfirmar = txtClaveConfirmar.Text;

            // Validar que las contraseñas coincidan
            if (clave != claveConfirmar)
            {
                // Mostrar mensaje de error
                lblError.Text = "Las contraseñas no coinciden.";
                return;
            }

            // Crear una instancia de la clase Usuario
            Usuario nuevoUsuario = new Usuario(identificacion, usuarioNombre, correo, clave);

            // Crear una instancia de la clase CuentaBancaria para el usuario registrado
            CuentaBancaria nuevaCuentaBancaria = new CuentaBancaria(nuevoUsuario);

            // Guardar el usuario y la cuenta bancaria en la sesión para acceder en Ingresar.aspx
            Session["CuentaBancaria"] = nuevaCuentaBancaria;

            // Redirigir a la página de Ingresar
            Response.Redirect("Ingresar.aspx");
        }
    }
}