using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Plata
{
    public partial class Ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                    
        }

        protected void form_ingreso_Click(object sender, EventArgs e)
        {
            string usuarioNombre = txtUsuario.Text;
            string clave = txtClave.Text;

            // Verificar si el usuario está registrado en la sesión
            if (Session["CuentaBancaria"] != null)
            {
                CuentaBancaria cuentaBancaria = (CuentaBancaria)Session["CuentaBancaria"];

                // Validar las credenciales
                if (cuentaBancaria.usuario.usuarioNombre == usuarioNombre && cuentaBancaria.usuario.clave == clave)
                {
                    // Redirigir a la página de MenuOperaciones
                    Response.Redirect("MenuOperaciones.aspx");
                }
                else
                {
                    // Mostrar mensaje de error
                    lblMensaje.Text = "Usuario y/o contraseña incorrectos.";
                }
            }
            else
            {
                // Mostrar mensaje de error si no hay usuario registrado en la sesión
                lblMensaje.Text = "No hay ningún usuario registrado. Por favor, registre un usuario primero.";
            }
        }
    }
}