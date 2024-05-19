using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mi_Plata
{
    public class Usuario
    {
        public string identificacion { get; set; }
        public string usuarioNombre { get; set; }
        public string correo { get; set; }
        public string clave { get; set; }

        public Usuario(string identificacion, string usuarioNombre, string correo, string clave)
        {
            this.identificacion = identificacion;
            this.usuarioNombre = usuarioNombre;
            this.correo = correo;
            this.clave = clave;
        }
    }
}